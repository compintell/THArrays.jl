mutable struct Tensor{T, N} <: AbstractArray{T, N}
    type::Type
    ndims::Int64
    pointer::Ptr

    function Tensor{T, N}(p::Ptr) where {T, N}
        if !haskey(TYPE_MAP, T)
            error("Type $T is not supported.")
        end
        ret = new(T, N, p)
        finalizer(ret) do t
            ccall((:tensor_destroy, :libtorch_capi),
                  Ptr{Cvoid}, (Ptr{Cvoid},),
                  t.pointer)
        end
        return ret
    end

end

function Tensor{T}(array::Array{U, N}; requires_grad=false) where {T, U, N}
    if !haskey(TYPE_MAP, T)
        error("Type $T is not supported.")
    end

    dims = collect(size(array))
    if T != U
        array = convert.(T, array)
    end
    row_major = permutedims(array, collect(N:-1:1))
    grad = requires_grad ? 1 : 0
    ptr = ccall((:tensor_from_data, :libtorch_capi),
                Ptr{Cvoid},
                (Ptr{Cvoid}, Csize_t, Cchar, Ptr{Clonglong}, Csize_t, Cint),
                row_major, sizeof(array), TYPE_MAP[T], dims, N, grad)
    Tensor{T, N}(ptr)
end

function Tensor(array::Array{T, N}; requires_grad=false) where {T, N}
    Tensor{T}(array, requires_grad=requires_grad)
end

# 0-dim Tensor
function Tensor(s::T; requires_grad=false) where {T <: TorchNumber}
    data = T[s]
    grad = requires_grad ? 1 : 0
    ptr = ccall((:tensor_from_data, :libtorch_capi),
                Ptr{Cvoid},
                (Ptr{Cvoid}, Csize_t, Cchar, Ptr{Clonglong}, Csize_t, Cint),
                data, sizeof(T), TYPE_MAP[T], C_NULL, 0, grad)
    Tensor{T, 0}(ptr)
end

function Tensor(a0::Array{T, 0}; requires_grad=false) where {T <: TorchNumber}
    Tensor(a0[])
end

function tensor_from_ptr(p::Ptr)
    n_dims = ccall((:tensor_method_ndimension, :libtorch_capi),
                   Clonglong, (Ptr{Cvoid},),
                   p)
    # sizes = zeros(Int64, n_dims)
    # ccall((:tensor_method_sizes, :libtorch_capi),
    #       Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
    #       p, sizes)
    dtype = ccall((:tensor_method_dtype, :libtorch_capi),
          Cchar, (Ptr{Cvoid},),
          p)
    Tensor{REVERSE_TYPE_MAP[dtype], n_dims}(p)
end

function Base.convert(::Type{Array}, t::Tensor{T, N}) where {T, N}
    dims = size(t)
    ret = Array{T, N}(undef, reverse(dims))
    ccall((:tensor_method_data_copy, :libtorch_capi),
          Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Csize_t),
          t.pointer, ret, sizeof(T) * prod(dims))
    permutedims(ret, collect(N:-1:1))
end

function Base.string(t::Tensor)
    str = ccall((:tensor_to_string, :libtorch_capi),
                Ptr{UInt8}, (Ptr{Cvoid},),
                t.pointer)
    ret = unsafe_string(str)
    ccall(:free, Cvoid, (Ptr{Cvoid},), str)
    return ret
end

function Base.show(io::IO, t::Tensor{T, N}) where {T, N}
    write(io, "PyTorch.Tensor{$T, $N}:\n")
    write(io, string(t))
    write(io, "\n")
end

function Base.display(t::Tensor)
    show(stdout, t)
end

# array interface
Base.eltype(::Type{Tensor{T}}) where {T} = Tensor{T, 0}
Base.ndims(t::Tensor{T, N}) where {T, N} = N

eltype_id(::Tensor{T}) where {T} = Int(TYPE_MAP[T])
eltype_id(::Type{T}) where {T <: TorchNumber} = Int(TYPE_MAP[T])

