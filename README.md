<!-- # ( -*- mode: markdown; mode: auto-fill -*- )
-->

# THArrays

A Julia interface for PyTorch's C++ backend.

![Unit Testing](https://github.com/compintell/THArrays.jl/workflows/Unit%20Testing/badge.svg?branch=master)

## Features
   - `THArrays.Tensor`: PyTorch Tensor as an Array-like data type in
      Julia
   - `THArrays.THAD`: AD using PyTorch C++ backend
   - `THArrays.TrackerAD`: AD using Tracker.jl and PyTorch C++
      backend mixed, on your choice
   - `THArrays.THJIT`: using TorchScript in Julia

## Getting Started

1. Install the package: `] add THArrays`
2. Read the docs [here](https://compintell.github.io/THArrays.jl), or
3. Experiment in the Julia REPL directly:

   ```julia
    julia> using THArrays

    julia> t = Tensor( -rand(3, 3) )
    PyTorch.Tensor{Float64, 2}:
    -0.1428 -0.7099 -0.1446
    -0.3447 -0.0686 -0.8287
    -0.2692 -0.0501 -0.2092
    [ CPUDoubleType{3,3} ]

    julia> sin(t)^2 + cos(t)^2
    PyTorch.Tensor{Float64, 2}:
     1.0000  1.0000  1.0000
     1.0000  1.0000  1.0000
     1.0000  1.0000  1.0000
    [ CPUDoubleType{3,3} ]

    julia> THAD.gradient(x->sum(sin(x)+x^2), rand(3,3))
    (PyTorch.Tensor{Float64, 2}:
     2.3776  1.5465  2.0206
     1.2542  1.2081  2.1156
     2.1034  1.1568  2.2599
    [ CPUDoubleType{3,3} ]
    ,)

    julia>

   ```
   You can find more examples under the `test` directory.
