
"""
This file intends to genrate Julia methods according C++ function:


raw_tensor atg_abs_out(tensor self, tensor other) {
  ...
}

->

export abs_out
function abs_out(self::Tensor, other::Tensor)
    ptr = ccall((:atg_abs_out, :libtorch_capi),
          Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{Cvoid}),
          self.pointer, other.pointer)
    return tensor_from_ptr(ptr)
end
"""

const PROJECT_DIR = (@__DIR__) |> dirname |> dirname
const CPP_API_FILE = joinpath(PROJECT_DIR, "csrc", "torch_api_generated.cpp")
const JUL_API_FILE = joinpath(PROJECT_DIR, "src", "thc", "thc.jl")

const FUNC_SIG_REG = r"(\w+)\s+(\*?atg_\w+)\((.+)\)\s*{"

const JULIA_KEYWORDS = Set(["function", "end"])

const C_TYPE_MAP = Dict(
    "void"         => "Cvoid",
    "raw_tensor"   => "Ptr{Cvoid}",
    "gc_tensor"    => "Ptr{Cvoid}",
    "tensor*"      => "Ptr{Cvoid}",
    "tensor"       => "Ptr{Cvoid}",
    "scalar"       => "Ptr{Cvoid}",
    "int"          => "Cint",
    "int*"         => "Ptr{Cvoid}",
    "int64_t"      => "Clonglong",
    "int64_t*"     => "Ptr{Cvoid}",
    "double"       => "Cdouble",
)

const J_TYPE_MAP = Dict(
    "void"         => "Any",
    "raw_tensor"   => "Tensor",
    "gc_tensor"    => "Tensor",
    "tensor*"      => "Array{Tensor{T,N}}",
    "tensor"       => "Tensor",
    "scalar"       => "TorchNumber",
    "int"          => "Int",
    "int*"         => "Array{Int}",
    "int64_t"      => "Int64",
    "int64_t*"     => "Array{Int64}",
    "double"       => "Float64",
)

struct APIFunction
    cpp_signature::String
    func_name::String
    return_type::String
    output_count::Int
    args::Vector{Pair{String, String}} # name -> type

    function APIFunction(m::RegexMatch, n::Int)
        csig = strip(m.match, [' ', '{', '\n'])
        args = parse_args(m[3])
        ret_type = m[1]
        fname = m[2]
        if fname[1] == '*'
            fname = fname[6:end]
            ret_type *= '*'
        else
            fname = fname[5:end]
        end
        new(csig, fname, ret_type, n, args)
    end
end

function parse_args(args::AbstractString)
    arg_list = strip.(split(args, ','))
    arg_pairs = map(arg_list) do arg
        info = strip.(split(arg)) # type, name
        if info[2][1] == '*'
            info[1] *= '*'
            info[2] = info[2][2:end]
        end
        info[2] in JULIA_KEYWORDS && (info[2] *= "_")
        info[2] => info[1]
    end
    arg_pairs
end

function julia_source(f::APIFunction)
    if  length(f.args) < 1
        @warn "E1: can't translate function [$(f.cpp_signature)], ignored."
        return "\n# $(f.func_name) ignored\n"
    end

    for arg in f.args
        if !haskey(C_TYPE_MAP, arg.second)
            @warn "E2: can't translate function [$(f.cpp_signature)], ignored."
            return "\n# $(f.func_name) ignored\n"
        end
    end

    lines = [""]
    # in-place op: pow_ -> pow!, pow_1 -> pow1!, ...
    jl_fname = f.func_name
    sufix_m = match(r"(\w+[^_])_(\d*)$", jl_fname)
    sufix_m != nothing && (jl_fname = "$(sufix_m[1])$(sufix_m[2])!")

    if Symbol(jl_fname) in names(Base)
        if !in(jl_fname, ["div"])
            push!(lines, "import Base.$(jl_fname)")
        end
    end

    push!(lines, doc(f, jl_fname)) # docs

    start = f.args[1].first == "out__" ? 2 : 1
    para_type = any(x -> x.second == "tensor*", f.args[start:end]) ?
        " where {T,N}" : ""
    ccall_ret = if f.return_type in ["raw_tensor"]
        "Ptr{Cvoid}"
    elseif f.return_type == "int64_t"
        "Int"
    else
        "Cvoid"
    end

    push!(lines, "function $(jl_fname)($(julia_args(f)))$(para_type)")
    push!(lines, julia_locals(f))
    push!(lines, "    __cret = ccall((:atg_$(f.func_name), :libtorch_capi),")
    push!(lines, "                 $(ccall_ret), ($(ccall_args(f))),")
    push!(lines, "                 $(ccall_julia_args(f)))")
    push!(lines, return_statement(f))
    push!(lines, "end")

    return join(lines, "\n")
