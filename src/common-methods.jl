# broadcast
Base.Broadcast.broadcasted(f, t::Tensor, args...) = f(t, args...)
Base.Broadcast.broadcasted(::typeof(Base.:*), a::Tensor, b::Tensor) = THC.mul(a, b)

# operators
Base.:+(r::TorchNumber, t::Tensor) = THC.add_scalar(t, r)
Base.:+(t::Tensor, r::TorchNumber) = r + t
Base.:+(a::Tensor{T, N}, b::Tensor{T, N}) where {T, N} = THC.opt_add(a, b)

Base.:-(r::TorchNumber, t::Tensor) = THC.ones_like(t) * r - t
Base.:-(t::Tensor, r::TorchNumber) = THC.sub_scalar(t, r)
Base.:-(a::Tensor{T, N}, b::Tensor{T, N}) where {T, N} = THC.sub(a, b)
Base.:-(a::Tensor) = 0 - a

Base.:*(r::TorchNumber, t::Tensor) = THC.mul_scalar(t, r)
Base.:*(t::Tensor, r::TorchNumber) = r * t
Base.:*(a::Tensor{T, N}, b::Tensor{T, N}) where {T, N} = THC.mul(a, b)

Base.:/(n::TorchNumber, t::Tensor) = THC.ones_like(t) * n / t
Base.:/(t::Tensor, n::TorchNumber) = THC.div_scalar(t, n)
Base.:/(a::Tensor{T, N}, b::Tensor{T, N}) where {T, N} = THC.div(a, b)
Base.div(n::TorchNumber, t::Tensor, r::RoundingMode=RoundToZero) = n / t
Base.div(t::Tensor, n::TorchNumber, r::RoundingMode=RoundToZero) = t / n
Base.div(a::Tensor{T, N}, b::Tensor{T, N}, r::RoundingMode=RoundToZero) where {T, N} = div(a, b)

Base.:^(t::Tensor, r::TorchNumber) = THC.float_power_tensor_scalar(t, r)
Base.:(==)(t1::Tensor, t2::Tensor) = THArrays.THC.all(THArrays.THC.eq_tensor(t1, t2))[]

function Base.ones(::Type{Tensor{T}}, I::Vararg{Int}; dev::Device=CPU()) where T
    dims = Int64[I...]
    THC.ones(dims, eltype_id(T), convert(Int, dev))
end

function Base.zeros(::Type{Tensor{T}}, I::Vararg{Int}; dev::Device=CPU()) where T
    dims = Int64[I...]
    THC.zeros(dims, eltype_id(T), convert(Int, dev))
end

function Base.rand(::Type{Tensor{T}}, I::Vararg{Int}; dev::Device=CPU()) where T
    dims = Int64[I...]
    THC.rand(dims, eltype_id(T), convert(Int, dev))
end

THC.eye(::Type{T}, n::Int64; dev::Device=CPU()) where T =
    THC.eye(n, eltype_id(T), convert(Int, dev))
THC.eye(::Type{Tensor{T}}, n::Int64; dev::Device=CPU()) where T =
    THC.eye(T, n, dev=dev)

Base.sum(t::Tensor{T}) where T = THC.sum(t, eltype_id(T))
Base.view(t::Tensor{T}, I...) where T = error("Not implement yet.")
Base.transpose(t::Tensor{T, 2}) where T = THC.t(t)

# LinearAlgebra.det(t::Tensor) = error("Not implement yet.")
# LinearAlgebra.logdet(t::Tensor) = error("Not implement yet.")
# LinearAlgebra.logabsdet(t::Tensor) = error("Not implement yet.")
# Base.repeat(t::Tensor; kw...) = error("Not implement yet.")
# Base.reshape(t::Tensor, dims...) = error("Not implement yet.")
# Base.permutedims(t::Tensor, perm) = error("Not implement yet.")
# Base.PermutedDimsArray(t::Tensor, perm) = error("Not implement yet.")
# Base.reverse(t::Tensor; dims) = error("Not implement yet.")
# Base.reverse(t::Tensor) = error("Not implement yet.")
# Base.reverse(t::Tensor, start, stop) = error("Not implement yet.")
# Base.inv(t::Tensor) = error("Not implement yet.")
# Base.:\(a::Tensor, b::Tensor) = error("Not implement yet.")
# Base.prod(t::Tensor, dim) = error("Not implement yet.")
# Base.prod(t::Tensor) = error("Not implement yet.")
# Base.prod(f::Union{Function, Type}, t::Tensor) = error("Not implement yet.")
# Statistics.mean(t::Tensor; dims = :) = error("Not implement yet.")
# Base.maximum(t::Tensor; dims = :) = error("Not implement yet.")
# Base.minimum(t::Tensor; dims = :) = error("Not implement yet.")
# Base.dot(a::Tensor, b::Tensor) = error("Not implement yet.")
# LinearAlgebra.diagm(...)
# NNlib
# softmax, logsoftmax, depthwiseconv, conv, ∇conv_data, maxpool, meanpool
