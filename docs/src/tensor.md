# Tensor

## Tensor

`THArrays.Tensor` is an array-like data structure, we can create a
Tensor instance from a Julia array directly:

```julia
julia> a1 = rand(3,2)
3×2 Array{Float64,2}:
 0.980161  0.612138
 0.66993   0.564298
 0.956528  0.620299

julia> t1 = Tensor(a1)
PyTorch.Tensor{Float64, 2}:
 0.9802  0.6121
 0.6699  0.5643
 0.9565  0.6203
[ CPUDoubleType{3,2} ]

```

In this way, the Tensor and the Julia Array share the underlying data,
if you change the elements of one of them, the other one also sees the
change:

```julia
julia> a1[1] = 1
1

julia> t1[2] = 2
2

julia> a1
3×2 Array{Float64,2}:
 1.0       0.612138
 2.0       0.564298
 0.956528  0.620299

julia> t1
PyTorch.Tensor{Float64, 2}:
 1.0000  0.6121
 2.0000  0.5643
 0.9565  0.6203
[ CPUDoubleType{3,2} ]

```

If you don't want them to share the underlying data, just pass
`detach=true` when constructing Tensors:

```julia
julia> a2 = rand(3, 2)
3×2 Array{Float64,2}:
 0.98454   0.906715
 0.945537  0.414818
 0.211776  0.228856

julia> t2 = Tensor(a2, detach=true)
PyTorch.Tensor{Float64, 2}:
 0.9845  0.9067
 0.9455  0.4148
 0.2118  0.2289
[ CPUDoubleType{3,2} ]

julia> a2[1] = 1
1

julia> t2[2] = 2
2

julia> a2
3×2 Array{Float64,2}:
 1.0       0.906715
 0.945537  0.414818
 0.211776  0.228856

julia> t2
PyTorch.Tensor{Float64, 2}:
 0.9845  0.9067
 2.0000  0.4148
 0.2118  0.2289
[ CPUDoubleType{3,2} ]

```

Calling `Convert(::Type{Array}, t::Tensor)` will convert a Tensor to a
Julia array.

`THArrays.Tensor` also supports many other operations like Julia arrays
do, including iteration, indexing, assignment via indexing,
concatenating (`cat`, `hcat`, `vcat`), etc.

### The 0-dim Tensor

It's worth noting that, the elements of a `Tensor{T,N}` are not of
type `T`, they are of type `Tensor{T,0}` which is a 0-dim tensor. The
value of a 0-dim Tensor can be fetch by `convert(::Type{T},
t::Tensor{T, 0})` or more simply, `t[]`.

## Tensor on GPU

If you installed THArrays with CUDA support, you can move your Tensors
onto GPU by calling `to`:

```julia
julia> t1 = Tensor(rand(3, 2))
PyTorch.Tensor{Float64, 2}:
 0.6791  0.1224
 0.0466  0.8784
 0.7620  0.1394
[ CPUDoubleType{3,2} ]

julia> on(t1)
CPU()

julia> t2 = to(t1, CUDA(2))
PyTorch.Tensor{Float64, 2}:
 0.6791  0.1224
 0.0466  0.8784
 0.7620  0.1394
[ CUDADoubleType{3,2} ]

julia> on(t2)
CUDA(2)

julia> t2 * 2
PyTorch.Tensor{Float64, 2}:
 1.3582  0.2449
 0.0931  1.7569
 1.5240  0.2789
[ CUDADoubleType{3,2} ]

```

As you see, `on` can be used to determine which device a Thensor is
on.
