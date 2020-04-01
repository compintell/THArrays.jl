# broadcast
Base.Broadcast.broadcasted(f, t::Tensor, args...) = f(t, args...)
Base.Broadcast.broadcasted(::typeof(Base.:*), a::Tensor, b::Tensor) = ThC.mul(a, b)

# operators
Base.sum(t::Tensor{T}) where T = ThC.sum(t, eltype_id(T))

Base.:+(r::TorchNumber, t::Tensor) = ThC.add1(t, r)
Base.:+(t::Tensor, r::TorchNumber) = r + t
Base.:+(a::Tensor{T, N}, b::Tensor{T, N}) where {T, N} = ThC.opt_add(a, b)

Base.:-(r::TorchNumber, t::Tensor) = ThC.ones_like(t) * r - t
Base.:-(t::Tensor, r::TorchNumber) = ThC.sub1(t, r)
Base.:-(a::Tensor{T, N}, b::Tensor{T, N}) where {T, N} = ThC.sub(a, b)
Base.:-(a::Tensor) = 0 - a

Base.:*(r::TorchNumber, t::Tensor) = ThC.mul1(t, r)
Base.:*(t::Tensor, r::TorchNumber) = r * t
Base.:*(a::Tensor{T, N}, b::Tensor{T, N}) where {T, N} = ThC.mm(a, b)

Base.:/(n::TorchNumber, t::Tensor) = ThC.ones_like(t) * n / t
Base.:/(t::Tensor, n::TorchNumber) = ThC.div1(t, n)
Base.:/(a::Tensor{T, N}, b::Tensor{T, N}) where {T, N} = ThC.div(a, b)
Base.div(n::TorchNumber, t::Tensor, r::RoundingMode=RoundToZero) = n / t
Base.div(t::Tensor, n::TorchNumber, r::RoundingMode=RoundToZero) = t / n
Base.div(a::Tensor{T, N}, b::Tensor{T, N}, r::RoundingMode=RoundToZero) where {T, N} = div(a, b)

Base.:^(t::Tensor, r::TorchNumber) = ThC.pow(t, r)

Base.:(==)(t1::Tensor, t2::Tensor) = ThArrays.ThC.all(ThArrays.ThC.eq1(t1, t2))[]


function Base.ones(::Type{Tensor{T}}, I::Vararg{Int}; dev::Device=CPU()) where T
    dims = Int64[I...]
    ThC.ones(dims, eltype_id(T), convert(Int, dev))
end

function Base.zeros(::Type{Tensor{T}}, I::Vararg{Int}; dev::Device=CPU()) where T
    dims = Int64[I...]
    ThC.zeros(dims, eltype_id(T), convert(Int, dev))
end

function Base.rand(::Type{Tensor{T}}, I::Vararg{Int}; dev::Device=CPU()) where T
    dims = Int64[I...]
    ThC.rand(dims, eltype_id(T), convert(Int, dev))
end

ThC.eye(::Type{T}, n::Int64; dev::Device=CPU()) where T =
    ThC.eye(n, eltype_id(T), convert(Int, dev))
ThC.eye(::Type{Tensor{T}}, n::Int64; dev::Device=CPU()) where T =
    ThC.eye(T, n, dev=dev)
