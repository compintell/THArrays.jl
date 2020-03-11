# operators
Base.sum(t::Tensor{T}) where T = sum(t, TYPE_MAP[T])
Base.:+(a::Tensor{T, N}, b::Tensor{T, N}) where {T, N} = add(a, b)
