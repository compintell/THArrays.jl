module Torch

using Libdl

export Tensor, Scalar,
    grad, backward

const PROJECT_DIR = (@__DIR__) |> dirname

function __init__()
    Libdl.dlopen(joinpath(PROJECT_DIR, "csrc/build/libtorch_capi"))
end


const TYPE_MAP = Dict{Type, Int32}(
    ### float
    Float16 => 5,
    Float32 => 6,
    Float64 => 7,
    ### bool and char
    Bool => 11,
    # Char => 1, # Char in Julia is not single byte
    ### int
    Int8 => 1,
    # UInt8 => 1,
    Int16 => 2,
    # UInt16 => 2,
    Int32 => 3,
    # UInt32 => 3,
    Int64 => 4,
    # UInt64 => 4,
    # Int128 => ?,
    # UInt128 => ?,
)

const REVERSE_TYPE_MAP = Dict(reverse(p) for p in TYPE_MAP)

include("tensor.jl")
include("scalar.jl")
include("autogen-methods.jl")

end
