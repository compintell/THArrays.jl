using MacroTools: @forward

reset_grad!(t::Tensor) = ThC.zero!(ThC.grad(t))
ThC.requires_grad!(t::Tensor, r::Bool) = ThC.requires_grad!(t, r ? 1 : 0)

function gradient(f, data...; d::Union{Ptr{Nothing}, Tensor}=C_NULL)
    tensors = map(d -> Tensor(d, requires_grad=true), data)
    return gradient(f, tensors...; d=d)
end

function gradient(f, tensors::Vararg{Tensor}; d::Union{Ptr{Nothing}, Tensor}=C_NULL)
    result = f(tensors...)
    backward(result, d)
    return ThC.grad.(tensors)
end


# tracker compatible API

export forward, data, param

struct Params
    order::Vector{Any}
    params::IdDict{Any, Bool}
    Params() = new([], IdDict())
end

@forward Params.order Base.iterate, Base.length

function Base.push!(ps::Params, x)
  if !haskey(ps.params, x)
      push!(ps.order, x)
      ps.params[x] = true
  end
  return ps
end

Base.push!(ps::Params, x...) = (foreach(x -> push!(ps, x), x); ps)
Params(xs) = push!(Params(), xs...)


data(t::Tensor) = convert(Array, t)
data(t::Tensor{T, 0}) where T = t[]
param(x) = x
param(x::Number) = Tensor(float(x); requires_grad=true)
param(xs::AbstractArray) = Tensor(float.(xs); requires_grad=true)

function forward(f, ps::Params)
    y = f()
    back = (d) -> begin
        g = IdDict()
        # reset grad!
        foreach((t) -> has_grad(t) && reset_grad!(t), ps)
        backward(y, param(d))
        foreach((t) -> g[t] = ThC.grad(t), ps)
        return g
    end
    return data(y), back
end

function forward(f, args...)
    args = param.(args)
    y, back = forward(()->f(args...), Params(args))
    y, (d) -> getindex.(Ref(back(d)), args)
end
