module TrackerAD

using ..ThArrays

using Tracker
using Tracker: Tracked, Call, data, track


## Tensor
ThArrays.Tensor(x::Tracker.TrackedArray) = Tensor(data(x), requires_grad=true)

## TrackedTensor
struct TrackedTensor{T, N} <: AbstractArray{T, N}
    tracker::Tracked{Tensor{T, N}}
    data::Tensor{T, N}
    grad::Tensor{T, N}

    TrackedTensor{T, N}(
        t::Tracked{Tensor{T, N}},
        data::Tensor{T, N}) where {T, N} = new(t, data)
    TrackedTensor{T, N}(
        t::Tracked{Tensor{T, N}},
        data::Tensor{T, N}, grad::Tensor{T, N}) where {T, N} = new(t, data, grad)
end

Tracker.data(x::TrackedTensor) = x.data
Tracker.tracker(x::TrackedTensor) = x.tracker
Tracker.track(c::Tracker.Call, x::Tensor) = TrackedTensor(c, x)
Tracker.track(c::Tracker.Call, x::TrackedTensor) = TrackedTensor(c, data(x))

function TrackedTensor(c::Tracker.Call, t::Tensor{T, N}) where {T, N}
    TrackedTensor{T, N}(Tracker.Tracked{Tensor{T, N}}(c), t)
end

function TrackedTensor(c::Tracker.Call, t::Tensor{T, N}, d::Tensor{T, N}) where {T, N}
    TrackedTensor{T, N}(Tracker.Tracked{Tensor{T, N}}(c, d), t, d)
end

function TrackedTensor(t::Tensor)
    TrackedTensor(Tracker.Call(), t, ThC.zeros_like(t))
end

Base.eltype(x::Type{<:TrackedTensor{T}}) where T <: Real = TrackedTensor{T, 0}

function Base.show(io::IO, x::TrackedTensor)
  show(io, data(x))
  print(io, "(tracked Tensor)")
end

Base.copy(x::TrackedTensor) = x
collect(xs::TrackedTensor) = xs

Base.setindex!(xs::TrackedTensor, v, i...; kwargs...) =
    error("Can't differentiate `setindex!`")

## Fallthrough methods
for f in :[Base.size, Base.ndims, Base.collect].args
    @eval @inline $f(x::TrackedTensor, a...) = $f(data(x), a...)
end

## Methods and Grads

Base.Broadcast.broadcasted(f, t::TrackedTensor, args...) = track(Base.Broadcast.broadcasted, f, t, args...)
Tracker.@grad function Base.Broadcast.broadcasted(f, t::TrackedTensor, args...)
    r = f(data(t), args...)
    r, (d) -> begin
        (nothing, ThAD.get_grad(data(t), d))
    end
end

Base.:+(a::TrackedTensor{T, N}, b::TrackedTensor{T, N}) where {T, N} =
    track(Base.:+, a, b)
Tracker.@grad function Base.:+(
    a::TrackedTensor{T, N}, b::TrackedTensor{T, N}) where {T, N}
    r = data(a) + data(b)
    r, (d) -> (ThAD.get_grad(data(a)), ThAD.get_grad(data(b)))
end

Base.sum(a::TrackedTensor) = track(Base.sum, a)
Tracker.@grad function Base.sum(a::TrackedTensor)
    r = sum(data(a))
    r, (d) -> begin
        (ThAD.get_grad(data(a), d),)
    end
end

Base.sin(a::TrackedTensor) = track(Base.sin, a)
Tracker.@grad function Base.sin(a::TrackedTensor)
    r = sin(data(a))
    r, (d) -> begin
        (ThAD.get_grad(data(a), d),)
    end
end

## patches to Tracker.jl

Tracker.param(x::Tensor) = TrackedTensor(ThC.requires_grad!(x, true))
Tracker.init_grad(x::Tensor) = ThC.zeros_like(x)
Tracker.zero_grad!(x::Tensor) = (x .= 0)

const __FORWARD_RESULT = IdDict{Any, Any}()
Tracker.collectmemaybe(x::TrackedTensor) = begin
    __FORWARD_RESULT[Tracker.tracker(x)] = x
    x
end

function Tracker.back(g::Tracker.Grads, x::Tracker.Tracked{Tensor{T, N}}, Δ) where {T, N}
    if haskey(__FORWARD_RESULT, x)
        ThAD.backward(data(__FORWARD_RESULT[x]), Tensor(float.(Δ)))
        delete!(__FORWARD_RESULT, x)
    end
    x.isleaf && (Tracker.accum!(g, x, Δ); return)
    ref = x.ref -= 1
    if ref > 0 || haskey(g, x)
        Tracker.accum!(g, x, Δ)
        ref == 0 && Tracker.back_(g, x.f, g[x])
    else
        ref == 0 && Tracker.back_(g, x.f, Δ)
    end
    return
end

## Switches
_th(x) = track(_th, x)
Tracker.@grad function _th(x)
    r = TrackedTensor(Tensor(x, requires_grad=true))
    r, (d) -> begin
        (ThC.ones_like(data(r)) * d,)
    end
end

_th(x::Tracker.TrackedArray) = track(_th, x)
Tracker.@grad function _th(x::Tracker.TrackedArray)
    r = TrackedTensor(Tensor(data(x), requires_grad=true))
    r, (d) -> begin
        (ThC.ones_like(data(r)) * d,)
    end
end

_tr(x) = track(_tr, x)
Tracker.@grad function _tr(x)
    x, (d) -> begin
        (ones(size(x)) .* d,)
    end
end

_tr(x::TrackedTensor{T, N}) where {T, N} = track(_tr, x)
Tracker.@grad function _tr(x::TrackedTensor{T, N}) where {T, N}
    r = convert(Array, data(x))
    r, (d) -> begin
        ThAD.backward(data(x), Tensor(d))
        (ones(size(r)) .* d,)
    end
end

end
