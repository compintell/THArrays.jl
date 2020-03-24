
reset_grad!(t::Tensor) = ThC.zero!(ThC.grad(t))
ThC.requires_grad!(t::Tensor, r::Bool) = ThC.requires_grad!(t, r ? 1 : 0)

function gradient(f, data...; g::Union{Ptr{Nothing}, Tensor}=C_NULL)
    tensors = map(d -> Tensor(d, requires_grad=true), data)
    return gradient(f, tensors...; g=g)
end

function gradient(f, tensors::Vararg{Tensor}; g::Union{Ptr{Nothing}, Tensor}=C_NULL)
    result = f(tensors...)
    backward(result, g)
    return (result, grad.(tensors)...)
end
