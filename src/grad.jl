
reset_grad!(t::Tensor) = zero!(grad(t))

function gradient(f, data...; g::Union{Ptr{Nothing}, Tensor}=C_NULL)
    tensors = map(d -> Tensor(d, requires_grad=true), data)
    return gradient(f, tensors...; g=g)
end

function gradient(f, tensors::Vararg{Tensor}; g::Union{Ptr{Nothing}, Tensor}=C_NULL)
    result = f(tensors...)
    backward(result, g)
    return (result, grad.(tensors)...)
end
