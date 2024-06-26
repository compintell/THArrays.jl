module THJIT

using ..THArrays

mutable struct CompilationUnit
    mod::Ptr{Nothing}
    owner::Ptr{Nothing}

    function CompilationUnit(m::Ptr{Nothing}, o::Ptr{Nothing})
        ret = new(m, o)
        finalizer(ret) do cu
            ccall((:cunit_destroy, :libtorch_capi),
                  Cvoid, (Ptr{Cvoid},),
                  cu.owner)
        end
    end
end

function compile(code::AbstractString)
    fields = [Ptr{Nothing}(0), Ptr{Nothing}(0)]
    cu = ccall((:cunit_compile, :libtorch_capi),
               Ptr{Cvoid}, (Ptr{Cvoid}, Cstring),
               fields, pointer(code))
    CompilationUnit(fields[1], fields[2])
end

function run_method(cu::CompilationUnit,
                    method::AbstractString,
                    args::Vararg{Tensor})
    ptrs = map(x -> x.pointer, collect(args))
    tr = ccall((:cunit_run_method, :libtorch_capi),
               Ptr{Cvoid}, (Ptr{Cvoid}, Cstring, Ptr{Cvoid}, Cint),
               cu.mod, pointer(method), ptrs, length(args))
    return THArrays.tensor_from_ptr(tr)
end


struct Function
    cu::CompilationUnit
    method::AbstractString
end

function (f::Function)(args::Vararg{Tensor})
    run_method(f.cu, f.method, args...)
end

get_method(cu::CompilationUnit, method::AbstractString) = Function(cu, method)
Base.getindex(cu::CompilationUnit, method::AbstractString) =
    Function(cu, method)
Base.getindex(cu::CompilationUnit, method::Symbol) =
    Function(cu, string(method))

function Base.getproperty(cu::CompilationUnit, p::Symbol)
    p in fieldnames(CompilationUnit) && return getfield(cu, p)
    return cu[p]
end

end
