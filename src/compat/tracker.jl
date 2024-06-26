module TrackerAD

using ..THArrays

using Tracker
using Tracker: Tracked, Call, data, track


## Tensor
THArrays.Tensor(x::Tracker.TrackedArray) = Tensor(data(x), requires_grad=true)

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
    TrackedTensor(Tracker.Call(), t, THC.zeros_like(t))
end

Base.eltype(x::Type{<:TrackedTensor{T}}) where T <: Real = TrackedTensor{T, 0}

function Base.show(io::IO, x::TrackedTensor)
  show(io, data(x))
  print(io, "(tracked Tensor)")
end

Base.copy(x::TrackedTensor) = x
Base.setindex!(xs::TrackedTensor, v, i...; kwargs...) =
    error("Can't differentiate `setindex!`")

## Fallthrough methods
for f in :[Base.size, Base.ndims, Base.collect].args
    @eval @inline $f(x::TrackedTensor, a...) = $f(data(x), a...)
end

## patches to Tracker.jl

Tracker.param(x::Tensor) = TrackedTensor(THC.requires_grad!(x, true))
Tracker.init_grad(x::Tensor) = THC.zeros_like(x)
Tracker.zero_grad!(x::Tensor) = (x .= 0)

"""
const __FORWARD_RESULT = IdDict{Any, Any}()
Tracker.collectmemaybe(x::TrackedTensor) = begin
    __FORWARD_RESULT[Tracker.tracker(x)] = x
    x
end

function Tracker.back(g::Tracker.Grads, x::Tracker.Tracked{Tensor{T, N}}, Δ) where {T, N}
    if haskey(__FORWARD_RESULT, x)
        THAD.backward(data(__FORWARD_RESULT[x]), Tensor(float.(Δ)))
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

# we use `_tr` to instead of the above patch now
"""
Tracker.collectmemaybe(x::TrackedTensor) = _tr(x)

## Switches
_th(x) = track(_th, x)
Tracker.@grad function _th(x)
    r = TrackedTensor(Tensor(x, requires_grad=true))
    r, (d) -> begin
        (THC.ones_like(data(r)) .* d,)
    end
end

_th(x::Tracker.TrackedArray) = track(_th, x)
Tracker.@grad function _th(x::Tracker.TrackedArray)
    r = TrackedTensor(Tensor(data(x), requires_grad=true))
    r, (d) -> begin
        (THC.ones_like(data(r)) .* d,)
    end
end

_tr(x) = track(_tr, x)
Tracker.@grad function _tr(x)
    x, (d) -> begin
        (ones(size(x)) .* d,)
    end
end

_tr(x::TrackedTensor{T, 0}) where {T} = track(_tr, x)
Tracker.@grad function _tr(x::TrackedTensor{T, 0}) where {T}
    r = convert(T, data(x))
    r, (d) -> begin
        THAD.backward(data(x), Tensor(float(d)))
        (float(d),)
    end
end

_tr(x::TrackedTensor{T, N}) where {T, N} = track(_tr, x)
Tracker.@grad function _tr(x::TrackedTensor{T, N}) where {T, N}
    r = convert(Array, data(x))
    r, (d) -> begin
        THAD.backward(data(x), Tensor(d))
        (ones(size(r)) .* d,)
    end
end


## Methods and Grads

Base.Broadcast.broadcasted(f, t::TrackedTensor, args...) = track(Base.Broadcast.broadcasted, f, t, args...)
Tracker.@grad function Base.Broadcast.broadcasted(f, t::TrackedTensor, args...)
    r = Base.Broadcast.broadcasted(f, data(t), data.(args)...)
    r, (d) -> begin
        grads = map(args) do arg
            (arg isa TrackedTensor) ? THAD.get_grad(data(arg), d) : nothing
        end
        (nothing, THAD.get_grad(data(t), d), grads...)
    end
end

macro grad_for_tensor(name)
    esc(quote
        $name(t::TrackedTensor, args...) = track($name, t, args...)
        Tracker.@grad function $name(t::TrackedTensor, args...)
            r = $name(data(t), data.(args)...)
            r, (d) -> begin
                grads = map(args) do arg
                    (arg isa TrackedTensor) ? THAD.get_grad(data(arg), d) : nothing
                end
                (THAD.get_grad(data(t), d), grads...)
            end
        end
        end)
end


#
# Methods in src/thc/thc.jl, can be extracted by the command:
# perl -n -e \
#   'if(m/import (Base\..*)/){ $i++; print "$1, "; print "\n" unless $i % 5;}' \
#   src/thc/thc.jl
#
for name in :[Base.abs, Base.acos, Base.all, Base.angle, Base.any,
              Base.argmax, Base.argmin, Base.asin, Base.atan, Base.cat,
              Base.ceil, Base.clamp, Base.clamp!, Base.coalesce, Base.conj,
              Base.cos, Base.cosh, Base.cumprod, Base.cumsum, Base.detach,
              Base.empty, Base.exp, Base.expm1, Base.fill!, Base.floor,
              Base.imag, Base.isfinite, Base.isnan, Base.log, Base.log10,
              Base.log1p, Base.log2, Base.max, Base.min, Base.mv,
              Base.ones, Base.prod, Base.put!, Base.rand, Base.randn,
              Base.range, Base.real, Base.repeat, Base.reshape, Base.resize!,
              Base.round, Base.sign, Base.sin, Base.sinh, Base.sort,
              Base.split, Base.sqrt, Base.sum, Base.tan, Base.tanh,
              Base.transpose, Base.trunc, Base.values, Base.view, Base.zeros,
              ].args
    @eval @grad_for_tensor($name)
end


#
# Methods in src/tensor.jl
#
for name in :[Base.getindex, Base.cat, Base.hcat, Base.vcat].args
    @eval @grad_for_tensor($name)
end

#
# Methods in src/common-methods.jl
#
for name in :[Base.:+, Base.:-, Base.:*, Base.:/, Base.div, Base.:^,
              Base.adjoint,].args
    @eval @grad_for_tensor($name)
end


end
