mutable struct Scalar{T}
    type::Type
    pointer::Ptr

    function Scalar{T}(p::Ptr) where T
        if !haskey(TYPE_MAP, T)
            error("Type $T is not supported.")
        end
        ret = new(T, p)
        finalizer(ret) do s
            ccall((:scalar_destroy, :libtorch_capi),
                  Cvoid, (Ptr{Cvoid},),
                  s.pointer)
        end
        return ret
    end

end


function Scalar{T}(s::U) where {T<:TorchNumber, U<:TorchNumber}
    if !haskey(TYPE_MAP, T)
        error("Type $T is not supported.")
    end
    data = T[convert(T, s)]
    ptr = ccall((:scalar_from_data, :libtorch_capi),
                Ptr{Cvoid}, (Ptr{Cvoid}, Cchar),
                data, TYPE_MAP[T])
    Scalar{T}(ptr)
end

Scalar(s::T) where T = Scalar{T}(s)

function value(s::Scalar{T}) where T
    data = T[zero(T)]
    ccall((:scalar_value, :libtorch_capi),
          Cvoid, (Ptr{Cvoid}, Cchar, Ptr{Cvoid}),
          s.pointer, TYPE_MAP[T], data)
    return data[1]
end

Base.getindex(s::Scalar) = value(s)

function Base.show(io::IO, s::Scalar{T}) where {T}
    write(io, "PyTorch.Scalar{$T} = $(value(s))\n")
end

function Base.display(s::Scalar)
    show(stdout, s)
end