function Base.size(t::Tensor{T, N}) where {T, N}
    n_dims = ccall((:tensor_method_ndimension, :libtorch_capi),
                   Clonglong, (Ptr{Cvoid},),
                   t.pointer)
    @assert N == n_dims "Dimension mismatch!"
    sizes = zeros(Int64, n_dims)
    ccall((:tensor_method_sizes, :libtorch_capi),
          Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
          t.pointer, sizes)
    tuple(sizes...)
end

function _tensor_indices(t::Tensor, I)
    indices = collect.(to_indices(t, I))
    shape = collect(Iterators.flatten(size.(indices)))
    indices = map(x -> x .- 1, indices)
    collect(indices), shape
end

_to_dim_0(t::Tensor) = reshape_as(t, Tensor(0))
_to_dim_1_1(t::Tensor) = reshape(t, [1, 1])

function Base.getindex(t::Tensor, I...)
    ts, shape = _tensor_indices(t, I)
    ret = t
    for i in 1:length(ts)
        ret = index_select(ret, i - 1, Tensor(ts[i]))
    end
    all(x -> x == 1, size(ret)) && shape == Union{}[] && return _to_dim_0(ret)
    reshape(ret, shape)
end
Base.getindex(t::Tensor{T}) where T = item(t)
Base.getindex(t::Tensor, i::Int64) = t[eachindex(t)[i]]
function Base.getindex(t::Tensor, I::UnitRange{Int64})
    t = vcat(map(i->_to_dim_1_1(t[i]), eachindex(t)[I])...)
    reshape(t, [length(t)])
end

function Base.setindex!(t::Tensor{T}, v::Tensor{T}, I...) where T
    @assert length(I) > 0  "no indices given"
    @assert(!any(i -> i isa StepRange, I),
            "StepRange indices are not supported in Tensor assignment")
    ts, _1 = _tensor_indices(t, I)
    ret = t
    for i in 1:(length(ts) - 1)
        ret = narrow(ret, i - 1, ts[i][1], length(ts[i]))
    end
    dshape = length.(ts)
    index_copy!(ret, length(ts) - 1, Tensor(ts[end]), reshape(v, dshape))
    v
end
Base.setindex!(t::Tensor{T}, v::Array, I...) where T = setindex!(t, Tensor{T}(v), I...)
Base.setindex!(t::Tensor{T}, v, i::Int64) where T = setindex!(t, Tensor{T}([v]), (eachindex(t)[i].I)...)
function Base.setindex!(t::Tensor{T}, v::Array, I::UnitRange{Int64}) where T
    indices = eachindex(t)[I]
    @assert length(v) == length(indices)
    for idx in 1:length(v)
        setindex!(t, Tensor{T}(v[[idx]]), (indices[idx].I)...)
    end
end


function Base.iterate(t::Tensor, state=(eachindex(t),))
    y = iterate(state...)
    y === nothing && return nothing
    t[y[1]], (state[1], Base.tail(y)...)
end

Base.cat(I::Vararg{Tensor}; dims) = cat(collect(I), dims)
Base.vcat(I::Vararg{Tensor}) = cat(collect(I), 0)
Base.hcat(I::Vararg{Tensor}) = cat(collect(I), 1)
function Base.hvcat(rows::Tuple{Vararg{Int}}, I::Vararg{Tensor,N}) where N
    ts = Iterators.Stateful(I)
    hs = map(n -> collect(Iterators.take(ts, n)), rows)
    hs = [hcat(t...) for t in hs]
    vcat(hs...)
end

# methods
function item(t::Tensor{T,N}) where {T,N}
    @assert(N == 0 || prod(size(t)) == 1,
            "The Tensor must contain only one element.")
    data = T[zero(T)]
    ccall((:tensor_method_item, :libtorch_capi),
          Cvoid, (Ptr{Cvoid}, Cchar, Ptr{Cvoid}),
          t.pointer, TYPE_MAP[T], data)
    return data[1]
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