end

function doc(f::APIFunction, jl_fname::AbstractString)
    cpp_sig = replace(f.cpp_signature, "_" => "\\\\_")
    lines = ["\n"]
    push!(lines, "\"\"\"")
    push!(lines, "    $(jl_fname)($(julia_args(f)))")
    push!(lines, "")
    push!(lines, " Wrapper of C++ function $(cpp_sig)")
    push!(lines, "\"\"\"")
    join(lines, "\n")
end

function julia_args(f::APIFunction)
    args = []
    start = f.args[1].first == "out__" ? 2 : 1
    for i in start:length(f.args)
        p = f.args[i]
        if endswith(p.first, "_len") && endswith(f.args[i-1].first, "_data")
            nothing
        else
            push!(args, "$(p.first)::$(J_TYPE_MAP[p.second])")
        end
    end
    join(args, ", ")
end

function julia_locals(f::APIFunction)
    lines = []
    for i in 1:length(f.args)
        p = f.args[i]
        if p.first == "dim"
            push!(lines, "    dim = dim - 1") # 0-based array index vs 1-based
        elseif endswith(p.first, "_len") && endswith(f.args[i-1].first, "_data")
            push!(lines, "    $(p.first) = length($(f.args[i-1].first))")
        elseif p.second == "scalar"
            push!(lines, "    $(p.first)_s_ = Scalar($(p.first))")
        elseif p.second == "tensor*"
            if p.first == "out__"
                output_init = join(repeat(["0"], f.output_count), ", ")
                push!(lines, "    outputs__ = Int[$(output_init)]")
            else
                push!(lines, "    $(p.first)_ta_ = map(x->x.pointer, $(p.first))")
            end
        end
    end
    join(lines, "\n")
end

function ccall_args(f::APIFunction)
    length(f.args) == 1 && return C_TYPE_MAP[f.args[1].second] * ","
    args = map(p -> C_TYPE_MAP[p.second], f.args)
    join(args, ", ")
end

function ccall_julia_args(f::APIFunction)
    args = map(f.args) do p
        p.second == "tensor*" && p.first == "out__" && return "outputs__"
        p.second == "tensor*" && return "$(p.first)_ta_"
        p.second in ("tensor", "gc_tensor")  && return "$(p.first).pointer"
        p.second == "scalar"  && return "$(p.first)_s_.pointer"
        return p.first
    end
    join(args, ", ")
end

function return_statement(f::APIFunction)
    if f.return_type in ("raw_tensor", "gc_tensor")
        return "    return tensor_from_ptr(__cret)"
    end
    return "    return __cret"
end


function main()
    count = 0
    source_lines = readlines(CPP_API_FILE)
    output = open(JUL_API_FILE, "w")
    func_match = nothing
    output_count = 0

    write(output, "# !!! THIS FILE IS AUTO-GENERATED, PLEASE DO NOT MODIFY. !!!\n\n")
    write(output, "module THC\n") # module start
    write(output, "using ..THArrays: Tensor, Scalar, TorchNumber, tensor_from_ptr\n")


    for line in source_lines
        m = match(FUNC_SIG_REG, line)
        if m != nothing # start of a function
            if func_match != nothing # deal with the previous function
                f = APIFunction(func_match, output_count)
                write(output, julia_source(f))
                output_count = 0
                count += 1
            end
            func_match = m
        end

        if func_match != nothing # in a function
            if match(r"out__\[\d+\]\s*=\s*new", line) != nothing
                output_count += 1
            elseif match(r"out__\[\D+\]\s*=\s*new", line) != nothing
                output_count = 1
            end
        end
    end

    if func_match != nothing # the last function
        f = APIFunction(func_match, output_count)
        write(output, julia_source(f))
        count += 1
    end

    write(output, "\n")
    write(output, "include(\"thc-opt.jl\")\n")
    write(output, "\n")
    write(output, "end\n") # module end

    close(output)

    @info "$(count) methods generated!\n"
end

main()
