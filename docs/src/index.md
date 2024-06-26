# THArrays

THArrays is a Julia interface for the PyTorch's C++ backend. It aims
on bringing the fundamental facilities, e.g., `Tensor`, `AutoGrad`,
`TorchScript`, etc., to the Julia ecosystem.

## Getting Started
1. Install the package by `] add Tharrays`, or if you cloned the code
   repository and intend to build it from source, set the environment
   variable `export THARRAYS_DEV=1` and run `] build THArrays`. The
   build script will download the libtorch zip file, compile the
   shared library, and generate many Julia methods in module
   `THArrays.THC`. Without setting `THARRAYS_DEV`, the build script
   will download the pre-built binary library instead of building it
   locally.
2. Run a simple example:

   ```julia
    julia> using THArrays

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

    julia> THC.abs!(t)
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

    julia> THAD.gradient(x->sum(sin(x)+x^2), rand(3,3))
    (PyTorch.Tensor{Float64, 2}:
     2.3776  1.5465  2.0206
     1.2542  1.2081  2.1156
     2.1034  1.1568  2.2599
    [ CPUDoubleType{3,3} ]
    ,)

    julia>

   ```
   Read on the documents to learn more about THArrays.

## Features

THArrays provides:

   - `THArrays.Tensor`: PyTorch Tensor as an Array-like data type in
      Julia
   - `THArrays.THAD`: AD using PyTorch C++ backend
   - `THArrays.TrackerAD`: AD using Tracker.jl and PyTorch C++
      backend mixed, on your choice
   - `THArrays.THJIT`: using TorchScript in Julia

## The shared library

We wrap libtorch to a shared library (`libtorch_capi`) to expose
symbols that can be called by Julia's `ccall` directly. That shared
library depends on nothing but the libtorch C++ library, that is, it
does NOT depend on Julia either, so every language or platform who has
an FFI facility like Juiia's `ccall` can use it to wrap a PyTorch
library.

The files `csrc/torch_capi*` are maintianed by this project and they
are used to provide consturctors and several crucial functions of the
`Tensor` and `Scalar` types.

The files `csrc/torch_api*` are copied from project
[ocaml-torch](https://github.com/janestreet/torch) (the `src/wrapper`
directory) with a few minor modifications (remove ocaml dependency,
add a generic error handling approach, etc.).

## The auto-generated `THArrays.THC` module

As we said in the last section, we borrowed some C++ sources from the
ocaml-torch project, and these files are auto-generated (by a program
in the ocaml-torch project and based on the YAML declaration files,
for example the file
[native_functions.yaml](https://github.com/pytorch/pytorch/blob/master/aten/src/ATen/native/native_functions.yaml),
in the PyTorch project).

In this project, we use a Julia program, `src/thc/thc-generator.jl` to
generate Julia functions who call the auto-generated C/C++ functions
via `ccall`, and put them into module `THArrays.THC`
(`src/thc/thc.jl`).

Beside the functions in `THArrays.THC` module, we can find the Python
API of type `Tensor`
[here](https://pytorch.org/docs/stable/tensors.html), and extract a
list by running:

```
cat tensors.html | perl -n -e 'print "$1\n" if (m{<code class="sig-name descname">(.+)</code>.*x2192; Tensor}i);' | uniq
```

The result of this command is saved as `python-api-tensor.txt` under
this directory, if you found any convenient API in it but not in this
package, tell us and we can add it in.

Another place to find functions on `Tensor` is [the C++ API
document](https://pytorch.org/cppdocs/api/namespace_at.html#functions).

## Build with CUDA support

By default, if you install this package using Julia's package
manager(`Pkg`), it only supports Tensor on CPU. But it also supports
Tensors on CUDA GPU if you:

1. have CUDA installed on your machine
2. download libtorch with CUDA support and unzip it to the
   `csrc/libtorch` directory of this package
3. `export THARRAYS_DEV=1`
4. start Julia, run `] build THArrays`
