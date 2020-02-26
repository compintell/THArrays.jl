# JTorch

A Julia interface for PyTorch's C++ backend.

## Getting Started

1. Download
   https://download.pytorch.org/libtorch/cpu/libtorch-cxx11-abi-shared-with-deps-1.4.0%2Bcpu.zip
2. Unzip the downloaded zip to somewhere, say, `csrc/libtorch` or
   `/abs/path/to/libtorch`
3. Build the shared library:
   ```sh
   cd csrc
   mkdir build
   cd build
   cmake -DCMAKE_PREFIX_PATH=/abs/path/to/libtorch ..
   make jtorch
   ```

   After that, ensure you can find a file named `libjtorch.so` under
   the `csrc/build` directory.
4. Run an example:

   ```julia
   using JTorch

   c = rand(Float32, 3, 5)
   # 3×5 Array{Float32,2}:
   #  0.292864  0.478311   0.0135194  0.779127   0.051042
   #  0.295039  0.0344955  0.571507   0.751713   0.418774
   #  0.973963  0.849245   0.538734   0.0260422  0.17664

   t = Tensor(c)
   # PyTorch Tensor:
   # 0.2929  0.4783  0.0135  0.7791  0.0510
   # 0.2950  0.0345  0.5715  0.7517  0.4188
   # 0.9740  0.8492  0.5387  0.0260  0.1766
   # [ CPUFloatType{3,5} ]
   ```
