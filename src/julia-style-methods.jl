# broadcast
Base.Broadcast.broadcasted(f, t::Tensor, args...) = f(t, args...)

# operators
Base.sum(t::Tensor{T}) where T = sum(t, TYPE_MAP[T])

Base.:+(r::TorchNumber, t::Tensor) = add1(t, r)
Base.:+(t::Tensor, r::TorchNumber) = add1(t, r)
Base.:+(a::Tensor{T, N}, b::Tensor{T, N}) where {T, N} = add(a, b)

Base.:-(r::TorchNumber, t::Tensor) = ones_like(t) * r - t
Base.:-(t::Tensor, r::TorchNumber) = sub1(t, r)
Base.:-(a::Tensor{T, N}, b::Tensor{T, N}) where {T, N} = sub(a, b)

Base.:*(r::TorchNumber, t::Tensor) = mul1(t, r)
Base.:*(t::Tensor, r::TorchNumber) = mul1(t, r)
Base.:*(a::Tensor{T, N}, b::Tensor{T, N}) where {T, N} = mul(a, b)

Base.:/(r::TorchNumber, t::Tensor) = ones_like(t) * r / t
Base.:/(t::Tensor, r::TorchNumber) = div1(t, r)
Base.:/(a::Tensor{T, N}, b::Tensor{T, N}) where {T, N} = div(a, b)

Base.:^(t::Tensor, r::TorchNumber) = pow(t, r)
