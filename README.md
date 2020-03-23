# ThArrays

A Julia interface for PyTorch's C++ backend.

![Unit Testing](https://github.com/TuringLang/ThArrays.jl/workflows/Unit%20Testing/badge.svg?branch=master)

## Getting Started

1. Build the package: run `julia deps/build.jl` or use `Pkg.build`.
   The build script will download the libtorch zip file, compile the
   shared library, and generate many Julia methods.
2. Run an example:

   ```julia
    julia> using ThArrays

    julia> t = Tensor( -rand(3, 3) )
    PyTorch.Tensor{Float64, 2}:
    -0.1428 -0.7099 -0.1446
    -0.3447 -0.0686 -0.8287
    -0.2692 -0.0501 -0.2092
    [ CPUDoubleType{3,3} ]

    julia> abs(t)
    PyTorch.Tensor{Float64, 2}:
     0.1428  0.7099  0.1446
     0.3447  0.0686  0.8287
     0.2692  0.0501  0.2092
    [ CPUDoubleType{3,3} ]

    julia> sin(t)^2 + cos(t)^2
    PyTorch.Tensor{Float64, 2}:
     1.0000  1.0000  1.0000
     1.0000  1.0000  1.0000
     1.0000  1.0000  1.0000
    [ CPUDoubleType{3,3} ]

    julia> t
    PyTorch.Tensor{Float64, 2}:
    -0.1428 -0.7099 -0.1446
    -0.3447 -0.0686 -0.8287
    -0.2692 -0.0501 -0.2092
    [ CPUDoubleType{3,3} ]

    julia> abs!(t)
    PyTorch.Tensor{Float64, 2}:
     0.1428  0.7099  0.1446
     0.3447  0.0686  0.8287
     0.2692  0.0501  0.2092
    [ CPUDoubleType{3,3} ]

    julia> t
    PyTorch.Tensor{Float64, 2}:
     0.1428  0.7099  0.1446
     0.3447  0.0686  0.8287
     0.2692  0.0501  0.2092
    [ CPUDoubleType{3,3} ]
    
    julia> ThArrays.gradient(x->sum(sin(x)+x^2), rand(3,3))
    (PyTorch.Tensor{Float64, 0}:
    6.54403
    [ CPUDoubleType{} ]
    , PyTorch.Tensor{Float64, 2}:
     2.3776  1.5465  2.0206
     1.2542  1.2081  2.1156
     2.1034  1.1568  2.2599
    [ CPUDoubleType{3,3} ]
    )

    julia>

   ```
   See the test directory for more examples.
