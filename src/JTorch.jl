module JTorch

using Libdl

export Tensor,
    grad, backward

const PROJECT_DIR = (@__DIR__) |> dirname

function __init__()
    Libdl.dlopen(joinpath(PROJECT_DIR, "csrc/build/libjtorch"))
end

mutable struct Tensor
    pointer::Ptr

    function Tensor(p::Ptr)
        ret = new(p)
        finalizer(ret) do t
            ccall((:tensor_destroy, :libjtorch),
                  Ptr{UInt8}, (Ptr{Cvoid},),
                  t.pointer)
        end
        return ret
    end

end

function Tensor(array::AbstractArray{Float32, N}; requires_grad=false) where N
    dims = collect(size(array))
    row_major = permutedims(array, collect(length(dims):-1:1))
    grad = requires_grad ? 1 : 0
    ptr = ccall((:tensor_from_data, :libjtorch),
                Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{Clonglong}, Csize_t, Cint),
                row_major, dims, length(dims), grad)
    Tensor(ptr)
end

function Base.string(t::Tensor)
    str = ccall((:tensor_to_string, :libjtorch),
                Ptr{UInt8}, (Ptr{Cvoid},),
                t.pointer)
    ret = unsafe_string(str)
    ccall(:free, Cvoid, (Ptr{Cvoid},), str)
    return ret
end

function Base.show(io::IO, t::Tensor)
    write(io, "PyTorch Tensor:\n")
    write(io, string(t))
end

function Base.display(t::Tensor)
    show(stdout, t)
end

# methods

function Base.sum(a::Tensor)
    ptr = ccall((:tensor_method_sum, :libjtorch),
                Ptr{Cvoid}, (Ptr{Cvoid},),
                a.pointer)
    Tensor(ptr)
end

function grad(a::Tensor)
    ptr = ccall((:tensor_method_grad, :libjtorch),
                Ptr{Cvoid}, (Ptr{Cvoid},),
                a.pointer)
    Tensor(ptr)
end

function backward(a::Tensor)
    ccall((:tensor_method_backward, :libjtorch),
          Ptr{Cvoid}, (Ptr{Cvoid},),
          a.pointer)
    nothing
end

# operators

function Base.:+(a::Tensor, b::Tensor)
    ptr = ccall((:tensor_op_add, :libjtorch),
                Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{Cvoid}),
                a.pointer, b.pointer)
    Tensor(ptr)
end


end
