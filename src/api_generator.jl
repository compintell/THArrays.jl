
"""
This file intends to genrate Julia methods according C++ function:


void atg_abs_out(tensor *out__, tensor out, tensor self) {
  ...
}

->

export abs_out
function abs_out(out::Tensor, self::Tensor)
    outputs = Int[0]
    ccall((:atg_abs_out, :libtorch_capi),
          Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
          pointer(outputs), out.pointer, self.pointer)
    return tensor_from_ptr(Ptr{Cvoid}(outputs[1]))
end
"""

const PROJECT_DIR = (@__DIR__) |> dirname
const CPP_API_FILE = joinpath(PROJECT_DIR, "csrc", "torch_api_generated.cpp.h")
const JUL_API_FILE = joinpath(PROJECT_DIR, "src", "autogen-methods.jl")

const FUNC_SIG_REG = r"(\w+)\s+atg_(\w+)\((.+)\)\s*{"

const JULIA_KEYWORDS = Set(["function", "end"])

const C_TYPE_MAP = Dict(
    "void"     => "Cvoid",
    "tensor*"  => "Ptr{Cvoid}",
    "tensor"   => "Ptr{Cvoid}",
    "scalar"   => "Ptr{Cvoid}",
    "int"      => "Cint",
    "int*"     => "Ptr{Cvoid}",
    "int64_t"  => "Clonglong",
    "int64_t*" => "Ptr{Cvoid}",
    "double"   => "Cdouble",
)

const J_TYPE_MAP = Dict(
    "void"     => "Any",
    "tensor*"  => "Array{Tensor{T,N}}",
    "tensor"   => "Tensor",
    "scalar"   => "TorchNumber",
    "int"      => "Int",
    "int*"     => "Array{Int}",
    "int64_t"  => "Int64",
    "int64_t*" => "Array{Int64}",
    "double"   => "Float64",
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
        new(csig, m[2], m[1], n, args)
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
    if f.output_count > 1000
        @warn "can't translate function [$(f.cpp_signature)], ignored."
        return "# $(f.func_name) ignored"
    end

    if f.return_type != "void" || length(f.args) < 1 ||
        f.args[1].second != "tensor*"
        @warn "can't translate function [$(f.cpp_signature)], ignored."
        return "# $(f.func_name) ignored"
    end

    for arg in f.args
        if !haskey(C_TYPE_MAP, arg.second)
            @warn "can't translate function [$(f.cpp_signature)], ignored."
            return "# $(f.func_name) ignored"
        end
    end

    lines = [
        "# $(f.cpp_signature)"
    ]
    if Symbol(f.func_name) in names(Base)
        push!(lines, "import Base.$(f.func_name)")
    else
        push!(lines, "export $(f.func_name)")
    end

    output_init = join(repeat(["0"], f.output_count), ", ")
    para_type = any(x -> x.second == "tensor*", f.args[2:end]) ?
        " where {T,N}" : ""

    push!(lines, "function $(f.func_name)($(julia_args(f)))$(para_type)")
    push!(lines, "    outputs__ = Int[$(output_init)]")
    push!(lines, julia_locals(f))
    push!(lines, "    ccall((:atg_$(f.func_name), :libtorch_capi),")
    push!(lines, "          Cvoid, ($(ccall_args(f))),")
    push!(lines, "          pointer(outputs__), $(ccall_julia_args(f)))")
    push!(lines, return_statement(f))
    push!(lines, "end")

    return join(lines, "\n")
end

function julia_args(f::APIFunction)
    args = []
    for i in 2:length(f.args)
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

    for i in 2:length(f.args)
        p = f.args[i]
        if endswith(p.first, "_len") && endswith(f.args[i-1].first, "_data")
            push!(lines, "    $(p.first) = length($(f.args[i-1].first))")
        elseif p.second == "scalar"
            push!(lines, "    $(p.first)_s_ = Scalar($(p.first))")
        elseif p.second == "tensor*"
            push!(lines, "    $(p.first)_ta_ = map(x->x.pointer, $(p.first))")
        end
    end
    join(lines, "\n")
end

function ccall_args(f::APIFunction)
    length(f.args) == 1 && return C_TYPE_MAP[f.args[1].sceond] * ","
    args = map(p -> C_TYPE_MAP[p.second], f.args)
    join(args, ", ")
end

function ccall_julia_args(f::APIFunction)
    args = map(f.args[2:end]) do p
        p.second == "tensor"  && return "$(p.first).pointer"
        p.second == "scalar"  && return "$(p.first)_s_.pointer"
        p.second == "tensor*" && return "$(p.first)_ta_"
        return p.first
    end
    join(args, ", ")
end

function return_statement(f::APIFunction)
    if f.output_count == 1
        return "    return tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))"
    end

    lines = []
    for i in 1:f.output_count
        push!(lines,
              "    __o_$(i) = tensor_from_ptr(Ptr{Cvoid}(outputs__[$(i)]))")
    end
    push!(lines,
          "    return " * join(map(x-> "__o_$x", 1:f.output_count), ", "))
    return join(lines, "\n")
end


function main()
    source_lines = readlines(CPP_API_FILE)
    output = open(JUL_API_FILE, "w")
    func_match = nothing
    output_count = 0
    for line in source_lines
        m = match(FUNC_SIG_REG, line)
        if m != nothing # start of a function
            if func_match != nothing # deal with the previous function
                f = APIFunction(func_match, output_count)
                write(output, julia_source(f))
                write(output, "\n\n")
                output_count = 0
            end
            func_match = m
        end

        if func_match != nothing # in a function
            if match(r"out__\[\d+\]\s*=\s*new", line) != nothing
                output_count += 1
            end
            if match(r"out__\[\D+\]\s*=\s*new", line) != nothing
                output_count += 1001
            end
        end
    end

    if func_match != nothing # the last function
        f = APIFunction(func_match, output_count)
        write(output, julia_source(f))
        write(output, "\n\n")
    end

    close(output)
end

main()
