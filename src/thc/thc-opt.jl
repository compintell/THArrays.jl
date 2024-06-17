function opt_add(self::Tensor{T, N}, other::Tensor{T, N}) where {T, N}
    outputs__ = Int[0]
    __cret = ccall((:atg_add, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                   outputs__, self.pointer, other.pointer)
    return Tensor{T, N}(Ptr{Cvoid}(outputs__[1]), nothing)
end

function opt_index_select(self::Tensor{T, N}, dim::Int64, index::Int64) where {T, N}
    ptr = ccall((:tensor_method_index_select_int64, :libtorch_capi),
                Ptr{Cvoid}, (Ptr{Cvoid}, Clonglong, Clonglong),
                self.pointer, dim, index)
    return Tensor{T, N}(ptr, nothing)
end

function opt_index_select(self::Tensor{T, N}, dim::Int64, i::Array{Int64}) where {T, N}
    return opt_index_select(self, dim, Tensor(i))
end

function opt_index_select(self::Tensor{T, N}, dim::Int64, index::Tensor) where {T, N}
    outputs__ = Int[0]
    __cret = ccall((:atg_index_select, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}),
                 outputs__, self.pointer, dim, index.pointer)
    return Tensor{T, N}(Ptr{Cvoid}(outputs__[1]), nothing)
end

function opt_reshape(self::Tensor{T}, shape_data::Array{Int64}) where T
    shape_len = length(shape_data)
    __cret = ccall((:atg_reshape, :libtorch_capi),
                 Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 self.pointer, shape_data, shape_len)
    return Tensor{T, shape_len}(__cret, nothing)
end
