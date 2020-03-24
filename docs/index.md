[//]: # ( -*- mode: markdown; mode: auto-fill -*- )

# ThArrays

## The shared library

We wrap libtorch to a shared library (`libtorch_capi`) to expose
symboles that can be called using Julia's `ccall` directly. That
shared library depends on nothing but the libtorch C++ library, that
is, it does NOT depend on Julia either, so every language or platform
who has an FFI facility like Juiia's `ccall` can use it to wrap a
PyTorch library.

The files `csrc/torch_capi*` are maintianed by this project and they
are used to provide consturctors and several crucial functions of the
`Tensor` and `Scalar` types.

The files `csrc/torch_api*` are copied from project
[ocaml-torch](https://github.com/LaurentMazare/ocaml-torch) (the
`src/wrapper` directory) with a few minor modifications (remove ocaml
dependency, add a generic error handling approach, etc.).

## The auto-generated `ThArrays.ThC` module

As we said in the last section, we borrowed some C++ sources from the
ocaml-torch project, and these files are auto-generated (by a program
in the ocaml-torch project and based on the YAML declaration files,
for example the file
[native_functions.yaml](https://github.com/pytorch/pytorch/blob/master/aten/src/ATen/native/native_functions.yaml),
in the PyTorch project).

In this project, we use a Julia program, `src/thc/thc-generator.jl` to
generate Julia functions who call the auto-generated C/C++ functions
via `ccall`, and put them into module `ThArrays.ThC`
(`src/thc/thc.jl`).

Beside the functions in `ThArrays.ThC` module, we can find the Python
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
