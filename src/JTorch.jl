module JTorch

using Libdl

export Tensor

const PROJECT_DIR = (@__DIR__) |> dirname

function __init__()
    Libdl.dlopen(joinpath(PROJECT_DIR, "csrc/build/libjtorch"))
end

struct Tensor
    pointer::Ptr
end

function Tensor(array::AbstractArray{Float32, N}) where N
    dims = collect(size(array))
    row_major = permutedims(array, collect(length(dims):-1:1))
    ptr = ccall((:tensor_from_data, :libjtorch),
                Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{Clonglong}, Csize_t),
                row_major, dims, length(dims))
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

end
