# Auto Differentiation

If you are familiar with PyTorch's AutoGrad, its usage in Julia is
very straightforward:

```julia
julia> a = rand(3, 2);

julia> t = Tensor(a, requires_grad=true)
PyTorch.Tensor{Float64, 2}:
 0.1360  0.5980
 0.5152  0.4439
 0.6944  0.2513
[ CPUDoubleType{3,2} ]

julia> s = sum(3 * t)
PyTorch.Tensor{Float64, 0}:
7.91639
[ CPUDoubleType{} ]

julia> THAD.backward(s)

julia> THAD.grad(t)
PyTorch.Tensor{Float64, 2}:
 3  3
 3  3
 3  3
[ CPUDoubleType{3,2} ]

```

## `THArrays.THAD`

We also provide some convenient functions in the module
`THArrays.THAD`, of which the most useful two are `gradient` and
`forward`:

```julia
julia> a = rand(3, 2);

julia> b = rand(3, 2);

julia> f(x, y) = x^2 + 3x + sin(y) - y
f (generic function with 1 method)

julia> grads = THAD.gradient(f, a, b; d=Tensor(ones(3,2)))
(PyTorch.Tensor{Float64, 2}:
 4.8802  3.5663
 3.7516  4.2127
 3.0235  4.2004
[ CPUDoubleType{3,2} ]
, PyTorch.Tensor{Float64, 2}:
0.01 *
-4.4241 -18.4686
 -0.1206 -42.0608
 -27.2898 -0.6701
[ CPUDoubleType{3,2} ]
)


julia> a = rand(3, 2);

julia> b = rand(3, 2);

julia> f(x, y) = sum(2x + 2y)
f (generic function with 1 method)

julia> y, back = THAD.forward(f, a, b);

julia> y
7.9688797507467255

julia> back(1)
(PyTorch.Tensor{Float64, 2}:
 2  2
 2  2
 2  2
[ CPUDoubleType{3,2} ]
, PyTorch.Tensor{Float64, 2}:
 2  2
 2  2
 2  2
[ CPUDoubleType{3,2} ]
)

```

## `THArrays.TrackerAD`

With module `THArrays.TrakcerAD`, THArrays provides the ability to do
AD using both [Tracker.jl](https://github.com/FluxML/Tracker.jl) and
PyTorch backend. That is, you can track some computation with Tracker
and track others with PyTorch in one forward:

```julia
using Tracker: forward, data

using THArrays
using THArrays.TrackerAD: _th, _tr

a = rand(3, 2)
b = rand(3, 2)

f1(x, y) = sum(sin.(_th(x)) + sin.(_th(y)))
y, back = forward(f1, a, b)
b = data(back(2))

```

The function `_th` is used to convert a Julia array (or TrackedArray)
to a Tensor (or TrackedTensor), and `_tr` is for the conversion in the
opposite direction.

So in the function `f1` above, we convert `x` and `y` into Tensors
immediately after we get them from the arguments, then, all the
computation (`sin`, `+`, `sum`) will be tracked by PyTorch.

Let's see more examples:

```julia
# sin with tr, (+, sum) wtih th
f2(x, y) = sum(_th(sin.(x)) + _th(sin.(y)))
# all with tr(Tracker Backend)
f3(x, y) = sum((sin.(x)) + (sin.(y)))
# (sin, +) with th, sum with tr
f4(x, y) = sum(_tr(sin.(_th(x)) + sin.(_th(y))))
# (sin, +) with tr, sum with th
f5(x, y) = sum(_th(sin.(x) + sin.(y)))
```

In `f2`, `sin` is called directly on `x` and `y`, which are Julia
arrays, so `sin` to tracked by Tracker.jl. Then the results are
converted to Tensors by `_th`, thus `+` and `sum` are tracked by
PyTorch.

In `f3` there's no conversion by `_th` or `_tr` so all the computation
are tracked by Trcaker.jl.

In `f4`, `sin` and `+` are tracked by PyTorch and `sum` is by
Tracker.jl.

In `f5`, `sin` and `+` are tracked by Tracker.jl while sum is tracked
by PyTorch.
