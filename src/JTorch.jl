module JTorch

using Libdl

export Tensor,
    grad, backward

const PROJECT_DIR = (@__DIR__) |> dirname

function __init__()
    Libdl.dlopen(joinpath(PROJECT_DIR, "csrc/build/libtorch_capi"))
end

const TYPE_MAP = Dict{Type, Int32}(
    ### float
    Float16 => 5,
    Float32 => 6,
    Float64 => 7,
    ### bool and char
    Bool => 11,
    # Char => 1, # Char in Julia is not single byte
    ### int
    Int8 => 1,
    # UInt8 => 1,
    Int16 => 2,
    # UInt16 => 2,
    Int32 => 3,
    # UInt32 => 3,
    Int64 => 4,
    # UInt64 => 4,
    # Int128 => ?,
    # UInt128 => ?,
)

mutable struct Tensor{T}
    type::Type
    pointer::Ptr

    function Tensor{T}(p::Ptr) where T
        if !haskey(TYPE_MAP, T)
            error("Type $T is not supported.")
        end
        ret = new(T, p)
        finalizer(ret) do t
            ccall((:tensor_destroy, :libtorch_capi),
                  Ptr{Cvoid}, (Ptr{Cvoid},),
                  t.pointer)
        end
        return ret
    end

end

function Tensor(array::Array{T, N}; requires_grad=false) where {T, N}
    if !haskey(TYPE_MAP, T)
        error("Type $T is not supported.")
    end

    dims = collect(size(array))
    row_major = permutedims(array, collect(N:-1:1))
    grad = requires_grad ? 1 : 0
    ptr = ccall((:tensor_from_data, :libtorch_capi),
                Ptr{Cvoid},
                (Ptr{Cvoid}, Csize_t, Cint, Ptr{Clonglong}, Csize_t, Cint),
                row_major, sizeof(array), TYPE_MAP[T], dims, N, grad)
    Tensor{T}(ptr)
end

function Base.string(t::Tensor)
    str = ccall((:tensor_to_string, :libtorch_capi),
                Ptr{UInt8}, (Ptr{Cvoid},),
                t.pointer)
    ret = unsafe_string(str)
    ccall(:free, Cvoid, (Ptr{Cvoid},), str)
    return ret
end

function Base.show(io::IO, t::Tensor{T}) where T
    write(io, "PyTorch.Tensor{$T}:\n")
    write(io, string(t))
    write(io, "\n")
end

function Base.display(t::Tensor)
    show(stdout, t)
end

# methods

function Base.sum(a::Tensor{T}) where T
    ptr = ccall((:tensor_method_sum, :libtorch_capi),
                Ptr{Cvoid}, (Ptr{Cvoid},),
                a.pointer)
    Tensor{T}(ptr)
end

function grad(a::Tensor{T}) where T
    ptr = ccall((:tensor_method_grad, :libtorch_capi),
                Ptr{Cvoid}, (Ptr{Cvoid},),
                a.pointer)
    Tensor{T}(ptr)
end

function backward(a::Tensor, g::Union{Ptr{Nothing}, Tensor}=C_NULL;
                  keep_graph::Bool=false, create_graph::Bool=false)
    if g isa Tensor
        g = g.pointer
    end
    ccall((:tensor_method_backward, :libtorch_capi),
          Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
          a.pointer, g, keep_graph, create_graph)
    nothing
end

# operators

function Base.:+(a::Tensor{T}, b::Tensor{T}) where T
    ptr = ccall((:tensor_op_add, :libtorch_capi),
                Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{Cvoid}),
                a.pointer, b.pointer)
    Tensor{T}(ptr)
end


end
