# TorchScript Support: `ThArrays.ThJIT`

Currently we have a limit support to the PyTorch JIT (TorchScript):

```julia
using ThArrays

script = """
def main(a, b):
    return a + b
"""
cu = ThJIT.compile(script)

ta = Tensor(rand(3, 2))
tb = Tensor(rand(3, 2))

res = cu.main(ta, tb) # same as ta + tb

```

In the example above, we compule a piece of TorchScript to a
`CompilationUnit`, then call the `main` function in it with two
Tensors.

The current limitations includes:

- All arguments we pass to a function must be Tensors;
- The return value of the called function must be a single Tensor (not
  list or tuple of Tensors).

<!-- Local Variables: -->
<!-- mode: markdown -->
<!-- mode: auto-fill -->
<!-- End: -->
