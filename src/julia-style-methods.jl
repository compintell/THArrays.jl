# broadcast
Base.Broadcast.broadcasted(f, t::Tensor, args...) = f(t, args...)

# operators
Base.sum(t::Tensor{T}) where T = sum(t, eltype_id(T))

Base.:+(r::TorchNumber, t::Tensor) = add1(t, r)
Base.:+(t::Tensor, r::TorchNumber) = r + t
Base.:+(a::Tensor{T, N}, b::Tensor{T, N}) where {T, N} = add(a, b)

Base.:-(r::TorchNumber, t::Tensor) = ones_like(t) * r - t
Base.:-(t::Tensor, r::TorchNumber) = sub1(t, r)
Base.:-(a::Tensor{T, N}, b::Tensor{T, N}) where {T, N} = sub(a, b)
Base.:-(a::Tensor) = 0 - a

Base.:*(r::TorchNumber, t::Tensor) = mul1(t, r)
Base.:*(t::Tensor, r::TorchNumber) = r * t
Base.:*(a::Tensor{T, N}, b::Tensor{T, N}) where {T, N} = mul(a, b)

Base.:/(n::TorchNumber, t::Tensor) = ones_like(t) * n / t
Base.:/(t::Tensor, n::TorchNumber) = div1(t, n)
Base.:/(a::Tensor{T, N}, b::Tensor{T, N}) where {T, N} = Torch.div(a, b)
Base.div(n::TorchNumber, t::Tensor, r::RoundingMode=RoundToZero) = n / t
Base.div(t::Tensor, n::TorchNumber, r::RoundingMode=RoundToZero) = t / n
Base.div(a::Tensor{T, N}, b::Tensor{T, N}, r::RoundingMode=RoundToZero) where {T, N} = div(a, b)

Base.:^(t::Tensor, r::TorchNumber) = pow(t, r)

Base.:(==)(t1::Tensor, t2::Tensor) = ThArrays.all(eq1(t1, t2))[]
