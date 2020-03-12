# Torch

A Julia interface for PyTorch's C++ backend.

## Getting Started

1. Build the package: run `julis deps/build.jl` or use `Pkg.build`.
   The build script will download the libtorch zip file, compile the
   shared library, and generate many Julia methods.
2. Run an example:

   ```julia
   using Torch

   c = rand(3, 5)
   # 3×5 Array{Float64,2}:
   #  0.292864  0.478311   0.0135194  0.779127   0.051042
   #  0.295039  0.0344955  0.571507   0.751713   0.418774
   #  0.973963  0.849245   0.538734   0.0260422  0.17664

   t = Tensor(c)
   # PyTorch.Tensor{Float64}:
   # 0.2929  0.4783  0.0135  0.7791  0.0510
   # 0.2950  0.0345  0.5715  0.7517  0.4188
   # 0.9740  0.8492  0.5387  0.0260  0.1766
   # [ CPUDoubleType{3,5} ]
   ```
   See the test directory for more examples.
