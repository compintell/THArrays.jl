# !!! THIS FILE IS AUTO-GENERATED, PLEASE DO NOT MODIFY. !!!

module ThC
using ..ThArrays: Tensor, Scalar, TorchNumber, tensor_from_ptr


import Base.abs


"""
    abs(self::Tensor)

 Wrapper of C++ function void atg\\_abs(tensor *out\\_\\_, tensor self)
"""
function abs(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_abs, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export abs!


"""
    abs!(self::Tensor)

 Wrapper of C++ function void atg\\_abs\\_(tensor *out\\_\\_, tensor self)
"""
function abs!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_abs_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export abs_out


"""
    abs_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_abs\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function abs_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_abs_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.acos


"""
    acos(self::Tensor)

 Wrapper of C++ function void atg\\_acos(tensor *out\\_\\_, tensor self)
"""
function acos(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_acos, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export acos!


"""
    acos!(self::Tensor)

 Wrapper of C++ function void atg\\_acos\\_(tensor *out\\_\\_, tensor self)
"""
function acos!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_acos_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export acos_out


"""
    acos_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_acos\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function acos_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_acos_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export adaptive_avg_pool1d


"""
    adaptive_avg_pool1d(self::Tensor, output_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_adaptive\\_avg\\_pool1d(tensor *out\\_\\_, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len)
"""
function adaptive_avg_pool1d(self::Tensor, output_size_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_adaptive_avg_pool1d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, output_size_data, output_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export adaptive_avg_pool2d


"""
    adaptive_avg_pool2d(self::Tensor, output_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_adaptive\\_avg\\_pool2d(tensor *out\\_\\_, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len)
"""
function adaptive_avg_pool2d(self::Tensor, output_size_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_adaptive_avg_pool2d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, output_size_data, output_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export adaptive_avg_pool2d_out


"""
    adaptive_avg_pool2d_out(out::Tensor, self::Tensor, output_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_adaptive\\_avg\\_pool2d\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len)
"""
function adaptive_avg_pool2d_out(out::Tensor, self::Tensor, output_size_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_adaptive_avg_pool2d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, output_size_data, output_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export adaptive_avg_pool3d


"""
    adaptive_avg_pool3d(self::Tensor, output_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_adaptive\\_avg\\_pool3d(tensor *out\\_\\_, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len)
"""
function adaptive_avg_pool3d(self::Tensor, output_size_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_adaptive_avg_pool3d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, output_size_data, output_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export adaptive_avg_pool3d_backward


"""
    adaptive_avg_pool3d_backward(grad_output::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_adaptive\\_avg\\_pool3d\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self)
"""
function adaptive_avg_pool3d_backward(grad_output::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_adaptive_avg_pool3d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_output.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export adaptive_avg_pool3d_backward_out


"""
    adaptive_avg_pool3d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_adaptive\\_avg\\_pool3d\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self)
"""
function adaptive_avg_pool3d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_adaptive_avg_pool3d_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export adaptive_avg_pool3d_out


"""
    adaptive_avg_pool3d_out(out::Tensor, self::Tensor, output_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_adaptive\\_avg\\_pool3d\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len)
"""
function adaptive_avg_pool3d_out(out::Tensor, self::Tensor, output_size_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_adaptive_avg_pool3d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, output_size_data, output_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export adaptive_max_pool1d


"""
    adaptive_max_pool1d(self::Tensor, output_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_adaptive\\_max\\_pool1d(tensor *out\\_\\_, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len)
"""
function adaptive_max_pool1d(self::Tensor, output_size_data::Array{Int64})
    outputs__ = Int[0, 0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_adaptive_max_pool1d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, output_size_data, output_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export adaptive_max_pool2d


"""
    adaptive_max_pool2d(self::Tensor, output_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_adaptive\\_max\\_pool2d(tensor *out\\_\\_, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len)
"""
function adaptive_max_pool2d(self::Tensor, output_size_data::Array{Int64})
    outputs__ = Int[0, 0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_adaptive_max_pool2d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, output_size_data, output_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export adaptive_max_pool2d_backward


"""
    adaptive_max_pool2d_backward(grad_output::Tensor, self::Tensor, indices::Tensor)

 Wrapper of C++ function void atg\\_adaptive\\_max\\_pool2d\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, tensor indices)
"""
function adaptive_max_pool2d_backward(grad_output::Tensor, self::Tensor, indices::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_adaptive_max_pool2d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_output.pointer, self.pointer, indices.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export adaptive_max_pool2d_backward_out


"""
    adaptive_max_pool2d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, indices::Tensor)

 Wrapper of C++ function void atg\\_adaptive\\_max\\_pool2d\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, tensor indices)
"""
function adaptive_max_pool2d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, indices::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_adaptive_max_pool2d_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, indices.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export adaptive_max_pool2d_out


"""
    adaptive_max_pool2d_out(out::Tensor, indices::Tensor, self::Tensor, output_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_adaptive\\_max\\_pool2d\\_out(tensor *out\\_\\_, tensor out, tensor indices, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len)
"""
function adaptive_max_pool2d_out(out::Tensor, indices::Tensor, self::Tensor, output_size_data::Array{Int64})
    outputs__ = Int[0, 0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_adaptive_max_pool2d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, indices.pointer, self.pointer, output_size_data, output_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export adaptive_max_pool3d


"""
    adaptive_max_pool3d(self::Tensor, output_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_adaptive\\_max\\_pool3d(tensor *out\\_\\_, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len)
"""
function adaptive_max_pool3d(self::Tensor, output_size_data::Array{Int64})
    outputs__ = Int[0, 0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_adaptive_max_pool3d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, output_size_data, output_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export adaptive_max_pool3d_backward


"""
    adaptive_max_pool3d_backward(grad_output::Tensor, self::Tensor, indices::Tensor)

 Wrapper of C++ function void atg\\_adaptive\\_max\\_pool3d\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, tensor indices)
"""
function adaptive_max_pool3d_backward(grad_output::Tensor, self::Tensor, indices::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_adaptive_max_pool3d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_output.pointer, self.pointer, indices.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export adaptive_max_pool3d_backward_out


"""
    adaptive_max_pool3d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, indices::Tensor)

 Wrapper of C++ function void atg\\_adaptive\\_max\\_pool3d\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, tensor indices)
"""
function adaptive_max_pool3d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, indices::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_adaptive_max_pool3d_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, indices.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export adaptive_max_pool3d_out


"""
    adaptive_max_pool3d_out(out::Tensor, indices::Tensor, self::Tensor, output_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_adaptive\\_max\\_pool3d\\_out(tensor *out\\_\\_, tensor out, tensor indices, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len)
"""
function adaptive_max_pool3d_out(out::Tensor, indices::Tensor, self::Tensor, output_size_data::Array{Int64})
    outputs__ = Int[0, 0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_adaptive_max_pool3d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, indices.pointer, self.pointer, output_size_data, output_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export add


"""
    add(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_add(tensor *out\\_\\_, tensor self, tensor other)
"""
function add(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_add, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export add1


"""
    add1(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_add1(tensor *out\\_\\_, tensor self, scalar other)
"""
function add1(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_add1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export add!


"""
    add!(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_add\\_(tensor *out\\_\\_, tensor self, tensor other)
"""
function add!(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_add_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export add1!


"""
    add1!(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_add\\_1(tensor *out\\_\\_, tensor self, scalar other)
"""
function add1!(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_add_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export add_out


"""
    add_out(out::Tensor, self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_add\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor other)
"""
function add_out(out::Tensor, self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_add_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export addbmm


"""
    addbmm(self::Tensor, batch1::Tensor, batch2::Tensor)

 Wrapper of C++ function void atg\\_addbmm(tensor *out\\_\\_, tensor self, tensor batch1, tensor batch2)
"""
function addbmm(self::Tensor, batch1::Tensor, batch2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_addbmm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, batch1.pointer, batch2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export addbmm!


"""
    addbmm!(self::Tensor, batch1::Tensor, batch2::Tensor)

 Wrapper of C++ function void atg\\_addbmm\\_(tensor *out\\_\\_, tensor self, tensor batch1, tensor batch2)
"""
function addbmm!(self::Tensor, batch1::Tensor, batch2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_addbmm_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, batch1.pointer, batch2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export addbmm_out


"""
    addbmm_out(out::Tensor, self::Tensor, batch1::Tensor, batch2::Tensor)

 Wrapper of C++ function void atg\\_addbmm\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor batch1, tensor batch2)
"""
function addbmm_out(out::Tensor, self::Tensor, batch1::Tensor, batch2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_addbmm_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, batch1.pointer, batch2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export addcdiv


"""
    addcdiv(self::Tensor, tensor1::Tensor, tensor2::Tensor)

 Wrapper of C++ function void atg\\_addcdiv(tensor *out\\_\\_, tensor self, tensor tensor1, tensor tensor2)
"""
function addcdiv(self::Tensor, tensor1::Tensor, tensor2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_addcdiv, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, tensor1.pointer, tensor2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export addcdiv!


"""
    addcdiv!(self::Tensor, tensor1::Tensor, tensor2::Tensor)

 Wrapper of C++ function void atg\\_addcdiv\\_(tensor *out\\_\\_, tensor self, tensor tensor1, tensor tensor2)
"""
function addcdiv!(self::Tensor, tensor1::Tensor, tensor2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_addcdiv_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, tensor1.pointer, tensor2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export addcdiv_out


"""
    addcdiv_out(out::Tensor, self::Tensor, tensor1::Tensor, tensor2::Tensor)

 Wrapper of C++ function void atg\\_addcdiv\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor tensor1, tensor tensor2)
"""
function addcdiv_out(out::Tensor, self::Tensor, tensor1::Tensor, tensor2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_addcdiv_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, tensor1.pointer, tensor2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export addcmul


"""
    addcmul(self::Tensor, tensor1::Tensor, tensor2::Tensor)

 Wrapper of C++ function void atg\\_addcmul(tensor *out\\_\\_, tensor self, tensor tensor1, tensor tensor2)
"""
function addcmul(self::Tensor, tensor1::Tensor, tensor2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_addcmul, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, tensor1.pointer, tensor2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export addcmul!


"""
    addcmul!(self::Tensor, tensor1::Tensor, tensor2::Tensor)

 Wrapper of C++ function void atg\\_addcmul\\_(tensor *out\\_\\_, tensor self, tensor tensor1, tensor tensor2)
"""
function addcmul!(self::Tensor, tensor1::Tensor, tensor2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_addcmul_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, tensor1.pointer, tensor2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export addcmul_out


"""
    addcmul_out(out::Tensor, self::Tensor, tensor1::Tensor, tensor2::Tensor)

 Wrapper of C++ function void atg\\_addcmul\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor tensor1, tensor tensor2)
"""
function addcmul_out(out::Tensor, self::Tensor, tensor1::Tensor, tensor2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_addcmul_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, tensor1.pointer, tensor2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export addmm


"""
    addmm(self::Tensor, mat1::Tensor, mat2::Tensor)

 Wrapper of C++ function void atg\\_addmm(tensor *out\\_\\_, tensor self, tensor mat1, tensor mat2)
"""
function addmm(self::Tensor, mat1::Tensor, mat2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_addmm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, mat1.pointer, mat2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export addmm!


"""
    addmm!(self::Tensor, mat1::Tensor, mat2::Tensor)

 Wrapper of C++ function void atg\\_addmm\\_(tensor *out\\_\\_, tensor self, tensor mat1, tensor mat2)
"""
function addmm!(self::Tensor, mat1::Tensor, mat2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_addmm_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, mat1.pointer, mat2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export addmm_out


"""
    addmm_out(out::Tensor, self::Tensor, mat1::Tensor, mat2::Tensor)

 Wrapper of C++ function void atg\\_addmm\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor mat1, tensor mat2)
"""
function addmm_out(out::Tensor, self::Tensor, mat1::Tensor, mat2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_addmm_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, mat1.pointer, mat2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export addmv


"""
    addmv(self::Tensor, mat::Tensor, vec::Tensor)

 Wrapper of C++ function void atg\\_addmv(tensor *out\\_\\_, tensor self, tensor mat, tensor vec)
"""
function addmv(self::Tensor, mat::Tensor, vec::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_addmv, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, mat.pointer, vec.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export addmv!


"""
    addmv!(self::Tensor, mat::Tensor, vec::Tensor)

 Wrapper of C++ function void atg\\_addmv\\_(tensor *out\\_\\_, tensor self, tensor mat, tensor vec)
"""
function addmv!(self::Tensor, mat::Tensor, vec::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_addmv_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, mat.pointer, vec.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export addmv_out


"""
    addmv_out(out::Tensor, self::Tensor, mat::Tensor, vec::Tensor)

 Wrapper of C++ function void atg\\_addmv\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor mat, tensor vec)
"""
function addmv_out(out::Tensor, self::Tensor, mat::Tensor, vec::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_addmv_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, mat.pointer, vec.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export addr


"""
    addr(self::Tensor, vec1::Tensor, vec2::Tensor)

 Wrapper of C++ function void atg\\_addr(tensor *out\\_\\_, tensor self, tensor vec1, tensor vec2)
"""
function addr(self::Tensor, vec1::Tensor, vec2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_addr, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, vec1.pointer, vec2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export addr!


"""
    addr!(self::Tensor, vec1::Tensor, vec2::Tensor)

 Wrapper of C++ function void atg\\_addr\\_(tensor *out\\_\\_, tensor self, tensor vec1, tensor vec2)
"""
function addr!(self::Tensor, vec1::Tensor, vec2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_addr_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, vec1.pointer, vec2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export addr_out


"""
    addr_out(out::Tensor, self::Tensor, vec1::Tensor, vec2::Tensor)

 Wrapper of C++ function void atg\\_addr\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor vec1, tensor vec2)
"""
function addr_out(out::Tensor, self::Tensor, vec1::Tensor, vec2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_addr_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, vec1.pointer, vec2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export affine_grid_generator


"""
    affine_grid_generator(theta::Tensor, size_data::Array{Int64}, align_corners::Int)

 Wrapper of C++ function void atg\\_affine\\_grid\\_generator(tensor *out\\_\\_, tensor theta, int64\\_t *size\\_data, int size\\_len, int align\\_corners)
"""
function affine_grid_generator(theta::Tensor, size_data::Array{Int64}, align_corners::Int)
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_affine_grid_generator, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, theta.pointer, size_data, size_len, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export affine_grid_generator_backward


"""
    affine_grid_generator_backward(grad::Tensor, size_data::Array{Int64}, align_corners::Int)

 Wrapper of C++ function void atg\\_affine\\_grid\\_generator\\_backward(tensor *out\\_\\_, tensor grad, int64\\_t *size\\_data, int size\\_len, int align\\_corners)
"""
function affine_grid_generator_backward(grad::Tensor, size_data::Array{Int64}, align_corners::Int)
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_affine_grid_generator_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, grad.pointer, size_data, size_len, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export alias


"""
    alias(self::Tensor)

 Wrapper of C++ function void atg\\_alias(tensor *out\\_\\_, tensor self)
"""
function alias(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_alias, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export align_as


"""
    align_as(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_align\\_as(tensor *out\\_\\_, tensor self, tensor other)
"""
function align_as(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_align_as, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export align_tensors


"""
    align_tensors(tensors_data::Array{Tensor{T,N}})

 Wrapper of C++ function tensor *atg\\_align\\_tensors(tensor *tensors\\_data, int tensors\\_len)
"""
function align_tensors(tensors_data::Array{Tensor{T,N}}) where {T,N}
    tensors_data_ta_ = map(x->x.pointer, tensors_data)
    tensors_len = length(tensors_data)
    __cret = ccall((:atg_align_tensors, :libtorch_capi),
                 Ptr{Int}, (Ptr{Cvoid}, Cint),
                 tensors_data_ta_, tensors_len)
    ptrs__, i__ = Int[], 1
    while true
        ptr__ = unsafe_load(__cret, i__)
        ptr__ == 0 && break
        push!(ptrs__, ptr__)
        i__ += 1
    end
    ccall(:free, Cvoid, (Ptr{Cvoid},), __cret)
    return map(x -> tensor_from_ptr(Ptr{Nothing}(x)), ptrs__)
end



import Base.all


"""
    all(self::Tensor)

 Wrapper of C++ function void atg\\_all(tensor *out\\_\\_, tensor self)
"""
function all(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_all, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export all1


"""
    all1(self::Tensor, dim::Int64, keepdim::Int)

 Wrapper of C++ function void atg\\_all1(tensor *out\\_\\_, tensor self, int64\\_t dim, int keepdim)
"""
function all1(self::Tensor, dim::Int64, keepdim::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_all1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, self.pointer, dim, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export all_out


"""
    all_out(out::Tensor, self::Tensor, dim::Int64, keepdim::Int)

 Wrapper of C++ function void atg\\_all\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t dim, int keepdim)
"""
function all_out(out::Tensor, self::Tensor, dim::Int64, keepdim::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_all_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, out.pointer, self.pointer, dim, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export alpha_dropout


"""
    alpha_dropout(input::Tensor, p::Float64, train::Int)

 Wrapper of C++ function void atg\\_alpha\\_dropout(tensor *out\\_\\_, tensor input, double p, int train)
"""
function alpha_dropout(input::Tensor, p::Float64, train::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_alpha_dropout, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Cint),
                 outputs__, input.pointer, p, train)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export alpha_dropout!


"""
    alpha_dropout!(self::Tensor, p::Float64, train::Int)

 Wrapper of C++ function void atg\\_alpha\\_dropout\\_(tensor *out\\_\\_, tensor self, double p, int train)
"""
function alpha_dropout!(self::Tensor, p::Float64, train::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_alpha_dropout_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Cint),
                 outputs__, self.pointer, p, train)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.angle


"""
    angle(self::Tensor)

 Wrapper of C++ function void atg\\_angle(tensor *out\\_\\_, tensor self)
"""
function angle(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_angle, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export angle_out


"""
    angle_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_angle\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function angle_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_angle_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.any


"""
    any(self::Tensor)

 Wrapper of C++ function void atg\\_any(tensor *out\\_\\_, tensor self)
"""
function any(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_any, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export any1


"""
    any1(self::Tensor, dim::Int64, keepdim::Int)

 Wrapper of C++ function void atg\\_any1(tensor *out\\_\\_, tensor self, int64\\_t dim, int keepdim)
"""
function any1(self::Tensor, dim::Int64, keepdim::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_any1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, self.pointer, dim, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export any_out


"""
    any_out(out::Tensor, self::Tensor, dim::Int64, keepdim::Int)

 Wrapper of C++ function void atg\\_any\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t dim, int keepdim)
"""
function any_out(out::Tensor, self::Tensor, dim::Int64, keepdim::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_any_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, out.pointer, self.pointer, dim, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export arange


"""
    arange(end_::TorchNumber, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_arange(tensor *out\\_\\_, scalar end, int options\\_kind, int options\\_device)
"""
function arange(end_::TorchNumber, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    end__s_ = Scalar(end_)
    __cret = ccall((:atg_arange, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, end__s_.pointer, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export arange1


"""
    arange1(start::TorchNumber, end_::TorchNumber, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_arange1(tensor *out\\_\\_, scalar start, scalar end, int options\\_kind, int options\\_device)
"""
function arange1(start::TorchNumber, end_::TorchNumber, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    start_s_ = Scalar(start)
    end__s_ = Scalar(end_)
    __cret = ccall((:atg_arange1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, start_s_.pointer, end__s_.pointer, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export arange2


"""
    arange2(start::TorchNumber, end_::TorchNumber, step::TorchNumber, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_arange2(tensor *out\\_\\_, scalar start, scalar end, scalar step, int options\\_kind, int options\\_device)
"""
function arange2(start::TorchNumber, end_::TorchNumber, step::TorchNumber, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    start_s_ = Scalar(start)
    end__s_ = Scalar(end_)
    step_s_ = Scalar(step)
    __cret = ccall((:atg_arange2, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, start_s_.pointer, end__s_.pointer, step_s_.pointer, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export arange_out


"""
    arange_out(out::Tensor, end_::TorchNumber)

 Wrapper of C++ function void atg\\_arange\\_out(tensor *out\\_\\_, tensor out, scalar end)
"""
function arange_out(out::Tensor, end_::TorchNumber)
    outputs__ = Int[0]
    end__s_ = Scalar(end_)
    __cret = ccall((:atg_arange_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, end__s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export arange_out1


"""
    arange_out1(out::Tensor, start::TorchNumber, end_::TorchNumber)

 Wrapper of C++ function void atg\\_arange\\_out1(tensor *out\\_\\_, tensor out, scalar start, scalar end)
"""
function arange_out1(out::Tensor, start::TorchNumber, end_::TorchNumber)
    outputs__ = Int[0]
    start_s_ = Scalar(start)
    end__s_ = Scalar(end_)
    __cret = ccall((:atg_arange_out1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, start_s_.pointer, end__s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.argmax


"""
    argmax(self::Tensor, dim::Int64, keepdim::Int)

 Wrapper of C++ function void atg\\_argmax(tensor *out\\_\\_, tensor self, int64\\_t dim, int keepdim)
"""
function argmax(self::Tensor, dim::Int64, keepdim::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_argmax, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, self.pointer, dim, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.argmin


"""
    argmin(self::Tensor, dim::Int64, keepdim::Int)

 Wrapper of C++ function void atg\\_argmin(tensor *out\\_\\_, tensor self, int64\\_t dim, int keepdim)
"""
function argmin(self::Tensor, dim::Int64, keepdim::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_argmin, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, self.pointer, dim, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export argsort


"""
    argsort(self::Tensor, dim::Int64, descending::Int)

 Wrapper of C++ function void atg\\_argsort(tensor *out\\_\\_, tensor self, int64\\_t dim, int descending)
"""
function argsort(self::Tensor, dim::Int64, descending::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_argsort, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, self.pointer, dim, descending)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export as_strided


"""
    as_strided(self::Tensor, size_data::Array{Int64}, stride_data::Array{Int64}, storage_offset::Int64)

 Wrapper of C++ function void atg\\_as\\_strided(tensor *out\\_\\_, tensor self, int64\\_t *size\\_data, int size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t storage\\_offset)
"""
function as_strided(self::Tensor, size_data::Array{Int64}, stride_data::Array{Int64}, storage_offset::Int64)
    outputs__ = Int[0]
    size_len = length(size_data)
    stride_len = length(stride_data)
    __cret = ccall((:atg_as_strided, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong),
                 outputs__, self.pointer, size_data, size_len, stride_data, stride_len, storage_offset)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export as_strided!


"""
    as_strided!(self::Tensor, size_data::Array{Int64}, stride_data::Array{Int64}, storage_offset::Int64)

 Wrapper of C++ function void atg\\_as\\_strided\\_(tensor *out\\_\\_, tensor self, int64\\_t *size\\_data, int size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t storage\\_offset)
"""
function as_strided!(self::Tensor, size_data::Array{Int64}, stride_data::Array{Int64}, storage_offset::Int64)
    outputs__ = Int[0]
    size_len = length(size_data)
    stride_len = length(stride_data)
    __cret = ccall((:atg_as_strided_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong),
                 outputs__, self.pointer, size_data, size_len, stride_data, stride_len, storage_offset)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.asin


"""
    asin(self::Tensor)

 Wrapper of C++ function void atg\\_asin(tensor *out\\_\\_, tensor self)
"""
function asin(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_asin, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export asin!


"""
    asin!(self::Tensor)

 Wrapper of C++ function void atg\\_asin\\_(tensor *out\\_\\_, tensor self)
"""
function asin!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_asin_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export asin_out


"""
    asin_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_asin\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function asin_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_asin_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.atan


"""
    atan(self::Tensor)

 Wrapper of C++ function void atg\\_atan(tensor *out\\_\\_, tensor self)
"""
function atan(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_atan, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export atan2


"""
    atan2(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_atan2(tensor *out\\_\\_, tensor self, tensor other)
"""
function atan2(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_atan2, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export atan2!


"""
    atan2!(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_atan2\\_(tensor *out\\_\\_, tensor self, tensor other)
"""
function atan2!(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_atan2_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export atan2_out


"""
    atan2_out(out::Tensor, self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_atan2\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor other)
"""
function atan2_out(out::Tensor, self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_atan2_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export atan!


"""
    atan!(self::Tensor)

 Wrapper of C++ function void atg\\_atan\\_(tensor *out\\_\\_, tensor self)
"""
function atan!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_atan_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export atan_out


"""
    atan_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_atan\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function atan_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_atan_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export avg_pool1d


"""
    avg_pool1d(self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, ceil_mode::Int, count_include_pad::Int)

 Wrapper of C++ function void atg\\_avg\\_pool1d(tensor *out\\_\\_, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int ceil\\_mode, int count\\_include\\_pad)
"""
function avg_pool1d(self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, ceil_mode::Int, count_include_pad::Int)
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    __cret = ccall((:atg_avg_pool1d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, ceil_mode, count_include_pad)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export avg_pool2d


"""
    avg_pool2d(self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, ceil_mode::Int, count_include_pad::Int, divisor_override::Int64)

 Wrapper of C++ function void atg\\_avg\\_pool2d(tensor *out\\_\\_, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int ceil\\_mode, int count\\_include\\_pad, int64\\_t divisor\\_override)
"""
function avg_pool2d(self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, ceil_mode::Int, count_include_pad::Int, divisor_override::Int64)
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    __cret = ccall((:atg_avg_pool2d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint, Cint, Clonglong),
                 outputs__, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, ceil_mode, count_include_pad, divisor_override)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export avg_pool2d_backward


"""
    avg_pool2d_backward(grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, ceil_mode::Int, count_include_pad::Int, divisor_override::Int64)

 Wrapper of C++ function void atg\\_avg\\_pool2d\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int ceil\\_mode, int count\\_include\\_pad, int64\\_t divisor\\_override)
"""
function avg_pool2d_backward(grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, ceil_mode::Int, count_include_pad::Int, divisor_override::Int64)
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    __cret = ccall((:atg_avg_pool2d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint, Cint, Clonglong),
                 outputs__, grad_output.pointer, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, ceil_mode, count_include_pad, divisor_override)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export avg_pool2d_backward_out


"""
    avg_pool2d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, ceil_mode::Int, count_include_pad::Int, divisor_override::Int64)

 Wrapper of C++ function void atg\\_avg\\_pool2d\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int ceil\\_mode, int count\\_include\\_pad, int64\\_t divisor\\_override)
"""
function avg_pool2d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, ceil_mode::Int, count_include_pad::Int, divisor_override::Int64)
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    __cret = ccall((:atg_avg_pool2d_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint, Cint, Clonglong),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, ceil_mode, count_include_pad, divisor_override)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export avg_pool2d_out


"""
    avg_pool2d_out(out::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, ceil_mode::Int, count_include_pad::Int, divisor_override::Int64)

 Wrapper of C++ function void atg\\_avg\\_pool2d\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int ceil\\_mode, int count\\_include\\_pad, int64\\_t divisor\\_override)
"""
function avg_pool2d_out(out::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, ceil_mode::Int, count_include_pad::Int, divisor_override::Int64)
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    __cret = ccall((:atg_avg_pool2d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint, Cint, Clonglong),
                 outputs__, out.pointer, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, ceil_mode, count_include_pad, divisor_override)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export avg_pool3d


"""
    avg_pool3d(self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, ceil_mode::Int, count_include_pad::Int, divisor_override::Int64)

 Wrapper of C++ function void atg\\_avg\\_pool3d(tensor *out\\_\\_, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int ceil\\_mode, int count\\_include\\_pad, int64\\_t divisor\\_override)
"""
function avg_pool3d(self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, ceil_mode::Int, count_include_pad::Int, divisor_override::Int64)
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    __cret = ccall((:atg_avg_pool3d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint, Cint, Clonglong),
                 outputs__, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, ceil_mode, count_include_pad, divisor_override)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export avg_pool3d_backward


"""
    avg_pool3d_backward(grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, ceil_mode::Int, count_include_pad::Int, divisor_override::Int64)

 Wrapper of C++ function void atg\\_avg\\_pool3d\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int ceil\\_mode, int count\\_include\\_pad, int64\\_t divisor\\_override)
"""
function avg_pool3d_backward(grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, ceil_mode::Int, count_include_pad::Int, divisor_override::Int64)
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    __cret = ccall((:atg_avg_pool3d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint, Cint, Clonglong),
                 outputs__, grad_output.pointer, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, ceil_mode, count_include_pad, divisor_override)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export avg_pool3d_backward_out


"""
    avg_pool3d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, ceil_mode::Int, count_include_pad::Int, divisor_override::Int64)

 Wrapper of C++ function void atg\\_avg\\_pool3d\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int ceil\\_mode, int count\\_include\\_pad, int64\\_t divisor\\_override)
"""
function avg_pool3d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, ceil_mode::Int, count_include_pad::Int, divisor_override::Int64)
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    __cret = ccall((:atg_avg_pool3d_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint, Cint, Clonglong),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, ceil_mode, count_include_pad, divisor_override)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export avg_pool3d_out


"""
    avg_pool3d_out(out::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, ceil_mode::Int, count_include_pad::Int, divisor_override::Int64)

 Wrapper of C++ function void atg\\_avg\\_pool3d\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int ceil\\_mode, int count\\_include\\_pad, int64\\_t divisor\\_override)
"""
function avg_pool3d_out(out::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, ceil_mode::Int, count_include_pad::Int, divisor_override::Int64)
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    __cret = ccall((:atg_avg_pool3d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint, Cint, Clonglong),
                 outputs__, out.pointer, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, ceil_mode, count_include_pad, divisor_override)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export baddbmm


"""
    baddbmm(self::Tensor, batch1::Tensor, batch2::Tensor)

 Wrapper of C++ function void atg\\_baddbmm(tensor *out\\_\\_, tensor self, tensor batch1, tensor batch2)
"""
function baddbmm(self::Tensor, batch1::Tensor, batch2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_baddbmm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, batch1.pointer, batch2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export baddbmm!


"""
    baddbmm!(self::Tensor, batch1::Tensor, batch2::Tensor)

 Wrapper of C++ function void atg\\_baddbmm\\_(tensor *out\\_\\_, tensor self, tensor batch1, tensor batch2)
"""
function baddbmm!(self::Tensor, batch1::Tensor, batch2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_baddbmm_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, batch1.pointer, batch2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export baddbmm_out


"""
    baddbmm_out(out::Tensor, self::Tensor, batch1::Tensor, batch2::Tensor)

 Wrapper of C++ function void atg\\_baddbmm\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor batch1, tensor batch2)
"""
function baddbmm_out(out::Tensor, self::Tensor, batch1::Tensor, batch2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_baddbmm_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, batch1.pointer, batch2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export bartlett_window


"""
    bartlett_window(window_length::Int64, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_bartlett\\_window(tensor *out\\_\\_, int64\\_t window\\_length, int options\\_kind, int options\\_device)
"""
function bartlett_window(window_length::Int64, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_bartlett_window, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Clonglong, Cint, Cint),
                 outputs__, window_length, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export bartlett_window1


"""
    bartlett_window1(window_length::Int64, periodic::Int, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_bartlett\\_window1(tensor *out\\_\\_, int64\\_t window\\_length, int periodic, int options\\_kind, int options\\_device)
"""
function bartlett_window1(window_length::Int64, periodic::Int, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_bartlett_window1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Clonglong, Cint, Cint, Cint),
                 outputs__, window_length, periodic, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export batch_norm


"""
    batch_norm(input::Tensor, weight::Tensor, bias::Tensor, running_mean::Tensor, running_var::Tensor, training::Int, momentum::Float64, eps::Float64, cudnn_enabled::Int)

 Wrapper of C++ function void atg\\_batch\\_norm(tensor *out\\_\\_, tensor input, tensor weight, tensor bias, tensor running\\_mean, tensor running\\_var, int training, double momentum, double eps, int cudnn\\_enabled)
"""
function batch_norm(input::Tensor, weight::Tensor, bias::Tensor, running_mean::Tensor, running_var::Tensor, training::Int, momentum::Float64, eps::Float64, cudnn_enabled::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_batch_norm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cdouble, Cdouble, Cint),
                 outputs__, input.pointer, weight.pointer, bias.pointer, running_mean.pointer, running_var.pointer, training, momentum, eps, cudnn_enabled)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export batch_norm_backward_elemt


"""
    batch_norm_backward_elemt(grad_out::Tensor, input::Tensor, mean::Tensor, invstd::Tensor, weight::Tensor, mean_dy::Tensor, mean_dy_xmu::Tensor)

 Wrapper of C++ function void atg\\_batch\\_norm\\_backward\\_elemt(tensor *out\\_\\_, tensor grad\\_out, tensor input, tensor mean, tensor invstd, tensor weight, tensor mean\\_dy, tensor mean\\_dy\\_xmu)
"""
function batch_norm_backward_elemt(grad_out::Tensor, input::Tensor, mean::Tensor, invstd::Tensor, weight::Tensor, mean_dy::Tensor, mean_dy_xmu::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_batch_norm_backward_elemt, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_out.pointer, input.pointer, mean.pointer, invstd.pointer, weight.pointer, mean_dy.pointer, mean_dy_xmu.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export batch_norm_backward_reduce


"""
    batch_norm_backward_reduce(grad_out::Tensor, input::Tensor, mean::Tensor, invstd::Tensor, weight::Tensor, input_g::Int, weight_g::Int, bias_g::Int)

 Wrapper of C++ function void atg\\_batch\\_norm\\_backward\\_reduce(tensor *out\\_\\_, tensor grad\\_out, tensor input, tensor mean, tensor invstd, tensor weight, int input\\_g, int weight\\_g, int bias\\_g)
"""
function batch_norm_backward_reduce(grad_out::Tensor, input::Tensor, mean::Tensor, invstd::Tensor, weight::Tensor, input_g::Int, weight_g::Int, bias_g::Int)
    outputs__ = Int[0, 0, 0, 0]
    __cret = ccall((:atg_batch_norm_backward_reduce, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, grad_out.pointer, input.pointer, mean.pointer, invstd.pointer, weight.pointer, input_g, weight_g, bias_g)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    __o_3 = tensor_from_ptr(Ptr{Cvoid}(outputs__[3]))
    __o_4 = tensor_from_ptr(Ptr{Cvoid}(outputs__[4]))
    return __o_1, __o_2, __o_3, __o_4
end



export batch_norm_elemt


"""
    batch_norm_elemt(input::Tensor, weight::Tensor, bias::Tensor, mean::Tensor, invstd::Tensor, eps::Float64)

 Wrapper of C++ function void atg\\_batch\\_norm\\_elemt(tensor *out\\_\\_, tensor input, tensor weight, tensor bias, tensor mean, tensor invstd, double eps)
"""
function batch_norm_elemt(input::Tensor, weight::Tensor, bias::Tensor, mean::Tensor, invstd::Tensor, eps::Float64)
    outputs__ = Int[0]
    __cret = ccall((:atg_batch_norm_elemt, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cdouble),
                 outputs__, input.pointer, weight.pointer, bias.pointer, mean.pointer, invstd.pointer, eps)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export batch_norm_elemt_out


"""
    batch_norm_elemt_out(out::Tensor, input::Tensor, weight::Tensor, bias::Tensor, mean::Tensor, invstd::Tensor, eps::Float64)

 Wrapper of C++ function void atg\\_batch\\_norm\\_elemt\\_out(tensor *out\\_\\_, tensor out, tensor input, tensor weight, tensor bias, tensor mean, tensor invstd, double eps)
"""
function batch_norm_elemt_out(out::Tensor, input::Tensor, weight::Tensor, bias::Tensor, mean::Tensor, invstd::Tensor, eps::Float64)
    outputs__ = Int[0]
    __cret = ccall((:atg_batch_norm_elemt_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cdouble),
                 outputs__, out.pointer, input.pointer, weight.pointer, bias.pointer, mean.pointer, invstd.pointer, eps)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export batch_norm_gather_stats


"""
    batch_norm_gather_stats(input::Tensor, mean::Tensor, invstd::Tensor, running_mean::Tensor, running_var::Tensor, momentum::Float64, eps::Float64, count::Int64)

 Wrapper of C++ function void atg\\_batch\\_norm\\_gather\\_stats(tensor *out\\_\\_, tensor input, tensor mean, tensor invstd, tensor running\\_mean, tensor running\\_var, double momentum, double eps, int64\\_t count)
"""
function batch_norm_gather_stats(input::Tensor, mean::Tensor, invstd::Tensor, running_mean::Tensor, running_var::Tensor, momentum::Float64, eps::Float64, count::Int64)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_batch_norm_gather_stats, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Cdouble, Clonglong),
                 outputs__, input.pointer, mean.pointer, invstd.pointer, running_mean.pointer, running_var.pointer, momentum, eps, count)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export batch_norm_gather_stats_with_counts


"""
    batch_norm_gather_stats_with_counts(input::Tensor, mean::Tensor, invstd::Tensor, running_mean::Tensor, running_var::Tensor, momentum::Float64, eps::Float64, counts_data::Array{Int64})

 Wrapper of C++ function void atg\\_batch\\_norm\\_gather\\_stats\\_with\\_counts(tensor *out\\_\\_, tensor input, tensor mean, tensor invstd, tensor running\\_mean, tensor running\\_var, double momentum, double eps, int64\\_t *counts\\_data, int counts\\_len)
"""
function batch_norm_gather_stats_with_counts(input::Tensor, mean::Tensor, invstd::Tensor, running_mean::Tensor, running_var::Tensor, momentum::Float64, eps::Float64, counts_data::Array{Int64})
    outputs__ = Int[0, 0]
    counts_len = length(counts_data)
    __cret = ccall((:atg_batch_norm_gather_stats_with_counts, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Cdouble, Ptr{Cvoid}, Cint),
                 outputs__, input.pointer, mean.pointer, invstd.pointer, running_mean.pointer, running_var.pointer, momentum, eps, counts_data, counts_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export batch_norm_stats


"""
    batch_norm_stats(input::Tensor, eps::Float64)

 Wrapper of C++ function void atg\\_batch\\_norm\\_stats(tensor *out\\_\\_, tensor input, double eps)
"""
function batch_norm_stats(input::Tensor, eps::Float64)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_batch_norm_stats, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble),
                 outputs__, input.pointer, eps)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export batch_norm_update_stats


"""
    batch_norm_update_stats(input::Tensor, running_mean::Tensor, running_var::Tensor, momentum::Float64)

 Wrapper of C++ function void atg\\_batch\\_norm\\_update\\_stats(tensor *out\\_\\_, tensor input, tensor running\\_mean, tensor running\\_var, double momentum)
"""
function batch_norm_update_stats(input::Tensor, running_mean::Tensor, running_var::Tensor, momentum::Float64)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_batch_norm_update_stats, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cdouble),
                 outputs__, input.pointer, running_mean.pointer, running_var.pointer, momentum)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export bernoulli


"""
    bernoulli(self::Tensor)

 Wrapper of C++ function void atg\\_bernoulli(tensor *out\\_\\_, tensor self)
"""
function bernoulli(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_bernoulli, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export bernoulli1


"""
    bernoulli1(self::Tensor, p::Float64)

 Wrapper of C++ function void atg\\_bernoulli1(tensor *out\\_\\_, tensor self, double p)
"""
function bernoulli1(self::Tensor, p::Float64)
    outputs__ = Int[0]
    __cret = ccall((:atg_bernoulli1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble),
                 outputs__, self.pointer, p)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export bernoulli!


"""
    bernoulli!(self::Tensor, p::Tensor)

 Wrapper of C++ function void atg\\_bernoulli\\_(tensor *out\\_\\_, tensor self, tensor p)
"""
function bernoulli!(self::Tensor, p::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_bernoulli_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, p.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export bernoulli1!


"""
    bernoulli1!(self::Tensor, p::Float64)

 Wrapper of C++ function void atg\\_bernoulli\\_1(tensor *out\\_\\_, tensor self, double p)
"""
function bernoulli1!(self::Tensor, p::Float64)
    outputs__ = Int[0]
    __cret = ccall((:atg_bernoulli_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble),
                 outputs__, self.pointer, p)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export bernoulli_out


"""
    bernoulli_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_bernoulli\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function bernoulli_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_bernoulli_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export bilinear


"""
    bilinear(input1::Tensor, input2::Tensor, weight::Tensor, bias::Tensor)

 Wrapper of C++ function void atg\\_bilinear(tensor *out\\_\\_, tensor input1, tensor input2, tensor weight, tensor bias)
"""
function bilinear(input1::Tensor, input2::Tensor, weight::Tensor, bias::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_bilinear, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, input1.pointer, input2.pointer, weight.pointer, bias.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export binary_cross_entropy


"""
    binary_cross_entropy(self::Tensor, target::Tensor, weight::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_binary\\_cross\\_entropy(tensor *out\\_\\_, tensor self, tensor target, tensor weight, int64\\_t reduction)
"""
function binary_cross_entropy(self::Tensor, target::Tensor, weight::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_binary_cross_entropy, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, target.pointer, weight.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export binary_cross_entropy_backward


"""
    binary_cross_entropy_backward(grad_output::Tensor, self::Tensor, target::Tensor, weight::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_binary\\_cross\\_entropy\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, tensor target, tensor weight, int64\\_t reduction)
"""
function binary_cross_entropy_backward(grad_output::Tensor, self::Tensor, target::Tensor, weight::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_binary_cross_entropy_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, grad_output.pointer, self.pointer, target.pointer, weight.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export binary_cross_entropy_backward_out


"""
    binary_cross_entropy_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, target::Tensor, weight::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_binary\\_cross\\_entropy\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, tensor target, tensor weight, int64\\_t reduction)
"""
function binary_cross_entropy_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, target::Tensor, weight::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_binary_cross_entropy_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, target.pointer, weight.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export binary_cross_entropy_out


"""
    binary_cross_entropy_out(out::Tensor, self::Tensor, target::Tensor, weight::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_binary\\_cross\\_entropy\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor target, tensor weight, int64\\_t reduction)
"""
function binary_cross_entropy_out(out::Tensor, self::Tensor, target::Tensor, weight::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_binary_cross_entropy_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, out.pointer, self.pointer, target.pointer, weight.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export binary_cross_entropy_with_logits


"""
    binary_cross_entropy_with_logits(self::Tensor, target::Tensor, weight::Tensor, pos_weight::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_binary\\_cross\\_entropy\\_with\\_logits(tensor *out\\_\\_, tensor self, tensor target, tensor weight, tensor pos\\_weight, int64\\_t reduction)
"""
function binary_cross_entropy_with_logits(self::Tensor, target::Tensor, weight::Tensor, pos_weight::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_binary_cross_entropy_with_logits, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, target.pointer, weight.pointer, pos_weight.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export binary_cross_entropy_with_logits_backward


"""
    binary_cross_entropy_with_logits_backward(grad_output::Tensor, self::Tensor, target::Tensor, weight::Tensor, pos_weight::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_binary\\_cross\\_entropy\\_with\\_logits\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, tensor target, tensor weight, tensor pos\\_weight, int64\\_t reduction)
"""
function binary_cross_entropy_with_logits_backward(grad_output::Tensor, self::Tensor, target::Tensor, weight::Tensor, pos_weight::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_binary_cross_entropy_with_logits_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, grad_output.pointer, self.pointer, target.pointer, weight.pointer, pos_weight.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export bincount


"""
    bincount(self::Tensor, weights::Tensor, minlength::Int64)

 Wrapper of C++ function void atg\\_bincount(tensor *out\\_\\_, tensor self, tensor weights, int64\\_t minlength)
"""
function bincount(self::Tensor, weights::Tensor, minlength::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_bincount, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, weights.pointer, minlength)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export bitwise_not


"""
    bitwise_not(self::Tensor)

 Wrapper of C++ function void atg\\_bitwise\\_not(tensor *out\\_\\_, tensor self)
"""
function bitwise_not(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_bitwise_not, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export bitwise_not!


"""
    bitwise_not!(self::Tensor)

 Wrapper of C++ function void atg\\_bitwise\\_not\\_(tensor *out\\_\\_, tensor self)
"""
function bitwise_not!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_bitwise_not_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export bitwise_not_out


"""
    bitwise_not_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_bitwise\\_not\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function bitwise_not_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_bitwise_not_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export bitwise_xor


"""
    bitwise_xor(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_bitwise\\_xor(tensor *out\\_\\_, tensor self, scalar other)
"""
function bitwise_xor(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_bitwise_xor, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export bitwise_xor1


"""
    bitwise_xor1(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_bitwise\\_xor1(tensor *out\\_\\_, tensor self, tensor other)
"""
function bitwise_xor1(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_bitwise_xor1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export bitwise_xor!


"""
    bitwise_xor!(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_bitwise\\_xor\\_(tensor *out\\_\\_, tensor self, scalar other)
"""
function bitwise_xor!(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_bitwise_xor_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export bitwise_xor1!


"""
    bitwise_xor1!(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_bitwise\\_xor\\_1(tensor *out\\_\\_, tensor self, tensor other)
"""
function bitwise_xor1!(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_bitwise_xor_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export bitwise_xor_out


"""
    bitwise_xor_out(out::Tensor, self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_bitwise\\_xor\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor other)
"""
function bitwise_xor_out(out::Tensor, self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_bitwise_xor_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export bitwise_xor_out1


"""
    bitwise_xor_out1(out::Tensor, self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_bitwise\\_xor\\_out1(tensor *out\\_\\_, tensor out, tensor self, scalar other)
"""
function bitwise_xor_out1(out::Tensor, self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_bitwise_xor_out1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export blackman_window


"""
    blackman_window(window_length::Int64, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_blackman\\_window(tensor *out\\_\\_, int64\\_t window\\_length, int options\\_kind, int options\\_device)
"""
function blackman_window(window_length::Int64, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_blackman_window, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Clonglong, Cint, Cint),
                 outputs__, window_length, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export blackman_window1


"""
    blackman_window1(window_length::Int64, periodic::Int, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_blackman\\_window1(tensor *out\\_\\_, int64\\_t window\\_length, int periodic, int options\\_kind, int options\\_device)
"""
function blackman_window1(window_length::Int64, periodic::Int, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_blackman_window1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Clonglong, Cint, Cint, Cint),
                 outputs__, window_length, periodic, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export bmm


"""
    bmm(self::Tensor, mat2::Tensor)

 Wrapper of C++ function void atg\\_bmm(tensor *out\\_\\_, tensor self, tensor mat2)
"""
function bmm(self::Tensor, mat2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_bmm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, mat2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export bmm_out


"""
    bmm_out(out::Tensor, self::Tensor, mat2::Tensor)

 Wrapper of C++ function void atg\\_bmm\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor mat2)
"""
function bmm_out(out::Tensor, self::Tensor, mat2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_bmm_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, mat2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export broadcast_tensors


"""
    broadcast_tensors(tensors_data::Array{Tensor{T,N}})

 Wrapper of C++ function tensor *atg\\_broadcast\\_tensors(tensor *tensors\\_data, int tensors\\_len)
"""
function broadcast_tensors(tensors_data::Array{Tensor{T,N}}) where {T,N}
    tensors_data_ta_ = map(x->x.pointer, tensors_data)
    tensors_len = length(tensors_data)
    __cret = ccall((:atg_broadcast_tensors, :libtorch_capi),
                 Ptr{Int}, (Ptr{Cvoid}, Cint),
                 tensors_data_ta_, tensors_len)
    ptrs__, i__ = Int[], 1
    while true
        ptr__ = unsafe_load(__cret, i__)
        ptr__ == 0 && break
        push!(ptrs__, ptr__)
        i__ += 1
    end
    ccall(:free, Cvoid, (Ptr{Cvoid},), __cret)
    return map(x -> tensor_from_ptr(Ptr{Nothing}(x)), ptrs__)
end



export cartesian_prod


"""
    cartesian_prod(tensors_data::Array{Tensor{T,N}})

 Wrapper of C++ function void atg\\_cartesian\\_prod(tensor *out\\_\\_, tensor *tensors\\_data, int tensors\\_len)
"""
function cartesian_prod(tensors_data::Array{Tensor{T,N}}) where {T,N}
    outputs__ = Int[0]
    tensors_data_ta_ = map(x->x.pointer, tensors_data)
    tensors_len = length(tensors_data)
    __cret = ccall((:atg_cartesian_prod, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, tensors_data_ta_, tensors_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.cat


"""
    cat(tensors_data::Array{Tensor{T,N}}, dim::Int64)

 Wrapper of C++ function void atg\\_cat(tensor *out\\_\\_, tensor *tensors\\_data, int tensors\\_len, int64\\_t dim)
"""
function cat(tensors_data::Array{Tensor{T,N}}, dim::Int64) where {T,N}
    outputs__ = Int[0]
    tensors_data_ta_ = map(x->x.pointer, tensors_data)
    tensors_len = length(tensors_data)
    __cret = ccall((:atg_cat, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Clonglong),
                 outputs__, tensors_data_ta_, tensors_len, dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cat_out


"""
    cat_out(out::Tensor, tensors_data::Array{Tensor{T,N}}, dim::Int64)

 Wrapper of C++ function void atg\\_cat\\_out(tensor *out\\_\\_, tensor out, tensor *tensors\\_data, int tensors\\_len, int64\\_t dim)
"""
function cat_out(out::Tensor, tensors_data::Array{Tensor{T,N}}, dim::Int64) where {T,N}
    outputs__ = Int[0]
    tensors_data_ta_ = map(x->x.pointer, tensors_data)
    tensors_len = length(tensors_data)
    __cret = ccall((:atg_cat_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Clonglong),
                 outputs__, out.pointer, tensors_data_ta_, tensors_len, dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cauchy!


"""
    cauchy!(self::Tensor, median::Float64, sigma::Float64)

 Wrapper of C++ function void atg\\_cauchy\\_(tensor *out\\_\\_, tensor self, double median, double sigma)
"""
function cauchy!(self::Tensor, median::Float64, sigma::Float64)
    outputs__ = Int[0]
    __cret = ccall((:atg_cauchy_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Cdouble),
                 outputs__, self.pointer, median, sigma)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cdist


"""
    cdist(x1::Tensor, x2::Tensor, p::Float64, compute_mode::Int64)

 Wrapper of C++ function void atg\\_cdist(tensor *out\\_\\_, tensor x1, tensor x2, double p, int64\\_t compute\\_mode)
"""
function cdist(x1::Tensor, x2::Tensor, p::Float64, compute_mode::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_cdist, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Clonglong),
                 outputs__, x1.pointer, x2.pointer, p, compute_mode)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.ceil


"""
    ceil(self::Tensor)

 Wrapper of C++ function void atg\\_ceil(tensor *out\\_\\_, tensor self)
"""
function ceil(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_ceil, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ceil!


"""
    ceil!(self::Tensor)

 Wrapper of C++ function void atg\\_ceil\\_(tensor *out\\_\\_, tensor self)
"""
function ceil!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_ceil_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ceil_out


"""
    ceil_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_ceil\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function ceil_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_ceil_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export celu


"""
    celu(self::Tensor)

 Wrapper of C++ function void atg\\_celu(tensor *out\\_\\_, tensor self)
"""
function celu(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_celu, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export celu!


"""
    celu!(self::Tensor)

 Wrapper of C++ function void atg\\_celu\\_(tensor *out\\_\\_, tensor self)
"""
function celu!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_celu_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export chain_matmul


"""
    chain_matmul(matrices_data::Array{Tensor{T,N}})

 Wrapper of C++ function void atg\\_chain\\_matmul(tensor *out\\_\\_, tensor *matrices\\_data, int matrices\\_len)
"""
function chain_matmul(matrices_data::Array{Tensor{T,N}}) where {T,N}
    outputs__ = Int[0]
    matrices_data_ta_ = map(x->x.pointer, matrices_data)
    matrices_len = length(matrices_data)
    __cret = ccall((:atg_chain_matmul, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, matrices_data_ta_, matrices_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cholesky


"""
    cholesky(self::Tensor, upper::Int)

 Wrapper of C++ function void atg\\_cholesky(tensor *out\\_\\_, tensor self, int upper)
"""
function cholesky(self::Tensor, upper::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_cholesky, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, upper)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cholesky_inverse


"""
    cholesky_inverse(self::Tensor, upper::Int)

 Wrapper of C++ function void atg\\_cholesky\\_inverse(tensor *out\\_\\_, tensor self, int upper)
"""
function cholesky_inverse(self::Tensor, upper::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_cholesky_inverse, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, upper)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cholesky_inverse_out


"""
    cholesky_inverse_out(out::Tensor, self::Tensor, upper::Int)

 Wrapper of C++ function void atg\\_cholesky\\_inverse\\_out(tensor *out\\_\\_, tensor out, tensor self, int upper)
"""
function cholesky_inverse_out(out::Tensor, self::Tensor, upper::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_cholesky_inverse_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, upper)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cholesky_out


"""
    cholesky_out(out::Tensor, self::Tensor, upper::Int)

 Wrapper of C++ function void atg\\_cholesky\\_out(tensor *out\\_\\_, tensor out, tensor self, int upper)
"""
function cholesky_out(out::Tensor, self::Tensor, upper::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_cholesky_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, upper)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cholesky_solve


"""
    cholesky_solve(self::Tensor, input2::Tensor, upper::Int)

 Wrapper of C++ function void atg\\_cholesky\\_solve(tensor *out\\_\\_, tensor self, tensor input2, int upper)
"""
function cholesky_solve(self::Tensor, input2::Tensor, upper::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_cholesky_solve, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, input2.pointer, upper)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cholesky_solve_out


"""
    cholesky_solve_out(out::Tensor, self::Tensor, input2::Tensor, upper::Int)

 Wrapper of C++ function void atg\\_cholesky\\_solve\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor input2, int upper)
"""
function cholesky_solve_out(out::Tensor, self::Tensor, input2::Tensor, upper::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_cholesky_solve_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, input2.pointer, upper)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export chunk


"""
    chunk(self::Tensor, chunks::Int64, dim::Int64)

 Wrapper of C++ function tensor *atg\\_chunk(tensor self, int64\\_t chunks, int64\\_t dim)
"""
function chunk(self::Tensor, chunks::Int64, dim::Int64)

    __cret = ccall((:atg_chunk, :libtorch_capi),
                 Ptr{Int}, (Ptr{Cvoid}, Clonglong, Clonglong),
                 self.pointer, chunks, dim)
    ptrs__, i__ = Int[], 1
    while true
        ptr__ = unsafe_load(__cret, i__)
        ptr__ == 0 && break
        push!(ptrs__, ptr__)
        i__ += 1
    end
    ccall(:free, Cvoid, (Ptr{Cvoid},), __cret)
    return map(x -> tensor_from_ptr(Ptr{Nothing}(x)), ptrs__)
end



import Base.clamp


"""
    clamp(self::Tensor, min::TorchNumber, max::TorchNumber)

 Wrapper of C++ function void atg\\_clamp(tensor *out\\_\\_, tensor self, scalar min, scalar max)
"""
function clamp(self::Tensor, min::TorchNumber, max::TorchNumber)
    outputs__ = Int[0]
    min_s_ = Scalar(min)
    max_s_ = Scalar(max)
    __cret = ccall((:atg_clamp, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, min_s_.pointer, max_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.clamp!


"""
    clamp!(self::Tensor, min::TorchNumber, max::TorchNumber)

 Wrapper of C++ function void atg\\_clamp\\_(tensor *out\\_\\_, tensor self, scalar min, scalar max)
"""
function clamp!(self::Tensor, min::TorchNumber, max::TorchNumber)
    outputs__ = Int[0]
    min_s_ = Scalar(min)
    max_s_ = Scalar(max)
    __cret = ccall((:atg_clamp_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, min_s_.pointer, max_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export clamp_max


"""
    clamp_max(self::Tensor, max::TorchNumber)

 Wrapper of C++ function void atg\\_clamp\\_max(tensor *out\\_\\_, tensor self, scalar max)
"""
function clamp_max(self::Tensor, max::TorchNumber)
    outputs__ = Int[0]
    max_s_ = Scalar(max)
    __cret = ccall((:atg_clamp_max, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, max_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export clamp_max!


"""
    clamp_max!(self::Tensor, max::TorchNumber)

 Wrapper of C++ function void atg\\_clamp\\_max\\_(tensor *out\\_\\_, tensor self, scalar max)
"""
function clamp_max!(self::Tensor, max::TorchNumber)
    outputs__ = Int[0]
    max_s_ = Scalar(max)
    __cret = ccall((:atg_clamp_max_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, max_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export clamp_max_out


"""
    clamp_max_out(out::Tensor, self::Tensor, max::TorchNumber)

 Wrapper of C++ function void atg\\_clamp\\_max\\_out(tensor *out\\_\\_, tensor out, tensor self, scalar max)
"""
function clamp_max_out(out::Tensor, self::Tensor, max::TorchNumber)
    outputs__ = Int[0]
    max_s_ = Scalar(max)
    __cret = ccall((:atg_clamp_max_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, max_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export clamp_min


"""
    clamp_min(self::Tensor, min::TorchNumber)

 Wrapper of C++ function void atg\\_clamp\\_min(tensor *out\\_\\_, tensor self, scalar min)
"""
function clamp_min(self::Tensor, min::TorchNumber)
    outputs__ = Int[0]
    min_s_ = Scalar(min)
    __cret = ccall((:atg_clamp_min, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, min_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export clamp_min!


"""
    clamp_min!(self::Tensor, min::TorchNumber)

 Wrapper of C++ function void atg\\_clamp\\_min\\_(tensor *out\\_\\_, tensor self, scalar min)
"""
function clamp_min!(self::Tensor, min::TorchNumber)
    outputs__ = Int[0]
    min_s_ = Scalar(min)
    __cret = ccall((:atg_clamp_min_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, min_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export clamp_min_out


"""
    clamp_min_out(out::Tensor, self::Tensor, min::TorchNumber)

 Wrapper of C++ function void atg\\_clamp\\_min\\_out(tensor *out\\_\\_, tensor out, tensor self, scalar min)
"""
function clamp_min_out(out::Tensor, self::Tensor, min::TorchNumber)
    outputs__ = Int[0]
    min_s_ = Scalar(min)
    __cret = ccall((:atg_clamp_min_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, min_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export clamp_out


"""
    clamp_out(out::Tensor, self::Tensor, min::TorchNumber, max::TorchNumber)

 Wrapper of C++ function void atg\\_clamp\\_out(tensor *out\\_\\_, tensor out, tensor self, scalar min, scalar max)
"""
function clamp_out(out::Tensor, self::Tensor, min::TorchNumber, max::TorchNumber)
    outputs__ = Int[0]
    min_s_ = Scalar(min)
    max_s_ = Scalar(max)
    __cret = ccall((:atg_clamp_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, min_s_.pointer, max_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export clone


"""
    clone(self::Tensor)

 Wrapper of C++ function void atg\\_clone(tensor *out\\_\\_, tensor self)
"""
function clone(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_clone, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.coalesce


"""
    coalesce(self::Tensor)

 Wrapper of C++ function void atg\\_coalesce(tensor *out\\_\\_, tensor self)
"""
function coalesce(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_coalesce, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export col2im


"""
    col2im(self::Tensor, output_size_data::Array{Int64}, kernel_size_data::Array{Int64}, dilation_data::Array{Int64}, padding_data::Array{Int64}, stride_data::Array{Int64})

 Wrapper of C++ function void atg\\_col2im(tensor *out\\_\\_, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len)
"""
function col2im(self::Tensor, output_size_data::Array{Int64}, kernel_size_data::Array{Int64}, dilation_data::Array{Int64}, padding_data::Array{Int64}, stride_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    kernel_size_len = length(kernel_size_data)
    dilation_len = length(dilation_data)
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    __cret = ccall((:atg_col2im, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, output_size_data, output_size_len, kernel_size_data, kernel_size_len, dilation_data, dilation_len, padding_data, padding_len, stride_data, stride_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export col2im_backward


"""
    col2im_backward(grad_output::Tensor, kernel_size_data::Array{Int64}, dilation_data::Array{Int64}, padding_data::Array{Int64}, stride_data::Array{Int64})

 Wrapper of C++ function void atg\\_col2im\\_backward(tensor *out\\_\\_, tensor grad\\_output, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len)
"""
function col2im_backward(grad_output::Tensor, kernel_size_data::Array{Int64}, dilation_data::Array{Int64}, padding_data::Array{Int64}, stride_data::Array{Int64})
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    dilation_len = length(dilation_data)
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    __cret = ccall((:atg_col2im_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, grad_output.pointer, kernel_size_data, kernel_size_len, dilation_data, dilation_len, padding_data, padding_len, stride_data, stride_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export col2im_backward_out


"""
    col2im_backward_out(grad_input::Tensor, grad_output::Tensor, kernel_size_data::Array{Int64}, dilation_data::Array{Int64}, padding_data::Array{Int64}, stride_data::Array{Int64})

 Wrapper of C++ function void atg\\_col2im\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len)
"""
function col2im_backward_out(grad_input::Tensor, grad_output::Tensor, kernel_size_data::Array{Int64}, dilation_data::Array{Int64}, padding_data::Array{Int64}, stride_data::Array{Int64})
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    dilation_len = length(dilation_data)
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    __cret = ccall((:atg_col2im_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, grad_input.pointer, grad_output.pointer, kernel_size_data, kernel_size_len, dilation_data, dilation_len, padding_data, padding_len, stride_data, stride_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export col2im_out


"""
    col2im_out(out::Tensor, self::Tensor, output_size_data::Array{Int64}, kernel_size_data::Array{Int64}, dilation_data::Array{Int64}, padding_data::Array{Int64}, stride_data::Array{Int64})

 Wrapper of C++ function void atg\\_col2im\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len)
"""
function col2im_out(out::Tensor, self::Tensor, output_size_data::Array{Int64}, kernel_size_data::Array{Int64}, dilation_data::Array{Int64}, padding_data::Array{Int64}, stride_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    kernel_size_len = length(kernel_size_data)
    dilation_len = length(dilation_data)
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    __cret = ccall((:atg_col2im_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, output_size_data, output_size_len, kernel_size_data, kernel_size_len, dilation_data, dilation_len, padding_data, padding_len, stride_data, stride_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export combinations


"""
    combinations(self::Tensor, r::Int64, with_replacement::Int)

 Wrapper of C++ function void atg\\_combinations(tensor *out\\_\\_, tensor self, int64\\_t r, int with\\_replacement)
"""
function combinations(self::Tensor, r::Int64, with_replacement::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_combinations, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, self.pointer, r, with_replacement)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.conj


"""
    conj(self::Tensor)

 Wrapper of C++ function void atg\\_conj(tensor *out\\_\\_, tensor self)
"""
function conj(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_conj, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export conj_out


"""
    conj_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_conj\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function conj_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_conj_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export constant_pad_nd


"""
    constant_pad_nd(self::Tensor, pad_data::Array{Int64})

 Wrapper of C++ function void atg\\_constant\\_pad\\_nd(tensor *out\\_\\_, tensor self, int64\\_t *pad\\_data, int pad\\_len)
"""
function constant_pad_nd(self::Tensor, pad_data::Array{Int64})
    outputs__ = Int[0]
    pad_len = length(pad_data)
    __cret = ccall((:atg_constant_pad_nd, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, pad_data, pad_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export contiguous


"""
    contiguous(self::Tensor)

 Wrapper of C++ function void atg\\_contiguous(tensor *out\\_\\_, tensor self)
"""
function contiguous(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_contiguous, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export conv1d


"""
    conv1d(input::Tensor, weight::Tensor, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64)

 Wrapper of C++ function void atg\\_conv1d(tensor *out\\_\\_, tensor input, tensor weight, tensor bias, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t groups)
"""
function conv1d(input::Tensor, weight::Tensor, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64)
    outputs__ = Int[0]
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_conv1d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong),
                 outputs__, input.pointer, weight.pointer, bias.pointer, stride_data, stride_len, padding_data, padding_len, dilation_data, dilation_len, groups)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export conv2d


"""
    conv2d(input::Tensor, weight::Tensor, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64)

 Wrapper of C++ function void atg\\_conv2d(tensor *out\\_\\_, tensor input, tensor weight, tensor bias, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t groups)
"""
function conv2d(input::Tensor, weight::Tensor, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64)
    outputs__ = Int[0]
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_conv2d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong),
                 outputs__, input.pointer, weight.pointer, bias.pointer, stride_data, stride_len, padding_data, padding_len, dilation_data, dilation_len, groups)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export conv3d


"""
    conv3d(input::Tensor, weight::Tensor, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64)

 Wrapper of C++ function void atg\\_conv3d(tensor *out\\_\\_, tensor input, tensor weight, tensor bias, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t groups)
"""
function conv3d(input::Tensor, weight::Tensor, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64)
    outputs__ = Int[0]
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_conv3d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong),
                 outputs__, input.pointer, weight.pointer, bias.pointer, stride_data, stride_len, padding_data, padding_len, dilation_data, dilation_len, groups)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export conv_tbc


"""
    conv_tbc(self::Tensor, weight::Tensor, bias::Tensor, pad::Int64)

 Wrapper of C++ function void atg\\_conv\\_tbc(tensor *out\\_\\_, tensor self, tensor weight, tensor bias, int64\\_t pad)
"""
function conv_tbc(self::Tensor, weight::Tensor, bias::Tensor, pad::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_conv_tbc, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, weight.pointer, bias.pointer, pad)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export conv_tbc_backward


"""
    conv_tbc_backward(self::Tensor, input::Tensor, weight::Tensor, bias::Tensor, pad::Int64)

 Wrapper of C++ function void atg\\_conv\\_tbc\\_backward(tensor *out\\_\\_, tensor self, tensor input, tensor weight, tensor bias, int64\\_t pad)
"""
function conv_tbc_backward(self::Tensor, input::Tensor, weight::Tensor, bias::Tensor, pad::Int64)
    outputs__ = Int[0, 0, 0]
    __cret = ccall((:atg_conv_tbc_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, input.pointer, weight.pointer, bias.pointer, pad)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    __o_3 = tensor_from_ptr(Ptr{Cvoid}(outputs__[3]))
    return __o_1, __o_2, __o_3
end



export conv_transpose1d


"""
    conv_transpose1d(input::Tensor, weight::Tensor, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, output_padding_data::Array{Int64}, groups::Int64, dilation_data::Array{Int64})

 Wrapper of C++ function void atg\\_conv\\_transpose1d(tensor *out\\_\\_, tensor input, tensor weight, tensor bias, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *output\\_padding\\_data, int output\\_padding\\_len, int64\\_t groups, int64\\_t *dilation\\_data, int dilation\\_len)
"""
function conv_transpose1d(input::Tensor, weight::Tensor, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, output_padding_data::Array{Int64}, groups::Int64, dilation_data::Array{Int64})
    outputs__ = Int[0]
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    output_padding_len = length(output_padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_conv_transpose1d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong, Ptr{Cvoid}, Cint),
                 outputs__, input.pointer, weight.pointer, bias.pointer, stride_data, stride_len, padding_data, padding_len, output_padding_data, output_padding_len, groups, dilation_data, dilation_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export conv_transpose2d


"""
    conv_transpose2d(input::Tensor, weight::Tensor, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, output_padding_data::Array{Int64}, groups::Int64, dilation_data::Array{Int64})

 Wrapper of C++ function void atg\\_conv\\_transpose2d(tensor *out\\_\\_, tensor input, tensor weight, tensor bias, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *output\\_padding\\_data, int output\\_padding\\_len, int64\\_t groups, int64\\_t *dilation\\_data, int dilation\\_len)
"""
function conv_transpose2d(input::Tensor, weight::Tensor, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, output_padding_data::Array{Int64}, groups::Int64, dilation_data::Array{Int64})
    outputs__ = Int[0]
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    output_padding_len = length(output_padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_conv_transpose2d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong, Ptr{Cvoid}, Cint),
                 outputs__, input.pointer, weight.pointer, bias.pointer, stride_data, stride_len, padding_data, padding_len, output_padding_data, output_padding_len, groups, dilation_data, dilation_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export conv_transpose3d


"""
    conv_transpose3d(input::Tensor, weight::Tensor, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, output_padding_data::Array{Int64}, groups::Int64, dilation_data::Array{Int64})

 Wrapper of C++ function void atg\\_conv\\_transpose3d(tensor *out\\_\\_, tensor input, tensor weight, tensor bias, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *output\\_padding\\_data, int output\\_padding\\_len, int64\\_t groups, int64\\_t *dilation\\_data, int dilation\\_len)
"""
function conv_transpose3d(input::Tensor, weight::Tensor, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, output_padding_data::Array{Int64}, groups::Int64, dilation_data::Array{Int64})
    outputs__ = Int[0]
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    output_padding_len = length(output_padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_conv_transpose3d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong, Ptr{Cvoid}, Cint),
                 outputs__, input.pointer, weight.pointer, bias.pointer, stride_data, stride_len, padding_data, padding_len, output_padding_data, output_padding_len, groups, dilation_data, dilation_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export convolution


"""
    convolution(input::Tensor, weight::Tensor, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, transposed::Int, output_padding_data::Array{Int64}, groups::Int64)

 Wrapper of C++ function void atg\\_convolution(tensor *out\\_\\_, tensor input, tensor weight, tensor bias, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int transposed, int64\\_t *output\\_padding\\_data, int output\\_padding\\_len, int64\\_t groups)
"""
function convolution(input::Tensor, weight::Tensor, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, transposed::Int, output_padding_data::Array{Int64}, groups::Int64)
    outputs__ = Int[0]
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    dilation_len = length(dilation_data)
    output_padding_len = length(output_padding_data)
    __cret = ccall((:atg_convolution, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint, Ptr{Cvoid}, Cint, Clonglong),
                 outputs__, input.pointer, weight.pointer, bias.pointer, stride_data, stride_len, padding_data, padding_len, dilation_data, dilation_len, transposed, output_padding_data, output_padding_len, groups)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export convolution_overrideable


"""
    convolution_overrideable(input::Tensor, weight::Tensor, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, transposed::Int, output_padding_data::Array{Int64}, groups::Int64)

 Wrapper of C++ function void atg\\_convolution\\_overrideable(tensor *out\\_\\_, tensor input, tensor weight, tensor bias, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int transposed, int64\\_t *output\\_padding\\_data, int output\\_padding\\_len, int64\\_t groups)
"""
function convolution_overrideable(input::Tensor, weight::Tensor, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, transposed::Int, output_padding_data::Array{Int64}, groups::Int64)
    outputs__ = Int[0]
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    dilation_len = length(dilation_data)
    output_padding_len = length(output_padding_data)
    __cret = ccall((:atg_convolution_overrideable, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint, Ptr{Cvoid}, Cint, Clonglong),
                 outputs__, input.pointer, weight.pointer, bias.pointer, stride_data, stride_len, padding_data, padding_len, dilation_data, dilation_len, transposed, output_padding_data, output_padding_len, groups)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export copy_sparse_to_sparse!


"""
    copy_sparse_to_sparse!(self::Tensor, src::Tensor, non_blocking::Int)

 Wrapper of C++ function void atg\\_copy\\_sparse\\_to\\_sparse\\_(tensor *out\\_\\_, tensor self, tensor src, int non\\_blocking)
"""
function copy_sparse_to_sparse!(self::Tensor, src::Tensor, non_blocking::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_copy_sparse_to_sparse_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, src.pointer, non_blocking)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.cos


"""
    cos(self::Tensor)

 Wrapper of C++ function void atg\\_cos(tensor *out\\_\\_, tensor self)
"""
function cos(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_cos, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cos!


"""
    cos!(self::Tensor)

 Wrapper of C++ function void atg\\_cos\\_(tensor *out\\_\\_, tensor self)
"""
function cos!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_cos_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cos_out


"""
    cos_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_cos\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function cos_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_cos_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.cosh


"""
    cosh(self::Tensor)

 Wrapper of C++ function void atg\\_cosh(tensor *out\\_\\_, tensor self)
"""
function cosh(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_cosh, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cosh!


"""
    cosh!(self::Tensor)

 Wrapper of C++ function void atg\\_cosh\\_(tensor *out\\_\\_, tensor self)
"""
function cosh!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_cosh_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cosh_out


"""
    cosh_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_cosh\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function cosh_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_cosh_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cosine_embedding_loss


"""
    cosine_embedding_loss(input1::Tensor, input2::Tensor, target::Tensor, margin::Float64, reduction::Int64)

 Wrapper of C++ function void atg\\_cosine\\_embedding\\_loss(tensor *out\\_\\_, tensor input1, tensor input2, tensor target, double margin, int64\\_t reduction)
"""
function cosine_embedding_loss(input1::Tensor, input2::Tensor, target::Tensor, margin::Float64, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_cosine_embedding_loss, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Clonglong),
                 outputs__, input1.pointer, input2.pointer, target.pointer, margin, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cosine_similarity


"""
    cosine_similarity(x1::Tensor, x2::Tensor, dim::Int64, eps::Float64)

 Wrapper of C++ function void atg\\_cosine\\_similarity(tensor *out\\_\\_, tensor x1, tensor x2, int64\\_t dim, double eps)
"""
function cosine_similarity(x1::Tensor, x2::Tensor, dim::Int64, eps::Float64)
    outputs__ = Int[0]
    __cret = ccall((:atg_cosine_similarity, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cdouble),
                 outputs__, x1.pointer, x2.pointer, dim, eps)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cross


"""
    cross(self::Tensor, other::Tensor, dim::Int64)

 Wrapper of C++ function void atg\\_cross(tensor *out\\_\\_, tensor self, tensor other, int64\\_t dim)
"""
function cross(self::Tensor, other::Tensor, dim::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_cross, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, other.pointer, dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cross_out


"""
    cross_out(out::Tensor, self::Tensor, other::Tensor, dim::Int64)

 Wrapper of C++ function void atg\\_cross\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor other, int64\\_t dim)
"""
function cross_out(out::Tensor, self::Tensor, other::Tensor, dim::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_cross_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, out.pointer, self.pointer, other.pointer, dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ctc_loss


"""
    ctc_loss(log_probs::Tensor, targets::Tensor, input_lengths_data::Array{Int64}, target_lengths_data::Array{Int64}, blank::Int64, reduction::Int64, zero_infinity::Int)

 Wrapper of C++ function void atg\\_ctc\\_loss(tensor *out\\_\\_, tensor log\\_probs, tensor targets, int64\\_t *input\\_lengths\\_data, int input\\_lengths\\_len, int64\\_t *target\\_lengths\\_data, int target\\_lengths\\_len, int64\\_t blank, int64\\_t reduction, int zero\\_infinity)
"""
function ctc_loss(log_probs::Tensor, targets::Tensor, input_lengths_data::Array{Int64}, target_lengths_data::Array{Int64}, blank::Int64, reduction::Int64, zero_infinity::Int)
    outputs__ = Int[0]
    input_lengths_len = length(input_lengths_data)
    target_lengths_len = length(target_lengths_data)
    __cret = ccall((:atg_ctc_loss, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong, Clonglong, Cint),
                 outputs__, log_probs.pointer, targets.pointer, input_lengths_data, input_lengths_len, target_lengths_data, target_lengths_len, blank, reduction, zero_infinity)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ctc_loss1


"""
    ctc_loss1(log_probs::Tensor, targets::Tensor, input_lengths::Tensor, target_lengths::Tensor, blank::Int64, reduction::Int64, zero_infinity::Int)

 Wrapper of C++ function void atg\\_ctc\\_loss1(tensor *out\\_\\_, tensor log\\_probs, tensor targets, tensor input\\_lengths, tensor target\\_lengths, int64\\_t blank, int64\\_t reduction, int zero\\_infinity)
"""
function ctc_loss1(log_probs::Tensor, targets::Tensor, input_lengths::Tensor, target_lengths::Tensor, blank::Int64, reduction::Int64, zero_infinity::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_ctc_loss1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Cint),
                 outputs__, log_probs.pointer, targets.pointer, input_lengths.pointer, target_lengths.pointer, blank, reduction, zero_infinity)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cudnn_affine_grid_generator


"""
    cudnn_affine_grid_generator(theta::Tensor, n::Int64, C::Int64, H::Int64, W::Int64)

 Wrapper of C++ function void atg\\_cudnn\\_affine\\_grid\\_generator(tensor *out\\_\\_, tensor theta, int64\\_t n, int64\\_t C, int64\\_t H, int64\\_t W)
"""
function cudnn_affine_grid_generator(theta::Tensor, n::Int64, C::Int64, H::Int64, W::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_cudnn_affine_grid_generator, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Clonglong, Clonglong),
                 outputs__, theta.pointer, n, C, H, W)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cudnn_affine_grid_generator_backward


"""
    cudnn_affine_grid_generator_backward(grad::Tensor, n::Int64, C::Int64, H::Int64, W::Int64)

 Wrapper of C++ function void atg\\_cudnn\\_affine\\_grid\\_generator\\_backward(tensor *out\\_\\_, tensor grad, int64\\_t n, int64\\_t C, int64\\_t H, int64\\_t W)
"""
function cudnn_affine_grid_generator_backward(grad::Tensor, n::Int64, C::Int64, H::Int64, W::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_cudnn_affine_grid_generator_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Clonglong, Clonglong),
                 outputs__, grad.pointer, n, C, H, W)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cudnn_batch_norm


"""
    cudnn_batch_norm(input::Tensor, weight::Tensor, bias::Tensor, running_mean::Tensor, running_var::Tensor, training::Int, exponential_average_factor::Float64, epsilon::Float64)

 Wrapper of C++ function void atg\\_cudnn\\_batch\\_norm(tensor *out\\_\\_, tensor input, tensor weight, tensor bias, tensor running\\_mean, tensor running\\_var, int training, double exponential\\_average\\_factor, double epsilon)
"""
function cudnn_batch_norm(input::Tensor, weight::Tensor, bias::Tensor, running_mean::Tensor, running_var::Tensor, training::Int, exponential_average_factor::Float64, epsilon::Float64)
    outputs__ = Int[0, 0, 0, 0]
    __cret = ccall((:atg_cudnn_batch_norm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cdouble, Cdouble),
                 outputs__, input.pointer, weight.pointer, bias.pointer, running_mean.pointer, running_var.pointer, training, exponential_average_factor, epsilon)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    __o_3 = tensor_from_ptr(Ptr{Cvoid}(outputs__[3]))
    __o_4 = tensor_from_ptr(Ptr{Cvoid}(outputs__[4]))
    return __o_1, __o_2, __o_3, __o_4
end



export cudnn_batch_norm_backward


"""
    cudnn_batch_norm_backward(input::Tensor, grad_output::Tensor, weight::Tensor, running_mean::Tensor, running_var::Tensor, save_mean::Tensor, save_var::Tensor, epsilon::Float64, reserveSpace::Tensor)

 Wrapper of C++ function void atg\\_cudnn\\_batch\\_norm\\_backward(tensor *out\\_\\_, tensor input, tensor grad\\_output, tensor weight, tensor running\\_mean, tensor running\\_var, tensor save\\_mean, tensor save\\_var, double epsilon, tensor reserveSpace)
"""
function cudnn_batch_norm_backward(input::Tensor, grad_output::Tensor, weight::Tensor, running_mean::Tensor, running_var::Tensor, save_mean::Tensor, save_var::Tensor, epsilon::Float64, reserveSpace::Tensor)
    outputs__ = Int[0, 0, 0]
    __cret = ccall((:atg_cudnn_batch_norm_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Ptr{Cvoid}),
                 outputs__, input.pointer, grad_output.pointer, weight.pointer, running_mean.pointer, running_var.pointer, save_mean.pointer, save_var.pointer, epsilon, reserveSpace.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    __o_3 = tensor_from_ptr(Ptr{Cvoid}(outputs__[3]))
    return __o_1, __o_2, __o_3
end



export cudnn_convolution


"""
    cudnn_convolution(self::Tensor, weight::Tensor, bias::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)

 Wrapper of C++ function void atg\\_cudnn\\_convolution(tensor *out\\_\\_, tensor self, tensor weight, tensor bias, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t groups, int benchmark, int deterministic)
"""
function cudnn_convolution(self::Tensor, weight::Tensor, bias::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)
    outputs__ = Int[0]
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_cudnn_convolution, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong, Cint, Cint),
                 outputs__, self.pointer, weight.pointer, bias.pointer, padding_data, padding_len, stride_data, stride_len, dilation_data, dilation_len, groups, benchmark, deterministic)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cudnn_convolution_backward_bias


"""
    cudnn_convolution_backward_bias(grad_output::Tensor)

 Wrapper of C++ function void atg\\_cudnn\\_convolution\\_backward\\_bias(tensor *out\\_\\_, tensor grad\\_output)
"""
function cudnn_convolution_backward_bias(grad_output::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_cudnn_convolution_backward_bias, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_output.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cudnn_convolution_backward_input


"""
    cudnn_convolution_backward_input(self_size_data::Array{Int64}, grad_output::Tensor, weight::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)

 Wrapper of C++ function void atg\\_cudnn\\_convolution\\_backward\\_input(tensor *out\\_\\_, int64\\_t *self\\_size\\_data, int self\\_size\\_len, tensor grad\\_output, tensor weight, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t groups, int benchmark, int deterministic)
"""
function cudnn_convolution_backward_input(self_size_data::Array{Int64}, grad_output::Tensor, weight::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)
    outputs__ = Int[0]
    self_size_len = length(self_size_data)
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_cudnn_convolution_backward_input, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong, Cint, Cint),
                 outputs__, self_size_data, self_size_len, grad_output.pointer, weight.pointer, padding_data, padding_len, stride_data, stride_len, dilation_data, dilation_len, groups, benchmark, deterministic)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cudnn_convolution_backward_weight


"""
    cudnn_convolution_backward_weight(weight_size_data::Array{Int64}, grad_output::Tensor, self::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)

 Wrapper of C++ function void atg\\_cudnn\\_convolution\\_backward\\_weight(tensor *out\\_\\_, int64\\_t *weight\\_size\\_data, int weight\\_size\\_len, tensor grad\\_output, tensor self, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t groups, int benchmark, int deterministic)
"""
function cudnn_convolution_backward_weight(weight_size_data::Array{Int64}, grad_output::Tensor, self::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)
    outputs__ = Int[0]
    weight_size_len = length(weight_size_data)
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_cudnn_convolution_backward_weight, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong, Cint, Cint),
                 outputs__, weight_size_data, weight_size_len, grad_output.pointer, self.pointer, padding_data, padding_len, stride_data, stride_len, dilation_data, dilation_len, groups, benchmark, deterministic)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cudnn_convolution_transpose


"""
    cudnn_convolution_transpose(self::Tensor, weight::Tensor, bias::Tensor, padding_data::Array{Int64}, output_padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)

 Wrapper of C++ function void atg\\_cudnn\\_convolution\\_transpose(tensor *out\\_\\_, tensor self, tensor weight, tensor bias, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *output\\_padding\\_data, int output\\_padding\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t groups, int benchmark, int deterministic)
"""
function cudnn_convolution_transpose(self::Tensor, weight::Tensor, bias::Tensor, padding_data::Array{Int64}, output_padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)
    outputs__ = Int[0]
    padding_len = length(padding_data)
    output_padding_len = length(output_padding_data)
    stride_len = length(stride_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_cudnn_convolution_transpose, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong, Cint, Cint),
                 outputs__, self.pointer, weight.pointer, bias.pointer, padding_data, padding_len, output_padding_data, output_padding_len, stride_data, stride_len, dilation_data, dilation_len, groups, benchmark, deterministic)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cudnn_convolution_transpose_backward_bias


"""
    cudnn_convolution_transpose_backward_bias(grad_output::Tensor)

 Wrapper of C++ function void atg\\_cudnn\\_convolution\\_transpose\\_backward\\_bias(tensor *out\\_\\_, tensor grad\\_output)
"""
function cudnn_convolution_transpose_backward_bias(grad_output::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_cudnn_convolution_transpose_backward_bias, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_output.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cudnn_convolution_transpose_backward_input


"""
    cudnn_convolution_transpose_backward_input(grad_output::Tensor, weight::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)

 Wrapper of C++ function void atg\\_cudnn\\_convolution\\_transpose\\_backward\\_input(tensor *out\\_\\_, tensor grad\\_output, tensor weight, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t groups, int benchmark, int deterministic)
"""
function cudnn_convolution_transpose_backward_input(grad_output::Tensor, weight::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)
    outputs__ = Int[0]
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_cudnn_convolution_transpose_backward_input, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong, Cint, Cint),
                 outputs__, grad_output.pointer, weight.pointer, padding_data, padding_len, stride_data, stride_len, dilation_data, dilation_len, groups, benchmark, deterministic)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cudnn_convolution_transpose_backward_weight


"""
    cudnn_convolution_transpose_backward_weight(weight_size_data::Array{Int64}, grad_output::Tensor, self::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)

 Wrapper of C++ function void atg\\_cudnn\\_convolution\\_transpose\\_backward\\_weight(tensor *out\\_\\_, int64\\_t *weight\\_size\\_data, int weight\\_size\\_len, tensor grad\\_output, tensor self, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t groups, int benchmark, int deterministic)
"""
function cudnn_convolution_transpose_backward_weight(weight_size_data::Array{Int64}, grad_output::Tensor, self::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)
    outputs__ = Int[0]
    weight_size_len = length(weight_size_data)
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_cudnn_convolution_transpose_backward_weight, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong, Cint, Cint),
                 outputs__, weight_size_data, weight_size_len, grad_output.pointer, self.pointer, padding_data, padding_len, stride_data, stride_len, dilation_data, dilation_len, groups, benchmark, deterministic)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cudnn_grid_sampler


"""
    cudnn_grid_sampler(self::Tensor, grid::Tensor)

 Wrapper of C++ function void atg\\_cudnn\\_grid\\_sampler(tensor *out\\_\\_, tensor self, tensor grid)
"""
function cudnn_grid_sampler(self::Tensor, grid::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_cudnn_grid_sampler, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, grid.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cudnn_grid_sampler_backward


"""
    cudnn_grid_sampler_backward(self::Tensor, grid::Tensor, grad_output::Tensor)

 Wrapper of C++ function void atg\\_cudnn\\_grid\\_sampler\\_backward(tensor *out\\_\\_, tensor self, tensor grid, tensor grad\\_output)
"""
function cudnn_grid_sampler_backward(self::Tensor, grid::Tensor, grad_output::Tensor)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_cudnn_grid_sampler_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, grid.pointer, grad_output.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



import Base.cumprod


"""
    cumprod(self::Tensor, dim::Int64, dtype::Int)

 Wrapper of C++ function void atg\\_cumprod(tensor *out\\_\\_, tensor self, int64\\_t dim, int dtype)
"""
function cumprod(self::Tensor, dim::Int64, dtype::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_cumprod, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, self.pointer, dim, dtype)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cumprod_out


"""
    cumprod_out(out::Tensor, self::Tensor, dim::Int64, dtype::Int)

 Wrapper of C++ function void atg\\_cumprod\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t dim, int dtype)
"""
function cumprod_out(out::Tensor, self::Tensor, dim::Int64, dtype::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_cumprod_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, out.pointer, self.pointer, dim, dtype)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.cumsum


"""
    cumsum(self::Tensor, dim::Int64, dtype::Int)

 Wrapper of C++ function void atg\\_cumsum(tensor *out\\_\\_, tensor self, int64\\_t dim, int dtype)
"""
function cumsum(self::Tensor, dim::Int64, dtype::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_cumsum, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, self.pointer, dim, dtype)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export cumsum_out


"""
    cumsum_out(out::Tensor, self::Tensor, dim::Int64, dtype::Int)

 Wrapper of C++ function void atg\\_cumsum\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t dim, int dtype)
"""
function cumsum_out(out::Tensor, self::Tensor, dim::Int64, dtype::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_cumsum_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, out.pointer, self.pointer, dim, dtype)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export data


"""
    data(self::Tensor)

 Wrapper of C++ function void atg\\_data(tensor *out\\_\\_, tensor self)
"""
function data(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_data, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export dequantize


"""
    dequantize(self::Tensor)

 Wrapper of C++ function void atg\\_dequantize(tensor *out\\_\\_, tensor self)
"""
function dequantize(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_dequantize, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export det


"""
    det(self::Tensor)

 Wrapper of C++ function void atg\\_det(tensor *out\\_\\_, tensor self)
"""
function det(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_det, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.detach


"""
    detach(self::Tensor)

 Wrapper of C++ function void atg\\_detach(tensor *out\\_\\_, tensor self)
"""
function detach(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_detach, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export detach!


"""
    detach!(self::Tensor)

 Wrapper of C++ function void atg\\_detach\\_(tensor *out\\_\\_, tensor self)
"""
function detach!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_detach_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export diag


"""
    diag(self::Tensor, diagonal::Int64)

 Wrapper of C++ function void atg\\_diag(tensor *out\\_\\_, tensor self, int64\\_t diagonal)
"""
function diag(self::Tensor, diagonal::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_diag, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, diagonal)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export diag_embed


"""
    diag_embed(self::Tensor, offset::Int64, dim1::Int64, dim2::Int64)

 Wrapper of C++ function void atg\\_diag\\_embed(tensor *out\\_\\_, tensor self, int64\\_t offset, int64\\_t dim1, int64\\_t dim2)
"""
function diag_embed(self::Tensor, offset::Int64, dim1::Int64, dim2::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_diag_embed, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Clonglong),
                 outputs__, self.pointer, offset, dim1, dim2)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export diag_out


"""
    diag_out(out::Tensor, self::Tensor, diagonal::Int64)

 Wrapper of C++ function void atg\\_diag\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t diagonal)
"""
function diag_out(out::Tensor, self::Tensor, diagonal::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_diag_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, out.pointer, self.pointer, diagonal)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export diagflat


"""
    diagflat(self::Tensor, offset::Int64)

 Wrapper of C++ function void atg\\_diagflat(tensor *out\\_\\_, tensor self, int64\\_t offset)
"""
function diagflat(self::Tensor, offset::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_diagflat, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, offset)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export diagonal


"""
    diagonal(self::Tensor, offset::Int64, dim1::Int64, dim2::Int64)

 Wrapper of C++ function void atg\\_diagonal(tensor *out\\_\\_, tensor self, int64\\_t offset, int64\\_t dim1, int64\\_t dim2)
"""
function diagonal(self::Tensor, offset::Int64, dim1::Int64, dim2::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_diagonal, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Clonglong),
                 outputs__, self.pointer, offset, dim1, dim2)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export digamma


"""
    digamma(self::Tensor)

 Wrapper of C++ function void atg\\_digamma(tensor *out\\_\\_, tensor self)
"""
function digamma(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_digamma, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export digamma!


"""
    digamma!(self::Tensor)

 Wrapper of C++ function void atg\\_digamma\\_(tensor *out\\_\\_, tensor self)
"""
function digamma!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_digamma_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export digamma_out


"""
    digamma_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_digamma\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function digamma_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_digamma_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export dist


"""
    dist(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_dist(tensor *out\\_\\_, tensor self, tensor other)
"""
function dist(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_dist, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end





"""
    div(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_div(tensor *out\\_\\_, tensor self, tensor other)
"""
function div(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_div, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export div1


"""
    div1(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_div1(tensor *out\\_\\_, tensor self, scalar other)
"""
function div1(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_div1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export div!


"""
    div!(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_div\\_(tensor *out\\_\\_, tensor self, tensor other)
"""
function div!(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_div_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export div1!


"""
    div1!(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_div\\_1(tensor *out\\_\\_, tensor self, scalar other)
"""
function div1!(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_div_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export div_out


"""
    div_out(out::Tensor, self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_div\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor other)
"""
function div_out(out::Tensor, self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_div_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export dot


"""
    dot(self::Tensor, tensor::Tensor)

 Wrapper of C++ function void atg\\_dot(tensor *out\\_\\_, tensor self, tensor tensor)
"""
function dot(self::Tensor, tensor::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_dot, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, tensor.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export dot_out


"""
    dot_out(out::Tensor, self::Tensor, tensor::Tensor)

 Wrapper of C++ function void atg\\_dot\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor tensor)
"""
function dot_out(out::Tensor, self::Tensor, tensor::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_dot_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, tensor.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export dropout


"""
    dropout(input::Tensor, p::Float64, train::Int)

 Wrapper of C++ function void atg\\_dropout(tensor *out\\_\\_, tensor input, double p, int train)
"""
function dropout(input::Tensor, p::Float64, train::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_dropout, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Cint),
                 outputs__, input.pointer, p, train)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export dropout!


"""
    dropout!(self::Tensor, p::Float64, train::Int)

 Wrapper of C++ function void atg\\_dropout\\_(tensor *out\\_\\_, tensor self, double p, int train)
"""
function dropout!(self::Tensor, p::Float64, train::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_dropout_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Cint),
                 outputs__, self.pointer, p, train)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export eig


"""
    eig(self::Tensor, eigenvectors::Int)

 Wrapper of C++ function void atg\\_eig(tensor *out\\_\\_, tensor self, int eigenvectors)
"""
function eig(self::Tensor, eigenvectors::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_eig, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, eigenvectors)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export eig_out


"""
    eig_out(e::Tensor, v::Tensor, self::Tensor, eigenvectors::Int)

 Wrapper of C++ function void atg\\_eig\\_out(tensor *out\\_\\_, tensor e, tensor v, tensor self, int eigenvectors)
"""
function eig_out(e::Tensor, v::Tensor, self::Tensor, eigenvectors::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_eig_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, e.pointer, v.pointer, self.pointer, eigenvectors)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export elu


"""
    elu(self::Tensor)

 Wrapper of C++ function void atg\\_elu(tensor *out\\_\\_, tensor self)
"""
function elu(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_elu, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export elu!


"""
    elu!(self::Tensor)

 Wrapper of C++ function void atg\\_elu\\_(tensor *out\\_\\_, tensor self)
"""
function elu!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_elu_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export elu_backward


"""
    elu_backward(grad_output::Tensor, alpha::TorchNumber, scale::TorchNumber, input_scale::TorchNumber, output::Tensor)

 Wrapper of C++ function void atg\\_elu\\_backward(tensor *out\\_\\_, tensor grad\\_output, scalar alpha, scalar scale, scalar input\\_scale, tensor output)
"""
function elu_backward(grad_output::Tensor, alpha::TorchNumber, scale::TorchNumber, input_scale::TorchNumber, output::Tensor)
    outputs__ = Int[0]
    alpha_s_ = Scalar(alpha)
    scale_s_ = Scalar(scale)
    input_scale_s_ = Scalar(input_scale)
    __cret = ccall((:atg_elu_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_output.pointer, alpha_s_.pointer, scale_s_.pointer, input_scale_s_.pointer, output.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export elu_backward_out


"""
    elu_backward_out(grad_input::Tensor, grad_output::Tensor, alpha::TorchNumber, scale::TorchNumber, input_scale::TorchNumber, output::Tensor)

 Wrapper of C++ function void atg\\_elu\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, scalar alpha, scalar scale, scalar input\\_scale, tensor output)
"""
function elu_backward_out(grad_input::Tensor, grad_output::Tensor, alpha::TorchNumber, scale::TorchNumber, input_scale::TorchNumber, output::Tensor)
    outputs__ = Int[0]
    alpha_s_ = Scalar(alpha)
    scale_s_ = Scalar(scale)
    input_scale_s_ = Scalar(input_scale)
    __cret = ccall((:atg_elu_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_input.pointer, grad_output.pointer, alpha_s_.pointer, scale_s_.pointer, input_scale_s_.pointer, output.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export elu_out


"""
    elu_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_elu\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function elu_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_elu_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export embedding


"""
    embedding(weight::Tensor, indices::Tensor, padding_idx::Int64, scale_grad_by_freq::Int, sparse::Int)

 Wrapper of C++ function void atg\\_embedding(tensor *out\\_\\_, tensor weight, tensor indices, int64\\_t padding\\_idx, int scale\\_grad\\_by\\_freq, int sparse)
"""
function embedding(weight::Tensor, indices::Tensor, padding_idx::Int64, scale_grad_by_freq::Int, sparse::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_embedding, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint, Cint),
                 outputs__, weight.pointer, indices.pointer, padding_idx, scale_grad_by_freq, sparse)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export embedding_backward


"""
    embedding_backward(grad::Tensor, indices::Tensor, num_weights::Int64, padding_idx::Int64, scale_grad_by_freq::Int, sparse::Int)

 Wrapper of C++ function void atg\\_embedding\\_backward(tensor *out\\_\\_, tensor grad, tensor indices, int64\\_t num\\_weights, int64\\_t padding\\_idx, int scale\\_grad\\_by\\_freq, int sparse)
"""
function embedding_backward(grad::Tensor, indices::Tensor, num_weights::Int64, padding_idx::Int64, scale_grad_by_freq::Int, sparse::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_embedding_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Cint, Cint),
                 outputs__, grad.pointer, indices.pointer, num_weights, padding_idx, scale_grad_by_freq, sparse)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export embedding_bag


"""
    embedding_bag(weight::Tensor, indices::Tensor, offsets::Tensor, scale_grad_by_freq::Int, mode::Int64, sparse::Int, per_sample_weights::Tensor)

 Wrapper of C++ function void atg\\_embedding\\_bag(tensor *out\\_\\_, tensor weight, tensor indices, tensor offsets, int scale\\_grad\\_by\\_freq, int64\\_t mode, int sparse, tensor per\\_sample\\_weights)
"""
function embedding_bag(weight::Tensor, indices::Tensor, offsets::Tensor, scale_grad_by_freq::Int, mode::Int64, sparse::Int, per_sample_weights::Tensor)
    outputs__ = Int[0, 0, 0, 0]
    __cret = ccall((:atg_embedding_bag, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Clonglong, Cint, Ptr{Cvoid}),
                 outputs__, weight.pointer, indices.pointer, offsets.pointer, scale_grad_by_freq, mode, sparse, per_sample_weights.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    __o_3 = tensor_from_ptr(Ptr{Cvoid}(outputs__[3]))
    __o_4 = tensor_from_ptr(Ptr{Cvoid}(outputs__[4]))
    return __o_1, __o_2, __o_3, __o_4
end



export embedding_dense_backward


"""
    embedding_dense_backward(grad_output::Tensor, indices::Tensor, num_weights::Int64, padding_idx::Int64, scale_grad_by_freq::Int)

 Wrapper of C++ function void atg\\_embedding\\_dense\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor indices, int64\\_t num\\_weights, int64\\_t padding\\_idx, int scale\\_grad\\_by\\_freq)
"""
function embedding_dense_backward(grad_output::Tensor, indices::Tensor, num_weights::Int64, padding_idx::Int64, scale_grad_by_freq::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_embedding_dense_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Cint),
                 outputs__, grad_output.pointer, indices.pointer, num_weights, padding_idx, scale_grad_by_freq)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export embedding_renorm!


"""
    embedding_renorm!(self::Tensor, indices::Tensor, max_norm::Float64, norm_type::Float64)

 Wrapper of C++ function void atg\\_embedding\\_renorm\\_(tensor *out\\_\\_, tensor self, tensor indices, double max\\_norm, double norm\\_type)
"""
function embedding_renorm!(self::Tensor, indices::Tensor, max_norm::Float64, norm_type::Float64)
    outputs__ = Int[0]
    __cret = ccall((:atg_embedding_renorm_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Cdouble),
                 outputs__, self.pointer, indices.pointer, max_norm, norm_type)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export embedding_sparse_backward


"""
    embedding_sparse_backward(grad::Tensor, indices::Tensor, num_weights::Int64, padding_idx::Int64, scale_grad_by_freq::Int)

 Wrapper of C++ function void atg\\_embedding\\_sparse\\_backward(tensor *out\\_\\_, tensor grad, tensor indices, int64\\_t num\\_weights, int64\\_t padding\\_idx, int scale\\_grad\\_by\\_freq)
"""
function embedding_sparse_backward(grad::Tensor, indices::Tensor, num_weights::Int64, padding_idx::Int64, scale_grad_by_freq::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_embedding_sparse_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Cint),
                 outputs__, grad.pointer, indices.pointer, num_weights, padding_idx, scale_grad_by_freq)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.empty


"""
    empty(size_data::Array{Int64}, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_empty(tensor *out\\_\\_, int64\\_t *size\\_data, int size\\_len, int options\\_kind, int options\\_device)
"""
function empty(size_data::Array{Int64}, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_empty, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, size_data, size_len, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export empty_like


"""
    empty_like(self::Tensor)

 Wrapper of C++ function void atg\\_empty\\_like(tensor *out\\_\\_, tensor self)
"""
function empty_like(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_empty_like, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export empty_like1


"""
    empty_like1(self::Tensor, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_empty\\_like1(tensor *out\\_\\_, tensor self, int options\\_kind, int options\\_device)
"""
function empty_like1(self::Tensor, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_empty_like1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export empty_out


"""
    empty_out(out::Tensor, size_data::Array{Int64})

 Wrapper of C++ function void atg\\_empty\\_out(tensor *out\\_\\_, tensor out, int64\\_t *size\\_data, int size\\_len)
"""
function empty_out(out::Tensor, size_data::Array{Int64})
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_empty_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, size_data, size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export empty_strided


"""
    empty_strided(size_data::Array{Int64}, stride_data::Array{Int64}, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_empty\\_strided(tensor *out\\_\\_, int64\\_t *size\\_data, int size\\_len, int64\\_t *stride\\_data, int stride\\_len, int options\\_kind, int options\\_device)
"""
function empty_strided(size_data::Array{Int64}, stride_data::Array{Int64}, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    size_len = length(size_data)
    stride_len = length(stride_data)
    __cret = ccall((:atg_empty_strided, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, size_data, size_len, stride_data, stride_len, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export eq


"""
    eq(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_eq(tensor *out\\_\\_, tensor self, scalar other)
"""
function eq(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_eq, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export eq1


"""
    eq1(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_eq1(tensor *out\\_\\_, tensor self, tensor other)
"""
function eq1(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_eq1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export eq!


"""
    eq!(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_eq\\_(tensor *out\\_\\_, tensor self, scalar other)
"""
function eq!(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_eq_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export eq1!


"""
    eq1!(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_eq\\_1(tensor *out\\_\\_, tensor self, tensor other)
"""
function eq1!(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_eq_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export eq_out


"""
    eq_out(out::Tensor, self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_eq\\_out(tensor *out\\_\\_, tensor out, tensor self, scalar other)
"""
function eq_out(out::Tensor, self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_eq_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export eq_out1


"""
    eq_out1(out::Tensor, self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_eq\\_out1(tensor *out\\_\\_, tensor out, tensor self, tensor other)
"""
function eq_out1(out::Tensor, self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_eq_out1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export erf


"""
    erf(self::Tensor)

 Wrapper of C++ function void atg\\_erf(tensor *out\\_\\_, tensor self)
"""
function erf(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_erf, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export erf!


"""
    erf!(self::Tensor)

 Wrapper of C++ function void atg\\_erf\\_(tensor *out\\_\\_, tensor self)
"""
function erf!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_erf_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export erf_out


"""
    erf_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_erf\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function erf_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_erf_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export erfc


"""
    erfc(self::Tensor)

 Wrapper of C++ function void atg\\_erfc(tensor *out\\_\\_, tensor self)
"""
function erfc(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_erfc, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export erfc!


"""
    erfc!(self::Tensor)

 Wrapper of C++ function void atg\\_erfc\\_(tensor *out\\_\\_, tensor self)
"""
function erfc!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_erfc_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export erfc_out


"""
    erfc_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_erfc\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function erfc_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_erfc_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export erfinv


"""
    erfinv(self::Tensor)

 Wrapper of C++ function void atg\\_erfinv(tensor *out\\_\\_, tensor self)
"""
function erfinv(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_erfinv, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export erfinv!


"""
    erfinv!(self::Tensor)

 Wrapper of C++ function void atg\\_erfinv\\_(tensor *out\\_\\_, tensor self)
"""
function erfinv!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_erfinv_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export erfinv_out


"""
    erfinv_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_erfinv\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function erfinv_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_erfinv_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.exp


"""
    exp(self::Tensor)

 Wrapper of C++ function void atg\\_exp(tensor *out\\_\\_, tensor self)
"""
function exp(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_exp, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export exp!


"""
    exp!(self::Tensor)

 Wrapper of C++ function void atg\\_exp\\_(tensor *out\\_\\_, tensor self)
"""
function exp!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_exp_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export exp_out


"""
    exp_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_exp\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function exp_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_exp_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export expand


"""
    expand(self::Tensor, size_data::Array{Int64}, implicit::Int)

 Wrapper of C++ function void atg\\_expand(tensor *out\\_\\_, tensor self, int64\\_t *size\\_data, int size\\_len, int implicit)
"""
function expand(self::Tensor, size_data::Array{Int64}, implicit::Int)
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_expand, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, size_data, size_len, implicit)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export expand_as


"""
    expand_as(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_expand\\_as(tensor *out\\_\\_, tensor self, tensor other)
"""
function expand_as(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_expand_as, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.expm1


"""
    expm1(self::Tensor)

 Wrapper of C++ function void atg\\_expm1(tensor *out\\_\\_, tensor self)
"""
function expm1(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_expm1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export expm1!


"""
    expm1!(self::Tensor)

 Wrapper of C++ function void atg\\_expm1\\_(tensor *out\\_\\_, tensor self)
"""
function expm1!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_expm1_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export expm1_out


"""
    expm1_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_expm1\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function expm1_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_expm1_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export exponential!


"""
    exponential!(self::Tensor, lambd::Float64)

 Wrapper of C++ function void atg\\_exponential\\_(tensor *out\\_\\_, tensor self, double lambd)
"""
function exponential!(self::Tensor, lambd::Float64)
    outputs__ = Int[0]
    __cret = ccall((:atg_exponential_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble),
                 outputs__, self.pointer, lambd)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export eye


"""
    eye(n::Int64, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_eye(tensor *out\\_\\_, int64\\_t n, int options\\_kind, int options\\_device)
"""
function eye(n::Int64, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_eye, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Clonglong, Cint, Cint),
                 outputs__, n, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export eye1


"""
    eye1(n::Int64, m::Int64, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_eye1(tensor *out\\_\\_, int64\\_t n, int64\\_t m, int options\\_kind, int options\\_device)
"""
function eye1(n::Int64, m::Int64, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_eye1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Clonglong, Clonglong, Cint, Cint),
                 outputs__, n, m, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export eye_out


"""
    eye_out(out::Tensor, n::Int64)

 Wrapper of C++ function void atg\\_eye\\_out(tensor *out\\_\\_, tensor out, int64\\_t n)
"""
function eye_out(out::Tensor, n::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_eye_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, out.pointer, n)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export eye_out1


"""
    eye_out1(out::Tensor, n::Int64, m::Int64)

 Wrapper of C++ function void atg\\_eye\\_out1(tensor *out\\_\\_, tensor out, int64\\_t n, int64\\_t m)
"""
function eye_out1(out::Tensor, n::Int64, m::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_eye_out1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong),
                 outputs__, out.pointer, n, m)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fake_quantize_per_channel_affine


"""
    fake_quantize_per_channel_affine(self::Tensor, scale::Tensor, zero_point::Tensor, axis::Int64, quant_min::Int64, quant_max::Int64)

 Wrapper of C++ function void atg\\_fake\\_quantize\\_per\\_channel\\_affine(tensor *out\\_\\_, tensor self, tensor scale, tensor zero\\_point, int64\\_t axis, int64\\_t quant\\_min, int64\\_t quant\\_max)
"""
function fake_quantize_per_channel_affine(self::Tensor, scale::Tensor, zero_point::Tensor, axis::Int64, quant_min::Int64, quant_max::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_fake_quantize_per_channel_affine, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Clonglong),
                 outputs__, self.pointer, scale.pointer, zero_point.pointer, axis, quant_min, quant_max)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fake_quantize_per_channel_affine_backward


"""
    fake_quantize_per_channel_affine_backward(grad::Tensor, self::Tensor, scale::Tensor, zero_point::Tensor, axis::Int64, quant_min::Int64, quant_max::Int64)

 Wrapper of C++ function void atg\\_fake\\_quantize\\_per\\_channel\\_affine\\_backward(tensor *out\\_\\_, tensor grad, tensor self, tensor scale, tensor zero\\_point, int64\\_t axis, int64\\_t quant\\_min, int64\\_t quant\\_max)
"""
function fake_quantize_per_channel_affine_backward(grad::Tensor, self::Tensor, scale::Tensor, zero_point::Tensor, axis::Int64, quant_min::Int64, quant_max::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_fake_quantize_per_channel_affine_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Clonglong),
                 outputs__, grad.pointer, self.pointer, scale.pointer, zero_point.pointer, axis, quant_min, quant_max)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fake_quantize_per_tensor_affine


"""
    fake_quantize_per_tensor_affine(self::Tensor, scale::Float64, zero_point::Int64, quant_min::Int64, quant_max::Int64)

 Wrapper of C++ function void atg\\_fake\\_quantize\\_per\\_tensor\\_affine(tensor *out\\_\\_, tensor self, double scale, int64\\_t zero\\_point, int64\\_t quant\\_min, int64\\_t quant\\_max)
"""
function fake_quantize_per_tensor_affine(self::Tensor, scale::Float64, zero_point::Int64, quant_min::Int64, quant_max::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_fake_quantize_per_tensor_affine, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Clonglong, Clonglong, Clonglong),
                 outputs__, self.pointer, scale, zero_point, quant_min, quant_max)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fake_quantize_per_tensor_affine_backward


"""
    fake_quantize_per_tensor_affine_backward(grad::Tensor, self::Tensor, scale::Float64, zero_point::Int64, quant_min::Int64, quant_max::Int64)

 Wrapper of C++ function void atg\\_fake\\_quantize\\_per\\_tensor\\_affine\\_backward(tensor *out\\_\\_, tensor grad, tensor self, double scale, int64\\_t zero\\_point, int64\\_t quant\\_min, int64\\_t quant\\_max)
"""
function fake_quantize_per_tensor_affine_backward(grad::Tensor, self::Tensor, scale::Float64, zero_point::Int64, quant_min::Int64, quant_max::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_fake_quantize_per_tensor_affine_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Clonglong, Clonglong, Clonglong),
                 outputs__, grad.pointer, self.pointer, scale, zero_point, quant_min, quant_max)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fbgemm_linear_fp16_weight


"""
    fbgemm_linear_fp16_weight(input::Tensor, packed_weight::Tensor, bias::Tensor)

 Wrapper of C++ function void atg\\_fbgemm\\_linear\\_fp16\\_weight(tensor *out\\_\\_, tensor input, tensor packed\\_weight, tensor bias)
"""
function fbgemm_linear_fp16_weight(input::Tensor, packed_weight::Tensor, bias::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_fbgemm_linear_fp16_weight, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, input.pointer, packed_weight.pointer, bias.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fbgemm_linear_fp16_weight_fp32_activation


"""
    fbgemm_linear_fp16_weight_fp32_activation(input::Tensor, packed_weight::Tensor, bias::Tensor)

 Wrapper of C++ function void atg\\_fbgemm\\_linear\\_fp16\\_weight\\_fp32\\_activation(tensor *out\\_\\_, tensor input, tensor packed\\_weight, tensor bias)
"""
function fbgemm_linear_fp16_weight_fp32_activation(input::Tensor, packed_weight::Tensor, bias::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_fbgemm_linear_fp16_weight_fp32_activation, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, input.pointer, packed_weight.pointer, bias.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fbgemm_linear_int8_weight


"""
    fbgemm_linear_int8_weight(input::Tensor, weight::Tensor, packed::Tensor, col_offsets::Tensor, weight_scale::TorchNumber, weight_zero_point::TorchNumber, bias::Tensor)

 Wrapper of C++ function void atg\\_fbgemm\\_linear\\_int8\\_weight(tensor *out\\_\\_, tensor input, tensor weight, tensor packed, tensor col\\_offsets, scalar weight\\_scale, scalar weight\\_zero\\_point, tensor bias)
"""
function fbgemm_linear_int8_weight(input::Tensor, weight::Tensor, packed::Tensor, col_offsets::Tensor, weight_scale::TorchNumber, weight_zero_point::TorchNumber, bias::Tensor)
    outputs__ = Int[0]
    weight_scale_s_ = Scalar(weight_scale)
    weight_zero_point_s_ = Scalar(weight_zero_point)
    __cret = ccall((:atg_fbgemm_linear_int8_weight, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, input.pointer, weight.pointer, packed.pointer, col_offsets.pointer, weight_scale_s_.pointer, weight_zero_point_s_.pointer, bias.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fbgemm_linear_int8_weight_fp32_activation


"""
    fbgemm_linear_int8_weight_fp32_activation(input::Tensor, weight::Tensor, packed::Tensor, col_offsets::Tensor, weight_scale::TorchNumber, weight_zero_point::TorchNumber, bias::Tensor)

 Wrapper of C++ function void atg\\_fbgemm\\_linear\\_int8\\_weight\\_fp32\\_activation(tensor *out\\_\\_, tensor input, tensor weight, tensor packed, tensor col\\_offsets, scalar weight\\_scale, scalar weight\\_zero\\_point, tensor bias)
"""
function fbgemm_linear_int8_weight_fp32_activation(input::Tensor, weight::Tensor, packed::Tensor, col_offsets::Tensor, weight_scale::TorchNumber, weight_zero_point::TorchNumber, bias::Tensor)
    outputs__ = Int[0]
    weight_scale_s_ = Scalar(weight_scale)
    weight_zero_point_s_ = Scalar(weight_zero_point)
    __cret = ccall((:atg_fbgemm_linear_int8_weight_fp32_activation, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, input.pointer, weight.pointer, packed.pointer, col_offsets.pointer, weight_scale_s_.pointer, weight_zero_point_s_.pointer, bias.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fbgemm_pack_gemm_matrix_fp16


"""
    fbgemm_pack_gemm_matrix_fp16(input::Tensor)

 Wrapper of C++ function void atg\\_fbgemm\\_pack\\_gemm\\_matrix\\_fp16(tensor *out\\_\\_, tensor input)
"""
function fbgemm_pack_gemm_matrix_fp16(input::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_fbgemm_pack_gemm_matrix_fp16, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, input.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fbgemm_pack_quantized_matrix


"""
    fbgemm_pack_quantized_matrix(input::Tensor)

 Wrapper of C++ function void atg\\_fbgemm\\_pack\\_quantized\\_matrix(tensor *out\\_\\_, tensor input)
"""
function fbgemm_pack_quantized_matrix(input::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_fbgemm_pack_quantized_matrix, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, input.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fbgemm_pack_quantized_matrix1


"""
    fbgemm_pack_quantized_matrix1(input::Tensor, K::Int64, n::Int64)

 Wrapper of C++ function void atg\\_fbgemm\\_pack\\_quantized\\_matrix1(tensor *out\\_\\_, tensor input, int64\\_t K, int64\\_t n)
"""
function fbgemm_pack_quantized_matrix1(input::Tensor, K::Int64, n::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_fbgemm_pack_quantized_matrix1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong),
                 outputs__, input.pointer, K, n)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export feature_alpha_dropout


"""
    feature_alpha_dropout(input::Tensor, p::Float64, train::Int)

 Wrapper of C++ function void atg\\_feature\\_alpha\\_dropout(tensor *out\\_\\_, tensor input, double p, int train)
"""
function feature_alpha_dropout(input::Tensor, p::Float64, train::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_feature_alpha_dropout, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Cint),
                 outputs__, input.pointer, p, train)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export feature_alpha_dropout!


"""
    feature_alpha_dropout!(self::Tensor, p::Float64, train::Int)

 Wrapper of C++ function void atg\\_feature\\_alpha\\_dropout\\_(tensor *out\\_\\_, tensor self, double p, int train)
"""
function feature_alpha_dropout!(self::Tensor, p::Float64, train::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_feature_alpha_dropout_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Cint),
                 outputs__, self.pointer, p, train)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export feature_dropout


"""
    feature_dropout(input::Tensor, p::Float64, train::Int)

 Wrapper of C++ function void atg\\_feature\\_dropout(tensor *out\\_\\_, tensor input, double p, int train)
"""
function feature_dropout(input::Tensor, p::Float64, train::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_feature_dropout, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Cint),
                 outputs__, input.pointer, p, train)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export feature_dropout!


"""
    feature_dropout!(self::Tensor, p::Float64, train::Int)

 Wrapper of C++ function void atg\\_feature\\_dropout\\_(tensor *out\\_\\_, tensor self, double p, int train)
"""
function feature_dropout!(self::Tensor, p::Float64, train::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_feature_dropout_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Cint),
                 outputs__, self.pointer, p, train)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fft


"""
    fft(self::Tensor, signal_ndim::Int64, normalized::Int)

 Wrapper of C++ function void atg\\_fft(tensor *out\\_\\_, tensor self, int64\\_t signal\\_ndim, int normalized)
"""
function fft(self::Tensor, signal_ndim::Int64, normalized::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_fft, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, self.pointer, signal_ndim, normalized)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.fill!


"""
    fill!(self::Tensor, value::TorchNumber)

 Wrapper of C++ function void atg\\_fill\\_(tensor *out\\_\\_, tensor self, scalar value)
"""
function fill!(self::Tensor, value::TorchNumber)
    outputs__ = Int[0]
    value_s_ = Scalar(value)
    __cret = ccall((:atg_fill_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, value_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fill1!


"""
    fill1!(self::Tensor, value::Tensor)

 Wrapper of C++ function void atg\\_fill\\_1(tensor *out\\_\\_, tensor self, tensor value)
"""
function fill1!(self::Tensor, value::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_fill_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, value.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fill_diagonal!


"""
    fill_diagonal!(self::Tensor, fill_value::TorchNumber, wrap::Int)

 Wrapper of C++ function void atg\\_fill\\_diagonal\\_(tensor *out\\_\\_, tensor self, scalar fill\\_value, int wrap)
"""
function fill_diagonal!(self::Tensor, fill_value::TorchNumber, wrap::Int)
    outputs__ = Int[0]
    fill_value_s_ = Scalar(fill_value)
    __cret = ccall((:atg_fill_diagonal_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, fill_value_s_.pointer, wrap)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export flatten


"""
    flatten(self::Tensor, start_dim::Int64, end_dim::Int64)

 Wrapper of C++ function void atg\\_flatten(tensor *out\\_\\_, tensor self, int64\\_t start\\_dim, int64\\_t end\\_dim)
"""
function flatten(self::Tensor, start_dim::Int64, end_dim::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_flatten, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong),
                 outputs__, self.pointer, start_dim, end_dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export flip


"""
    flip(self::Tensor, dims_data::Array{Int64})

 Wrapper of C++ function void atg\\_flip(tensor *out\\_\\_, tensor self, int64\\_t *dims\\_data, int dims\\_len)
"""
function flip(self::Tensor, dims_data::Array{Int64})
    outputs__ = Int[0]
    dims_len = length(dims_data)
    __cret = ccall((:atg_flip, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, dims_data, dims_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.floor


"""
    floor(self::Tensor)

 Wrapper of C++ function void atg\\_floor(tensor *out\\_\\_, tensor self)
"""
function floor(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_floor, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export floor!


"""
    floor!(self::Tensor)

 Wrapper of C++ function void atg\\_floor\\_(tensor *out\\_\\_, tensor self)
"""
function floor!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_floor_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export floor_out


"""
    floor_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_floor\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function floor_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_floor_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fmod


"""
    fmod(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_fmod(tensor *out\\_\\_, tensor self, scalar other)
"""
function fmod(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_fmod, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fmod1


"""
    fmod1(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_fmod1(tensor *out\\_\\_, tensor self, tensor other)
"""
function fmod1(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_fmod1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fmod!


"""
    fmod!(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_fmod\\_(tensor *out\\_\\_, tensor self, scalar other)
"""
function fmod!(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_fmod_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fmod1!


"""
    fmod1!(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_fmod\\_1(tensor *out\\_\\_, tensor self, tensor other)
"""
function fmod1!(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_fmod_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fmod_out


"""
    fmod_out(out::Tensor, self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_fmod\\_out(tensor *out\\_\\_, tensor out, tensor self, scalar other)
"""
function fmod_out(out::Tensor, self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_fmod_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fmod_out1


"""
    fmod_out1(out::Tensor, self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_fmod\\_out1(tensor *out\\_\\_, tensor out, tensor self, tensor other)
"""
function fmod_out1(out::Tensor, self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_fmod_out1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export frac


"""
    frac(self::Tensor)

 Wrapper of C++ function void atg\\_frac(tensor *out\\_\\_, tensor self)
"""
function frac(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_frac, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export frac!


"""
    frac!(self::Tensor)

 Wrapper of C++ function void atg\\_frac\\_(tensor *out\\_\\_, tensor self)
"""
function frac!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_frac_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export frac_out


"""
    frac_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_frac\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function frac_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_frac_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fractional_max_pool2d


"""
    fractional_max_pool2d(self::Tensor, kernel_size_data::Array{Int64}, output_size_data::Array{Int64}, random_samples::Tensor)

 Wrapper of C++ function void atg\\_fractional\\_max\\_pool2d(tensor *out\\_\\_, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *output\\_size\\_data, int output\\_size\\_len, tensor random\\_samples)
"""
function fractional_max_pool2d(self::Tensor, kernel_size_data::Array{Int64}, output_size_data::Array{Int64}, random_samples::Tensor)
    outputs__ = Int[0, 0]
    kernel_size_len = length(kernel_size_data)
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_fractional_max_pool2d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}),
                 outputs__, self.pointer, kernel_size_data, kernel_size_len, output_size_data, output_size_len, random_samples.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export fractional_max_pool2d_backward


"""
    fractional_max_pool2d_backward(grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, output_size_data::Array{Int64}, indices::Tensor)

 Wrapper of C++ function void atg\\_fractional\\_max\\_pool2d\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *output\\_size\\_data, int output\\_size\\_len, tensor indices)
"""
function fractional_max_pool2d_backward(grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, output_size_data::Array{Int64}, indices::Tensor)
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_fractional_max_pool2d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}),
                 outputs__, grad_output.pointer, self.pointer, kernel_size_data, kernel_size_len, output_size_data, output_size_len, indices.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fractional_max_pool2d_backward_out


"""
    fractional_max_pool2d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, output_size_data::Array{Int64}, indices::Tensor)

 Wrapper of C++ function void atg\\_fractional\\_max\\_pool2d\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *output\\_size\\_data, int output\\_size\\_len, tensor indices)
"""
function fractional_max_pool2d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, output_size_data::Array{Int64}, indices::Tensor)
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_fractional_max_pool2d_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, kernel_size_data, kernel_size_len, output_size_data, output_size_len, indices.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fractional_max_pool2d_out


"""
    fractional_max_pool2d_out(output::Tensor, indices::Tensor, self::Tensor, kernel_size_data::Array{Int64}, output_size_data::Array{Int64}, random_samples::Tensor)

 Wrapper of C++ function void atg\\_fractional\\_max\\_pool2d\\_out(tensor *out\\_\\_, tensor output, tensor indices, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *output\\_size\\_data, int output\\_size\\_len, tensor random\\_samples)
"""
function fractional_max_pool2d_out(output::Tensor, indices::Tensor, self::Tensor, kernel_size_data::Array{Int64}, output_size_data::Array{Int64}, random_samples::Tensor)
    outputs__ = Int[0, 0]
    kernel_size_len = length(kernel_size_data)
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_fractional_max_pool2d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}),
                 outputs__, output.pointer, indices.pointer, self.pointer, kernel_size_data, kernel_size_len, output_size_data, output_size_len, random_samples.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export fractional_max_pool3d


"""
    fractional_max_pool3d(self::Tensor, kernel_size_data::Array{Int64}, output_size_data::Array{Int64}, random_samples::Tensor)

 Wrapper of C++ function void atg\\_fractional\\_max\\_pool3d(tensor *out\\_\\_, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *output\\_size\\_data, int output\\_size\\_len, tensor random\\_samples)
"""
function fractional_max_pool3d(self::Tensor, kernel_size_data::Array{Int64}, output_size_data::Array{Int64}, random_samples::Tensor)
    outputs__ = Int[0, 0]
    kernel_size_len = length(kernel_size_data)
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_fractional_max_pool3d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}),
                 outputs__, self.pointer, kernel_size_data, kernel_size_len, output_size_data, output_size_len, random_samples.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export fractional_max_pool3d_backward


"""
    fractional_max_pool3d_backward(grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, output_size_data::Array{Int64}, indices::Tensor)

 Wrapper of C++ function void atg\\_fractional\\_max\\_pool3d\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *output\\_size\\_data, int output\\_size\\_len, tensor indices)
"""
function fractional_max_pool3d_backward(grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, output_size_data::Array{Int64}, indices::Tensor)
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_fractional_max_pool3d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}),
                 outputs__, grad_output.pointer, self.pointer, kernel_size_data, kernel_size_len, output_size_data, output_size_len, indices.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fractional_max_pool3d_backward_out


"""
    fractional_max_pool3d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, output_size_data::Array{Int64}, indices::Tensor)

 Wrapper of C++ function void atg\\_fractional\\_max\\_pool3d\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *output\\_size\\_data, int output\\_size\\_len, tensor indices)
"""
function fractional_max_pool3d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, output_size_data::Array{Int64}, indices::Tensor)
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_fractional_max_pool3d_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, kernel_size_data, kernel_size_len, output_size_data, output_size_len, indices.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export fractional_max_pool3d_out


"""
    fractional_max_pool3d_out(output::Tensor, indices::Tensor, self::Tensor, kernel_size_data::Array{Int64}, output_size_data::Array{Int64}, random_samples::Tensor)

 Wrapper of C++ function void atg\\_fractional\\_max\\_pool3d\\_out(tensor *out\\_\\_, tensor output, tensor indices, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *output\\_size\\_data, int output\\_size\\_len, tensor random\\_samples)
"""
function fractional_max_pool3d_out(output::Tensor, indices::Tensor, self::Tensor, kernel_size_data::Array{Int64}, output_size_data::Array{Int64}, random_samples::Tensor)
    outputs__ = Int[0, 0]
    kernel_size_len = length(kernel_size_data)
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_fractional_max_pool3d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}),
                 outputs__, output.pointer, indices.pointer, self.pointer, kernel_size_data, kernel_size_len, output_size_data, output_size_len, random_samples.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export frobenius_norm


"""
    frobenius_norm(self::Tensor)

 Wrapper of C++ function void atg\\_frobenius\\_norm(tensor *out\\_\\_, tensor self)
"""
function frobenius_norm(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_frobenius_norm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export frobenius_norm1


"""
    frobenius_norm1(self::Tensor, dim_data::Array{Int64}, keepdim::Int)

 Wrapper of C++ function void atg\\_frobenius\\_norm1(tensor *out\\_\\_, tensor self, int64\\_t *dim\\_data, int dim\\_len, int keepdim)
"""
function frobenius_norm1(self::Tensor, dim_data::Array{Int64}, keepdim::Int)
    outputs__ = Int[0]
    dim_len = length(dim_data)
    __cret = ccall((:atg_frobenius_norm1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, dim_data, dim_len, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export frobenius_norm_out


"""
    frobenius_norm_out(out::Tensor, self::Tensor, dim_data::Array{Int64}, keepdim::Int)

 Wrapper of C++ function void atg\\_frobenius\\_norm\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *dim\\_data, int dim\\_len, int keepdim)
"""
function frobenius_norm_out(out::Tensor, self::Tensor, dim_data::Array{Int64}, keepdim::Int)
    outputs__ = Int[0]
    dim_len = length(dim_data)
    __cret = ccall((:atg_frobenius_norm_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, out.pointer, self.pointer, dim_data, dim_len, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export full


"""
    full(size_data::Array{Int64}, fill_value::TorchNumber, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_full(tensor *out\\_\\_, int64\\_t *size\\_data, int size\\_len, scalar fill\\_value, int options\\_kind, int options\\_device)
"""
function full(size_data::Array{Int64}, fill_value::TorchNumber, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    size_len = length(size_data)
    fill_value_s_ = Scalar(fill_value)
    __cret = ccall((:atg_full, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint),
                 outputs__, size_data, size_len, fill_value_s_.pointer, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export full_like


"""
    full_like(self::Tensor, fill_value::TorchNumber)

 Wrapper of C++ function void atg\\_full\\_like(tensor *out\\_\\_, tensor self, scalar fill\\_value)
"""
function full_like(self::Tensor, fill_value::TorchNumber)
    outputs__ = Int[0]
    fill_value_s_ = Scalar(fill_value)
    __cret = ccall((:atg_full_like, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, fill_value_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export full_like1


"""
    full_like1(self::Tensor, fill_value::TorchNumber, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_full\\_like1(tensor *out\\_\\_, tensor self, scalar fill\\_value, int options\\_kind, int options\\_device)
"""
function full_like1(self::Tensor, fill_value::TorchNumber, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    fill_value_s_ = Scalar(fill_value)
    __cret = ccall((:atg_full_like1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, fill_value_s_.pointer, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export full_out


"""
    full_out(out::Tensor, size_data::Array{Int64}, fill_value::TorchNumber)

 Wrapper of C++ function void atg\\_full\\_out(tensor *out\\_\\_, tensor out, int64\\_t *size\\_data, int size\\_len, scalar fill\\_value)
"""
function full_out(out::Tensor, size_data::Array{Int64}, fill_value::TorchNumber)
    outputs__ = Int[0]
    size_len = length(size_data)
    fill_value_s_ = Scalar(fill_value)
    __cret = ccall((:atg_full_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}),
                 outputs__, out.pointer, size_data, size_len, fill_value_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export gather


"""
    gather(self::Tensor, dim::Int64, index::Tensor, sparse_grad::Int)

 Wrapper of C++ function void atg\\_gather(tensor *out\\_\\_, tensor self, int64\\_t dim, tensor index, int sparse\\_grad)
"""
function gather(self::Tensor, dim::Int64, index::Tensor, sparse_grad::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_gather, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, dim, index.pointer, sparse_grad)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export gather_out


"""
    gather_out(out::Tensor, self::Tensor, dim::Int64, index::Tensor, sparse_grad::Int)

 Wrapper of C++ function void atg\\_gather\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t dim, tensor index, int sparse\\_grad)
"""
function gather_out(out::Tensor, self::Tensor, dim::Int64, index::Tensor, sparse_grad::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_gather_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, dim, index.pointer, sparse_grad)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ge


"""
    ge(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_ge(tensor *out\\_\\_, tensor self, scalar other)
"""
function ge(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_ge, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ge1


"""
    ge1(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_ge1(tensor *out\\_\\_, tensor self, tensor other)
"""
function ge1(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_ge1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ge!


"""
    ge!(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_ge\\_(tensor *out\\_\\_, tensor self, scalar other)
"""
function ge!(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_ge_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ge1!


"""
    ge1!(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_ge\\_1(tensor *out\\_\\_, tensor self, tensor other)
"""
function ge1!(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_ge_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ge_out


"""
    ge_out(out::Tensor, self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_ge\\_out(tensor *out\\_\\_, tensor out, tensor self, scalar other)
"""
function ge_out(out::Tensor, self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_ge_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ge_out1


"""
    ge_out1(out::Tensor, self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_ge\\_out1(tensor *out\\_\\_, tensor out, tensor self, tensor other)
"""
function ge_out1(out::Tensor, self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_ge_out1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export gelu


"""
    gelu(self::Tensor)

 Wrapper of C++ function void atg\\_gelu(tensor *out\\_\\_, tensor self)
"""
function gelu(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_gelu, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export gelu_backward


"""
    gelu_backward(grad::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_gelu\\_backward(tensor *out\\_\\_, tensor grad, tensor self)
"""
function gelu_backward(grad::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_gelu_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export geometric!


"""
    geometric!(self::Tensor, p::Float64)

 Wrapper of C++ function void atg\\_geometric\\_(tensor *out\\_\\_, tensor self, double p)
"""
function geometric!(self::Tensor, p::Float64)
    outputs__ = Int[0]
    __cret = ccall((:atg_geometric_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble),
                 outputs__, self.pointer, p)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export geqrf


"""
    geqrf(self::Tensor)

 Wrapper of C++ function void atg\\_geqrf(tensor *out\\_\\_, tensor self)
"""
function geqrf(self::Tensor)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_geqrf, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export geqrf_out


"""
    geqrf_out(a::Tensor, tau::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_geqrf\\_out(tensor *out\\_\\_, tensor a, tensor tau, tensor self)
"""
function geqrf_out(a::Tensor, tau::Tensor, self::Tensor)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_geqrf_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, a.pointer, tau.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export ger


"""
    ger(self::Tensor, vec2::Tensor)

 Wrapper of C++ function void atg\\_ger(tensor *out\\_\\_, tensor self, tensor vec2)
"""
function ger(self::Tensor, vec2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_ger, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, vec2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ger_out


"""
    ger_out(out::Tensor, self::Tensor, vec2::Tensor)

 Wrapper of C++ function void atg\\_ger\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor vec2)
"""
function ger_out(out::Tensor, self::Tensor, vec2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_ger_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, vec2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export glu


"""
    glu(self::Tensor, dim::Int64)

 Wrapper of C++ function void atg\\_glu(tensor *out\\_\\_, tensor self, int64\\_t dim)
"""
function glu(self::Tensor, dim::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_glu, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export glu_backward


"""
    glu_backward(grad_output::Tensor, self::Tensor, dim::Int64)

 Wrapper of C++ function void atg\\_glu\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, int64\\_t dim)
"""
function glu_backward(grad_output::Tensor, self::Tensor, dim::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_glu_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, grad_output.pointer, self.pointer, dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export glu_backward_out


"""
    glu_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, dim::Int64)

 Wrapper of C++ function void atg\\_glu\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, int64\\_t dim)
"""
function glu_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, dim::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_glu_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export glu_out


"""
    glu_out(out::Tensor, self::Tensor, dim::Int64)

 Wrapper of C++ function void atg\\_glu\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t dim)
"""
function glu_out(out::Tensor, self::Tensor, dim::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_glu_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, out.pointer, self.pointer, dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export grad


"""
    grad(self::Tensor)

 Wrapper of C++ function void atg\\_grad(tensor *out\\_\\_, tensor self)
"""
function grad(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_grad, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export grid_sampler


"""
    grid_sampler(input::Tensor, grid::Tensor, interpolation_mode::Int64, padding_mode::Int64, align_corners::Int)

 Wrapper of C++ function void atg\\_grid\\_sampler(tensor *out\\_\\_, tensor input, tensor grid, int64\\_t interpolation\\_mode, int64\\_t padding\\_mode, int align\\_corners)
"""
function grid_sampler(input::Tensor, grid::Tensor, interpolation_mode::Int64, padding_mode::Int64, align_corners::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_grid_sampler, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Cint),
                 outputs__, input.pointer, grid.pointer, interpolation_mode, padding_mode, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export grid_sampler_2d


"""
    grid_sampler_2d(input::Tensor, grid::Tensor, interpolation_mode::Int64, padding_mode::Int64, align_corners::Int)

 Wrapper of C++ function void atg\\_grid\\_sampler\\_2d(tensor *out\\_\\_, tensor input, tensor grid, int64\\_t interpolation\\_mode, int64\\_t padding\\_mode, int align\\_corners)
"""
function grid_sampler_2d(input::Tensor, grid::Tensor, interpolation_mode::Int64, padding_mode::Int64, align_corners::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_grid_sampler_2d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Cint),
                 outputs__, input.pointer, grid.pointer, interpolation_mode, padding_mode, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export grid_sampler_2d_backward


"""
    grid_sampler_2d_backward(grad_output::Tensor, input::Tensor, grid::Tensor, interpolation_mode::Int64, padding_mode::Int64, align_corners::Int)

 Wrapper of C++ function void atg\\_grid\\_sampler\\_2d\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor input, tensor grid, int64\\_t interpolation\\_mode, int64\\_t padding\\_mode, int align\\_corners)
"""
function grid_sampler_2d_backward(grad_output::Tensor, input::Tensor, grid::Tensor, interpolation_mode::Int64, padding_mode::Int64, align_corners::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_grid_sampler_2d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Cint),
                 outputs__, grad_output.pointer, input.pointer, grid.pointer, interpolation_mode, padding_mode, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export grid_sampler_3d


"""
    grid_sampler_3d(input::Tensor, grid::Tensor, interpolation_mode::Int64, padding_mode::Int64, align_corners::Int)

 Wrapper of C++ function void atg\\_grid\\_sampler\\_3d(tensor *out\\_\\_, tensor input, tensor grid, int64\\_t interpolation\\_mode, int64\\_t padding\\_mode, int align\\_corners)
"""
function grid_sampler_3d(input::Tensor, grid::Tensor, interpolation_mode::Int64, padding_mode::Int64, align_corners::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_grid_sampler_3d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Cint),
                 outputs__, input.pointer, grid.pointer, interpolation_mode, padding_mode, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export grid_sampler_3d_backward


"""
    grid_sampler_3d_backward(grad_output::Tensor, input::Tensor, grid::Tensor, interpolation_mode::Int64, padding_mode::Int64, align_corners::Int)

 Wrapper of C++ function void atg\\_grid\\_sampler\\_3d\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor input, tensor grid, int64\\_t interpolation\\_mode, int64\\_t padding\\_mode, int align\\_corners)
"""
function grid_sampler_3d_backward(grad_output::Tensor, input::Tensor, grid::Tensor, interpolation_mode::Int64, padding_mode::Int64, align_corners::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_grid_sampler_3d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Cint),
                 outputs__, grad_output.pointer, input.pointer, grid.pointer, interpolation_mode, padding_mode, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export group_norm


"""
    group_norm(input::Tensor, num_groups::Int64, weight::Tensor, bias::Tensor, eps::Float64, cudnn_enabled::Int)

 Wrapper of C++ function void atg\\_group\\_norm(tensor *out\\_\\_, tensor input, int64\\_t num\\_groups, tensor weight, tensor bias, double eps, int cudnn\\_enabled)
"""
function group_norm(input::Tensor, num_groups::Int64, weight::Tensor, bias::Tensor, eps::Float64, cudnn_enabled::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_group_norm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Cint),
                 outputs__, input.pointer, num_groups, weight.pointer, bias.pointer, eps, cudnn_enabled)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export gru


"""
    gru(input::Tensor, hx::Tensor, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int, batch_first::Int)

 Wrapper of C++ function void atg\\_gru(tensor *out\\_\\_, tensor input, tensor hx, tensor *params\\_data, int params\\_len, int has\\_biases, int64\\_t num\\_layers, double dropout, int train, int bidirectional, int batch\\_first)
"""
function gru(input::Tensor, hx::Tensor, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int, batch_first::Int) where {T,N}
    outputs__ = Int[0, 0]
    params_data_ta_ = map(x->x.pointer, params_data)
    params_len = length(params_data)
    __cret = ccall((:atg_gru, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Clonglong, Cdouble, Cint, Cint, Cint),
                 outputs__, input.pointer, hx.pointer, params_data_ta_, params_len, has_biases, num_layers, dropout, train, bidirectional, batch_first)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export gru1


"""
    gru1(data::Tensor, batch_sizes::Tensor, hx::Tensor, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int)

 Wrapper of C++ function void atg\\_gru1(tensor *out\\_\\_, tensor data, tensor batch\\_sizes, tensor hx, tensor *params\\_data, int params\\_len, int has\\_biases, int64\\_t num\\_layers, double dropout, int train, int bidirectional)
"""
function gru1(data::Tensor, batch_sizes::Tensor, hx::Tensor, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int) where {T,N}
    outputs__ = Int[0, 0]
    params_data_ta_ = map(x->x.pointer, params_data)
    params_len = length(params_data)
    __cret = ccall((:atg_gru1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Clonglong, Cdouble, Cint, Cint),
                 outputs__, data.pointer, batch_sizes.pointer, hx.pointer, params_data_ta_, params_len, has_biases, num_layers, dropout, train, bidirectional)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export gru_cell


"""
    gru_cell(input::Tensor, hx::Tensor, w_ih::Tensor, w_hh::Tensor, b_ih::Tensor, b_hh::Tensor)

 Wrapper of C++ function void atg\\_gru\\_cell(tensor *out\\_\\_, tensor input, tensor hx, tensor w\\_ih, tensor w\\_hh, tensor b\\_ih, tensor b\\_hh)
"""
function gru_cell(input::Tensor, hx::Tensor, w_ih::Tensor, w_hh::Tensor, b_ih::Tensor, b_hh::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_gru_cell, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, input.pointer, hx.pointer, w_ih.pointer, w_hh.pointer, b_ih.pointer, b_hh.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export gt


"""
    gt(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_gt(tensor *out\\_\\_, tensor self, scalar other)
"""
function gt(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_gt, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export gt1


"""
    gt1(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_gt1(tensor *out\\_\\_, tensor self, tensor other)
"""
function gt1(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_gt1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export gt!


"""
    gt!(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_gt\\_(tensor *out\\_\\_, tensor self, scalar other)
"""
function gt!(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_gt_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export gt1!


"""
    gt1!(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_gt\\_1(tensor *out\\_\\_, tensor self, tensor other)
"""
function gt1!(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_gt_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export gt_out


"""
    gt_out(out::Tensor, self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_gt\\_out(tensor *out\\_\\_, tensor out, tensor self, scalar other)
"""
function gt_out(out::Tensor, self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_gt_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export gt_out1


"""
    gt_out1(out::Tensor, self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_gt\\_out1(tensor *out\\_\\_, tensor out, tensor self, tensor other)
"""
function gt_out1(out::Tensor, self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_gt_out1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export hamming_window


"""
    hamming_window(window_length::Int64, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_hamming\\_window(tensor *out\\_\\_, int64\\_t window\\_length, int options\\_kind, int options\\_device)
"""
function hamming_window(window_length::Int64, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_hamming_window, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Clonglong, Cint, Cint),
                 outputs__, window_length, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export hamming_window1


"""
    hamming_window1(window_length::Int64, periodic::Int, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_hamming\\_window1(tensor *out\\_\\_, int64\\_t window\\_length, int periodic, int options\\_kind, int options\\_device)
"""
function hamming_window1(window_length::Int64, periodic::Int, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_hamming_window1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Clonglong, Cint, Cint, Cint),
                 outputs__, window_length, periodic, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export hamming_window2


"""
    hamming_window2(window_length::Int64, periodic::Int, alpha::Float64, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_hamming\\_window2(tensor *out\\_\\_, int64\\_t window\\_length, int periodic, double alpha, int options\\_kind, int options\\_device)
"""
function hamming_window2(window_length::Int64, periodic::Int, alpha::Float64, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_hamming_window2, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Clonglong, Cint, Cdouble, Cint, Cint),
                 outputs__, window_length, periodic, alpha, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export hamming_window3


"""
    hamming_window3(window_length::Int64, periodic::Int, alpha::Float64, beta::Float64, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_hamming\\_window3(tensor *out\\_\\_, int64\\_t window\\_length, int periodic, double alpha, double beta, int options\\_kind, int options\\_device)
"""
function hamming_window3(window_length::Int64, periodic::Int, alpha::Float64, beta::Float64, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_hamming_window3, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Clonglong, Cint, Cdouble, Cdouble, Cint, Cint),
                 outputs__, window_length, periodic, alpha, beta, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export hann_window


"""
    hann_window(window_length::Int64, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_hann\\_window(tensor *out\\_\\_, int64\\_t window\\_length, int options\\_kind, int options\\_device)
"""
function hann_window(window_length::Int64, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_hann_window, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Clonglong, Cint, Cint),
                 outputs__, window_length, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export hann_window1


"""
    hann_window1(window_length::Int64, periodic::Int, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_hann\\_window1(tensor *out\\_\\_, int64\\_t window\\_length, int periodic, int options\\_kind, int options\\_device)
"""
function hann_window1(window_length::Int64, periodic::Int, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_hann_window1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Clonglong, Cint, Cint, Cint),
                 outputs__, window_length, periodic, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export hardshrink


"""
    hardshrink(self::Tensor)

 Wrapper of C++ function void atg\\_hardshrink(tensor *out\\_\\_, tensor self)
"""
function hardshrink(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_hardshrink, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export hardshrink_backward


"""
    hardshrink_backward(grad_out::Tensor, self::Tensor, lambd::TorchNumber)

 Wrapper of C++ function void atg\\_hardshrink\\_backward(tensor *out\\_\\_, tensor grad\\_out, tensor self, scalar lambd)
"""
function hardshrink_backward(grad_out::Tensor, self::Tensor, lambd::TorchNumber)
    outputs__ = Int[0]
    lambd_s_ = Scalar(lambd)
    __cret = ccall((:atg_hardshrink_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_out.pointer, self.pointer, lambd_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export hardtanh


"""
    hardtanh(self::Tensor)

 Wrapper of C++ function void atg\\_hardtanh(tensor *out\\_\\_, tensor self)
"""
function hardtanh(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_hardtanh, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export hardtanh!


"""
    hardtanh!(self::Tensor)

 Wrapper of C++ function void atg\\_hardtanh\\_(tensor *out\\_\\_, tensor self)
"""
function hardtanh!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_hardtanh_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export hardtanh_backward


"""
    hardtanh_backward(grad_output::Tensor, self::Tensor, min_val::TorchNumber, max_val::TorchNumber)

 Wrapper of C++ function void atg\\_hardtanh\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, scalar min\\_val, scalar max\\_val)
"""
function hardtanh_backward(grad_output::Tensor, self::Tensor, min_val::TorchNumber, max_val::TorchNumber)
    outputs__ = Int[0]
    min_val_s_ = Scalar(min_val)
    max_val_s_ = Scalar(max_val)
    __cret = ccall((:atg_hardtanh_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_output.pointer, self.pointer, min_val_s_.pointer, max_val_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export hardtanh_backward_out


"""
    hardtanh_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, min_val::TorchNumber, max_val::TorchNumber)

 Wrapper of C++ function void atg\\_hardtanh\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, scalar min\\_val, scalar max\\_val)
"""
function hardtanh_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, min_val::TorchNumber, max_val::TorchNumber)
    outputs__ = Int[0]
    min_val_s_ = Scalar(min_val)
    max_val_s_ = Scalar(max_val)
    __cret = ccall((:atg_hardtanh_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, min_val_s_.pointer, max_val_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export hardtanh_out


"""
    hardtanh_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_hardtanh\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function hardtanh_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_hardtanh_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export hinge_embedding_loss


"""
    hinge_embedding_loss(self::Tensor, target::Tensor, margin::Float64, reduction::Int64)

 Wrapper of C++ function void atg\\_hinge\\_embedding\\_loss(tensor *out\\_\\_, tensor self, tensor target, double margin, int64\\_t reduction)
"""
function hinge_embedding_loss(self::Tensor, target::Tensor, margin::Float64, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_hinge_embedding_loss, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Clonglong),
                 outputs__, self.pointer, target.pointer, margin, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export histc


"""
    histc(self::Tensor, bins::Int64)

 Wrapper of C++ function void atg\\_histc(tensor *out\\_\\_, tensor self, int64\\_t bins)
"""
function histc(self::Tensor, bins::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_histc, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, bins)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export histc_out


"""
    histc_out(out::Tensor, self::Tensor, bins::Int64)

 Wrapper of C++ function void atg\\_histc\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t bins)
"""
function histc_out(out::Tensor, self::Tensor, bins::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_histc_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, out.pointer, self.pointer, bins)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export hspmm


"""
    hspmm(mat1::Tensor, mat2::Tensor)

 Wrapper of C++ function void atg\\_hspmm(tensor *out\\_\\_, tensor mat1, tensor mat2)
"""
function hspmm(mat1::Tensor, mat2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_hspmm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, mat1.pointer, mat2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export hspmm_out


"""
    hspmm_out(out::Tensor, mat1::Tensor, mat2::Tensor)

 Wrapper of C++ function void atg\\_hspmm\\_out(tensor *out\\_\\_, tensor out, tensor mat1, tensor mat2)
"""
function hspmm_out(out::Tensor, mat1::Tensor, mat2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_hspmm_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, mat1.pointer, mat2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ifft


"""
    ifft(self::Tensor, signal_ndim::Int64, normalized::Int)

 Wrapper of C++ function void atg\\_ifft(tensor *out\\_\\_, tensor self, int64\\_t signal\\_ndim, int normalized)
"""
function ifft(self::Tensor, signal_ndim::Int64, normalized::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_ifft, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, self.pointer, signal_ndim, normalized)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export im2col


"""
    im2col(self::Tensor, kernel_size_data::Array{Int64}, dilation_data::Array{Int64}, padding_data::Array{Int64}, stride_data::Array{Int64})

 Wrapper of C++ function void atg\\_im2col(tensor *out\\_\\_, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len)
"""
function im2col(self::Tensor, kernel_size_data::Array{Int64}, dilation_data::Array{Int64}, padding_data::Array{Int64}, stride_data::Array{Int64})
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    dilation_len = length(dilation_data)
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    __cret = ccall((:atg_im2col, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, kernel_size_data, kernel_size_len, dilation_data, dilation_len, padding_data, padding_len, stride_data, stride_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export im2col_backward


"""
    im2col_backward(grad_output::Tensor, input_size_data::Array{Int64}, kernel_size_data::Array{Int64}, dilation_data::Array{Int64}, padding_data::Array{Int64}, stride_data::Array{Int64})

 Wrapper of C++ function void atg\\_im2col\\_backward(tensor *out\\_\\_, tensor grad\\_output, int64\\_t *input\\_size\\_data, int input\\_size\\_len, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len)
"""
function im2col_backward(grad_output::Tensor, input_size_data::Array{Int64}, kernel_size_data::Array{Int64}, dilation_data::Array{Int64}, padding_data::Array{Int64}, stride_data::Array{Int64})
    outputs__ = Int[0]
    input_size_len = length(input_size_data)
    kernel_size_len = length(kernel_size_data)
    dilation_len = length(dilation_data)
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    __cret = ccall((:atg_im2col_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, grad_output.pointer, input_size_data, input_size_len, kernel_size_data, kernel_size_len, dilation_data, dilation_len, padding_data, padding_len, stride_data, stride_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export im2col_backward_out


"""
    im2col_backward_out(grad_input::Tensor, grad_output::Tensor, input_size_data::Array{Int64}, kernel_size_data::Array{Int64}, dilation_data::Array{Int64}, padding_data::Array{Int64}, stride_data::Array{Int64})

 Wrapper of C++ function void atg\\_im2col\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, int64\\_t *input\\_size\\_data, int input\\_size\\_len, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len)
"""
function im2col_backward_out(grad_input::Tensor, grad_output::Tensor, input_size_data::Array{Int64}, kernel_size_data::Array{Int64}, dilation_data::Array{Int64}, padding_data::Array{Int64}, stride_data::Array{Int64})
    outputs__ = Int[0]
    input_size_len = length(input_size_data)
    kernel_size_len = length(kernel_size_data)
    dilation_len = length(dilation_data)
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    __cret = ccall((:atg_im2col_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, grad_input.pointer, grad_output.pointer, input_size_data, input_size_len, kernel_size_data, kernel_size_len, dilation_data, dilation_len, padding_data, padding_len, stride_data, stride_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export im2col_out


"""
    im2col_out(out::Tensor, self::Tensor, kernel_size_data::Array{Int64}, dilation_data::Array{Int64}, padding_data::Array{Int64}, stride_data::Array{Int64})

 Wrapper of C++ function void atg\\_im2col\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len)
"""
function im2col_out(out::Tensor, self::Tensor, kernel_size_data::Array{Int64}, dilation_data::Array{Int64}, padding_data::Array{Int64}, stride_data::Array{Int64})
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    dilation_len = length(dilation_data)
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    __cret = ccall((:atg_im2col_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, kernel_size_data, kernel_size_len, dilation_data, dilation_len, padding_data, padding_len, stride_data, stride_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.imag


"""
    imag(self::Tensor)

 Wrapper of C++ function void atg\\_imag(tensor *out\\_\\_, tensor self)
"""
function imag(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_imag, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export imag_out


"""
    imag_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_imag\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function imag_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_imag_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export index


"""
    index(self::Tensor, indices_data::Array{Tensor{T,N}})

 Wrapper of C++ function void atg\\_index(tensor *out\\_\\_, tensor self, tensor *indices\\_data, int indices\\_len)
"""
function index(self::Tensor, indices_data::Array{Tensor{T,N}}) where {T,N}
    outputs__ = Int[0]
    indices_data_ta_ = map(x->x.pointer, indices_data)
    indices_len = length(indices_data)
    __cret = ccall((:atg_index, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, indices_data_ta_, indices_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export index_add


"""
    index_add(self::Tensor, dim::Int64, index::Tensor, source::Tensor)

 Wrapper of C++ function void atg\\_index\\_add(tensor *out\\_\\_, tensor self, int64\\_t dim, tensor index, tensor source)
"""
function index_add(self::Tensor, dim::Int64, index::Tensor, source::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_index_add, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, dim, index.pointer, source.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export index_add!


"""
    index_add!(self::Tensor, dim::Int64, index::Tensor, source::Tensor)

 Wrapper of C++ function void atg\\_index\\_add\\_(tensor *out\\_\\_, tensor self, int64\\_t dim, tensor index, tensor source)
"""
function index_add!(self::Tensor, dim::Int64, index::Tensor, source::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_index_add_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, dim, index.pointer, source.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export index_copy


"""
    index_copy(self::Tensor, dim::Int64, index::Tensor, source::Tensor)

 Wrapper of C++ function void atg\\_index\\_copy(tensor *out\\_\\_, tensor self, int64\\_t dim, tensor index, tensor source)
"""
function index_copy(self::Tensor, dim::Int64, index::Tensor, source::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_index_copy, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, dim, index.pointer, source.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export index_copy!


"""
    index_copy!(self::Tensor, dim::Int64, index::Tensor, source::Tensor)

 Wrapper of C++ function void atg\\_index\\_copy\\_(tensor *out\\_\\_, tensor self, int64\\_t dim, tensor index, tensor source)
"""
function index_copy!(self::Tensor, dim::Int64, index::Tensor, source::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_index_copy_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, dim, index.pointer, source.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export index_fill


"""
    index_fill(self::Tensor, dim::Int64, index::Tensor, value::TorchNumber)

 Wrapper of C++ function void atg\\_index\\_fill(tensor *out\\_\\_, tensor self, int64\\_t dim, tensor index, scalar value)
"""
function index_fill(self::Tensor, dim::Int64, index::Tensor, value::TorchNumber)
    outputs__ = Int[0]
    value_s_ = Scalar(value)
    __cret = ccall((:atg_index_fill, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, dim, index.pointer, value_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export index_fill1


"""
    index_fill1(self::Tensor, dim::Int64, index::Tensor, value::Tensor)

 Wrapper of C++ function void atg\\_index\\_fill1(tensor *out\\_\\_, tensor self, int64\\_t dim, tensor index, tensor value)
"""
function index_fill1(self::Tensor, dim::Int64, index::Tensor, value::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_index_fill1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, dim, index.pointer, value.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export index_fill!


"""
    index_fill!(self::Tensor, dim::Int64, index::Tensor, value::TorchNumber)

 Wrapper of C++ function void atg\\_index\\_fill\\_(tensor *out\\_\\_, tensor self, int64\\_t dim, tensor index, scalar value)
"""
function index_fill!(self::Tensor, dim::Int64, index::Tensor, value::TorchNumber)
    outputs__ = Int[0]
    value_s_ = Scalar(value)
    __cret = ccall((:atg_index_fill_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, dim, index.pointer, value_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export index_fill1!


"""
    index_fill1!(self::Tensor, dim::Int64, index::Tensor, value::Tensor)

 Wrapper of C++ function void atg\\_index\\_fill\\_1(tensor *out\\_\\_, tensor self, int64\\_t dim, tensor index, tensor value)
"""
function index_fill1!(self::Tensor, dim::Int64, index::Tensor, value::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_index_fill_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, dim, index.pointer, value.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export index_put


"""
    index_put(self::Tensor, indices_data::Array{Tensor{T,N}}, values::Tensor, accumulate::Int)

 Wrapper of C++ function void atg\\_index\\_put(tensor *out\\_\\_, tensor self, tensor *indices\\_data, int indices\\_len, tensor values, int accumulate)
"""
function index_put(self::Tensor, indices_data::Array{Tensor{T,N}}, values::Tensor, accumulate::Int) where {T,N}
    outputs__ = Int[0]
    indices_data_ta_ = map(x->x.pointer, indices_data)
    indices_len = length(indices_data)
    __cret = ccall((:atg_index_put, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, indices_data_ta_, indices_len, values.pointer, accumulate)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export index_put!


"""
    index_put!(self::Tensor, indices_data::Array{Tensor{T,N}}, values::Tensor, accumulate::Int)

 Wrapper of C++ function void atg\\_index\\_put\\_(tensor *out\\_\\_, tensor self, tensor *indices\\_data, int indices\\_len, tensor values, int accumulate)
"""
function index_put!(self::Tensor, indices_data::Array{Tensor{T,N}}, values::Tensor, accumulate::Int) where {T,N}
    outputs__ = Int[0]
    indices_data_ta_ = map(x->x.pointer, indices_data)
    indices_len = length(indices_data)
    __cret = ccall((:atg_index_put_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, indices_data_ta_, indices_len, values.pointer, accumulate)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export index_select


"""
    index_select(self::Tensor, dim::Int64, index::Tensor)

 Wrapper of C++ function void atg\\_index\\_select(tensor *out\\_\\_, tensor self, int64\\_t dim, tensor index)
"""
function index_select(self::Tensor, dim::Int64, index::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_index_select, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}),
                 outputs__, self.pointer, dim, index.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export index_select_out


"""
    index_select_out(out::Tensor, self::Tensor, dim::Int64, index::Tensor)

 Wrapper of C++ function void atg\\_index\\_select\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t dim, tensor index)
"""
function index_select_out(out::Tensor, self::Tensor, dim::Int64, index::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_index_select_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, dim, index.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export indices


"""
    indices(self::Tensor)

 Wrapper of C++ function void atg\\_indices(tensor *out\\_\\_, tensor self)
"""
function indices(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_indices, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export instance_norm


"""
    instance_norm(input::Tensor, weight::Tensor, bias::Tensor, running_mean::Tensor, running_var::Tensor, use_input_stats::Int, momentum::Float64, eps::Float64, cudnn_enabled::Int)

 Wrapper of C++ function void atg\\_instance\\_norm(tensor *out\\_\\_, tensor input, tensor weight, tensor bias, tensor running\\_mean, tensor running\\_var, int use\\_input\\_stats, double momentum, double eps, int cudnn\\_enabled)
"""
function instance_norm(input::Tensor, weight::Tensor, bias::Tensor, running_mean::Tensor, running_var::Tensor, use_input_stats::Int, momentum::Float64, eps::Float64, cudnn_enabled::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_instance_norm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cdouble, Cdouble, Cint),
                 outputs__, input.pointer, weight.pointer, bias.pointer, running_mean.pointer, running_var.pointer, use_input_stats, momentum, eps, cudnn_enabled)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export int_repr


"""
    int_repr(self::Tensor)

 Wrapper of C++ function void atg\\_int\\_repr(tensor *out\\_\\_, tensor self)
"""
function int_repr(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_int_repr, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export inverse


"""
    inverse(self::Tensor)

 Wrapper of C++ function void atg\\_inverse(tensor *out\\_\\_, tensor self)
"""
function inverse(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_inverse, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export inverse_out


"""
    inverse_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_inverse\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function inverse_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_inverse_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export irfft


"""
    irfft(self::Tensor, signal_ndim::Int64, normalized::Int, onesided::Int, signal_sizes_data::Array{Int64})

 Wrapper of C++ function void atg\\_irfft(tensor *out\\_\\_, tensor self, int64\\_t signal\\_ndim, int normalized, int onesided, int64\\_t *signal\\_sizes\\_data, int signal\\_sizes\\_len)
"""
function irfft(self::Tensor, signal_ndim::Int64, normalized::Int, onesided::Int, signal_sizes_data::Array{Int64})
    outputs__ = Int[0]
    signal_sizes_len = length(signal_sizes_data)
    __cret = ccall((:atg_irfft, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint, Cint, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, signal_ndim, normalized, onesided, signal_sizes_data, signal_sizes_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export isclose


"""
    isclose(self::Tensor, other::Tensor, rtol::Float64, atol::Float64, equal_nan::Int)

 Wrapper of C++ function void atg\\_isclose(tensor *out\\_\\_, tensor self, tensor other, double rtol, double atol, int equal\\_nan)
"""
function isclose(self::Tensor, other::Tensor, rtol::Float64, atol::Float64, equal_nan::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_isclose, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Cdouble, Cint),
                 outputs__, self.pointer, other.pointer, rtol, atol, equal_nan)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.isfinite


"""
    isfinite(self::Tensor)

 Wrapper of C++ function void atg\\_isfinite(tensor *out\\_\\_, tensor self)
"""
function isfinite(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_isfinite, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.isnan


"""
    isnan(self::Tensor)

 Wrapper of C++ function void atg\\_isnan(tensor *out\\_\\_, tensor self)
"""
function isnan(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_isnan, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export kl_div


"""
    kl_div(self::Tensor, target::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_kl\\_div(tensor *out\\_\\_, tensor self, tensor target, int64\\_t reduction)
"""
function kl_div(self::Tensor, target::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_kl_div, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, target.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export kl_div_backward


"""
    kl_div_backward(grad_output::Tensor, self::Tensor, target::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_kl\\_div\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, tensor target, int64\\_t reduction)
"""
function kl_div_backward(grad_output::Tensor, self::Tensor, target::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_kl_div_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, grad_output.pointer, self.pointer, target.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export kthvalue


"""
    kthvalue(self::Tensor, k::Int64, dim::Int64, keepdim::Int)

 Wrapper of C++ function void atg\\_kthvalue(tensor *out\\_\\_, tensor self, int64\\_t k, int64\\_t dim, int keepdim)
"""
function kthvalue(self::Tensor, k::Int64, dim::Int64, keepdim::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_kthvalue, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Cint),
                 outputs__, self.pointer, k, dim, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export kthvalue_out


"""
    kthvalue_out(values::Tensor, indices::Tensor, self::Tensor, k::Int64, dim::Int64, keepdim::Int)

 Wrapper of C++ function void atg\\_kthvalue\\_out(tensor *out\\_\\_, tensor values, tensor indices, tensor self, int64\\_t k, int64\\_t dim, int keepdim)
"""
function kthvalue_out(values::Tensor, indices::Tensor, self::Tensor, k::Int64, dim::Int64, keepdim::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_kthvalue_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Cint),
                 outputs__, values.pointer, indices.pointer, self.pointer, k, dim, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export l1_loss


"""
    l1_loss(self::Tensor, target::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_l1\\_loss(tensor *out\\_\\_, tensor self, tensor target, int64\\_t reduction)
"""
function l1_loss(self::Tensor, target::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_l1_loss, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, target.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export l1_loss_backward


"""
    l1_loss_backward(grad_output::Tensor, self::Tensor, target::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_l1\\_loss\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, tensor target, int64\\_t reduction)
"""
function l1_loss_backward(grad_output::Tensor, self::Tensor, target::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_l1_loss_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, grad_output.pointer, self.pointer, target.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export l1_loss_backward_out


"""
    l1_loss_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, target::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_l1\\_loss\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, tensor target, int64\\_t reduction)
"""
function l1_loss_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, target::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_l1_loss_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, target.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export l1_loss_out


"""
    l1_loss_out(out::Tensor, self::Tensor, target::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_l1\\_loss\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor target, int64\\_t reduction)
"""
function l1_loss_out(out::Tensor, self::Tensor, target::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_l1_loss_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, out.pointer, self.pointer, target.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export layer_norm


"""
    layer_norm(input::Tensor, normalized_shape_data::Array{Int64}, weight::Tensor, bias::Tensor, eps::Float64, cudnn_enable::Int)

 Wrapper of C++ function void atg\\_layer\\_norm(tensor *out\\_\\_, tensor input, int64\\_t *normalized\\_shape\\_data, int normalized\\_shape\\_len, tensor weight, tensor bias, double eps, int cudnn\\_enable)
"""
function layer_norm(input::Tensor, normalized_shape_data::Array{Int64}, weight::Tensor, bias::Tensor, eps::Float64, cudnn_enable::Int)
    outputs__ = Int[0]
    normalized_shape_len = length(normalized_shape_data)
    __cret = ccall((:atg_layer_norm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Cint),
                 outputs__, input.pointer, normalized_shape_data, normalized_shape_len, weight.pointer, bias.pointer, eps, cudnn_enable)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export le


"""
    le(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_le(tensor *out\\_\\_, tensor self, scalar other)
"""
function le(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_le, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export le1


"""
    le1(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_le1(tensor *out\\_\\_, tensor self, tensor other)
"""
function le1(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_le1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export le!


"""
    le!(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_le\\_(tensor *out\\_\\_, tensor self, scalar other)
"""
function le!(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_le_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export le1!


"""
    le1!(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_le\\_1(tensor *out\\_\\_, tensor self, tensor other)
"""
function le1!(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_le_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export le_out


"""
    le_out(out::Tensor, self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_le\\_out(tensor *out\\_\\_, tensor out, tensor self, scalar other)
"""
function le_out(out::Tensor, self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_le_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export le_out1


"""
    le_out1(out::Tensor, self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_le\\_out1(tensor *out\\_\\_, tensor out, tensor self, tensor other)
"""
function le_out1(out::Tensor, self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_le_out1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export leaky_relu


"""
    leaky_relu(self::Tensor)

 Wrapper of C++ function void atg\\_leaky\\_relu(tensor *out\\_\\_, tensor self)
"""
function leaky_relu(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_leaky_relu, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export leaky_relu!


"""
    leaky_relu!(self::Tensor)

 Wrapper of C++ function void atg\\_leaky\\_relu\\_(tensor *out\\_\\_, tensor self)
"""
function leaky_relu!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_leaky_relu_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export leaky_relu_backward


"""
    leaky_relu_backward(grad_output::Tensor, self::Tensor, negative_slope::TorchNumber)

 Wrapper of C++ function void atg\\_leaky\\_relu\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, scalar negative\\_slope)
"""
function leaky_relu_backward(grad_output::Tensor, self::Tensor, negative_slope::TorchNumber)
    outputs__ = Int[0]
    negative_slope_s_ = Scalar(negative_slope)
    __cret = ccall((:atg_leaky_relu_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_output.pointer, self.pointer, negative_slope_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export leaky_relu_backward_out


"""
    leaky_relu_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, negative_slope::TorchNumber)

 Wrapper of C++ function void atg\\_leaky\\_relu\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, scalar negative\\_slope)
"""
function leaky_relu_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, negative_slope::TorchNumber)
    outputs__ = Int[0]
    negative_slope_s_ = Scalar(negative_slope)
    __cret = ccall((:atg_leaky_relu_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, negative_slope_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export leaky_relu_out


"""
    leaky_relu_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_leaky\\_relu\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function leaky_relu_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_leaky_relu_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export lerp


"""
    lerp(self::Tensor, end_::Tensor, weight::TorchNumber)

 Wrapper of C++ function void atg\\_lerp(tensor *out\\_\\_, tensor self, tensor end, scalar weight)
"""
function lerp(self::Tensor, end_::Tensor, weight::TorchNumber)
    outputs__ = Int[0]
    weight_s_ = Scalar(weight)
    __cret = ccall((:atg_lerp, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, end_.pointer, weight_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export lerp1


"""
    lerp1(self::Tensor, end_::Tensor, weight::Tensor)

 Wrapper of C++ function void atg\\_lerp1(tensor *out\\_\\_, tensor self, tensor end, tensor weight)
"""
function lerp1(self::Tensor, end_::Tensor, weight::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_lerp1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, end_.pointer, weight.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export lerp!


"""
    lerp!(self::Tensor, end_::Tensor, weight::TorchNumber)

 Wrapper of C++ function void atg\\_lerp\\_(tensor *out\\_\\_, tensor self, tensor end, scalar weight)
"""
function lerp!(self::Tensor, end_::Tensor, weight::TorchNumber)
    outputs__ = Int[0]
    weight_s_ = Scalar(weight)
    __cret = ccall((:atg_lerp_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, end_.pointer, weight_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export lerp1!


"""
    lerp1!(self::Tensor, end_::Tensor, weight::Tensor)

 Wrapper of C++ function void atg\\_lerp\\_1(tensor *out\\_\\_, tensor self, tensor end, tensor weight)
"""
function lerp1!(self::Tensor, end_::Tensor, weight::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_lerp_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, end_.pointer, weight.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export lerp_out


"""
    lerp_out(out::Tensor, self::Tensor, end_::Tensor, weight::TorchNumber)

 Wrapper of C++ function void atg\\_lerp\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor end, scalar weight)
"""
function lerp_out(out::Tensor, self::Tensor, end_::Tensor, weight::TorchNumber)
    outputs__ = Int[0]
    weight_s_ = Scalar(weight)
    __cret = ccall((:atg_lerp_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, end_.pointer, weight_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export lerp_out1


"""
    lerp_out1(out::Tensor, self::Tensor, end_::Tensor, weight::Tensor)

 Wrapper of C++ function void atg\\_lerp\\_out1(tensor *out\\_\\_, tensor out, tensor self, tensor end, tensor weight)
"""
function lerp_out1(out::Tensor, self::Tensor, end_::Tensor, weight::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_lerp_out1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, end_.pointer, weight.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export lgamma


"""
    lgamma(self::Tensor)

 Wrapper of C++ function void atg\\_lgamma(tensor *out\\_\\_, tensor self)
"""
function lgamma(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_lgamma, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export lgamma!


"""
    lgamma!(self::Tensor)

 Wrapper of C++ function void atg\\_lgamma\\_(tensor *out\\_\\_, tensor self)
"""
function lgamma!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_lgamma_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export lgamma_out


"""
    lgamma_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_lgamma\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function lgamma_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_lgamma_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export linear


"""
    linear(input::Tensor, weight::Tensor, bias::Tensor)

 Wrapper of C++ function void atg\\_linear(tensor *out\\_\\_, tensor input, tensor weight, tensor bias)
"""
function linear(input::Tensor, weight::Tensor, bias::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_linear, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, input.pointer, weight.pointer, bias.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export linspace


"""
    linspace(start::TorchNumber, end_::TorchNumber, steps::Int64, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_linspace(tensor *out\\_\\_, scalar start, scalar end, int64\\_t steps, int options\\_kind, int options\\_device)
"""
function linspace(start::TorchNumber, end_::TorchNumber, steps::Int64, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    start_s_ = Scalar(start)
    end__s_ = Scalar(end_)
    __cret = ccall((:atg_linspace, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint, Cint),
                 outputs__, start_s_.pointer, end__s_.pointer, steps, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export linspace_out


"""
    linspace_out(out::Tensor, start::TorchNumber, end_::TorchNumber, steps::Int64)

 Wrapper of C++ function void atg\\_linspace\\_out(tensor *out\\_\\_, tensor out, scalar start, scalar end, int64\\_t steps)
"""
function linspace_out(out::Tensor, start::TorchNumber, end_::TorchNumber, steps::Int64)
    outputs__ = Int[0]
    start_s_ = Scalar(start)
    end__s_ = Scalar(end_)
    __cret = ccall((:atg_linspace_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, out.pointer, start_s_.pointer, end__s_.pointer, steps)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.log


"""
    log(self::Tensor)

 Wrapper of C++ function void atg\\_log(tensor *out\\_\\_, tensor self)
"""
function log(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_log, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.log10


"""
    log10(self::Tensor)

 Wrapper of C++ function void atg\\_log10(tensor *out\\_\\_, tensor self)
"""
function log10(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_log10, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export log10!


"""
    log10!(self::Tensor)

 Wrapper of C++ function void atg\\_log10\\_(tensor *out\\_\\_, tensor self)
"""
function log10!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_log10_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export log10_out


"""
    log10_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_log10\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function log10_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_log10_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.log1p


"""
    log1p(self::Tensor)

 Wrapper of C++ function void atg\\_log1p(tensor *out\\_\\_, tensor self)
"""
function log1p(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_log1p, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export log1p!


"""
    log1p!(self::Tensor)

 Wrapper of C++ function void atg\\_log1p\\_(tensor *out\\_\\_, tensor self)
"""
function log1p!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_log1p_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export log1p_out


"""
    log1p_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_log1p\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function log1p_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_log1p_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.log2


"""
    log2(self::Tensor)

 Wrapper of C++ function void atg\\_log2(tensor *out\\_\\_, tensor self)
"""
function log2(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_log2, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export log2!


"""
    log2!(self::Tensor)

 Wrapper of C++ function void atg\\_log2\\_(tensor *out\\_\\_, tensor self)
"""
function log2!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_log2_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export log2_out


"""
    log2_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_log2\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function log2_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_log2_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export log!


"""
    log!(self::Tensor)

 Wrapper of C++ function void atg\\_log\\_(tensor *out\\_\\_, tensor self)
"""
function log!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_log_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export log_normal!


"""
    log_normal!(self::Tensor, mean::Float64, std::Float64)

 Wrapper of C++ function void atg\\_log\\_normal\\_(tensor *out\\_\\_, tensor self, double mean, double std)
"""
function log_normal!(self::Tensor, mean::Float64, std::Float64)
    outputs__ = Int[0]
    __cret = ccall((:atg_log_normal_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Cdouble),
                 outputs__, self.pointer, mean, std)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export log_out


"""
    log_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_log\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function log_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_log_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export log_sigmoid


"""
    log_sigmoid(self::Tensor)

 Wrapper of C++ function void atg\\_log\\_sigmoid(tensor *out\\_\\_, tensor self)
"""
function log_sigmoid(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_log_sigmoid, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export log_sigmoid_backward


"""
    log_sigmoid_backward(grad_output::Tensor, self::Tensor, buffer::Tensor)

 Wrapper of C++ function void atg\\_log\\_sigmoid\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, tensor buffer)
"""
function log_sigmoid_backward(grad_output::Tensor, self::Tensor, buffer::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_log_sigmoid_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_output.pointer, self.pointer, buffer.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export log_sigmoid_backward_out


"""
    log_sigmoid_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, buffer::Tensor)

 Wrapper of C++ function void atg\\_log\\_sigmoid\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, tensor buffer)
"""
function log_sigmoid_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, buffer::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_log_sigmoid_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, buffer.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export log_sigmoid_out


"""
    log_sigmoid_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_log\\_sigmoid\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function log_sigmoid_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_log_sigmoid_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export log_softmax


"""
    log_softmax(self::Tensor, dim::Int64, dtype::Int)

 Wrapper of C++ function void atg\\_log\\_softmax(tensor *out\\_\\_, tensor self, int64\\_t dim, int dtype)
"""
function log_softmax(self::Tensor, dim::Int64, dtype::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_log_softmax, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, self.pointer, dim, dtype)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export logdet


"""
    logdet(self::Tensor)

 Wrapper of C++ function void atg\\_logdet(tensor *out\\_\\_, tensor self)
"""
function logdet(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_logdet, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export logical_not


"""
    logical_not(self::Tensor)

 Wrapper of C++ function void atg\\_logical\\_not(tensor *out\\_\\_, tensor self)
"""
function logical_not(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_logical_not, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export logical_not!


"""
    logical_not!(self::Tensor)

 Wrapper of C++ function void atg\\_logical\\_not\\_(tensor *out\\_\\_, tensor self)
"""
function logical_not!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_logical_not_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export logical_not_out


"""
    logical_not_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_logical\\_not\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function logical_not_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_logical_not_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export logical_xor


"""
    logical_xor(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_logical\\_xor(tensor *out\\_\\_, tensor self, tensor other)
"""
function logical_xor(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_logical_xor, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export logical_xor!


"""
    logical_xor!(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_logical\\_xor\\_(tensor *out\\_\\_, tensor self, tensor other)
"""
function logical_xor!(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_logical_xor_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export logical_xor_out


"""
    logical_xor_out(out::Tensor, self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_logical\\_xor\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor other)
"""
function logical_xor_out(out::Tensor, self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_logical_xor_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export logspace


"""
    logspace(start::TorchNumber, end_::TorchNumber, steps::Int64, base::Float64, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_logspace(tensor *out\\_\\_, scalar start, scalar end, int64\\_t steps, double base, int options\\_kind, int options\\_device)
"""
function logspace(start::TorchNumber, end_::TorchNumber, steps::Int64, base::Float64, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    start_s_ = Scalar(start)
    end__s_ = Scalar(end_)
    __cret = ccall((:atg_logspace, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cdouble, Cint, Cint),
                 outputs__, start_s_.pointer, end__s_.pointer, steps, base, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export logspace_out


"""
    logspace_out(out::Tensor, start::TorchNumber, end_::TorchNumber, steps::Int64, base::Float64)

 Wrapper of C++ function void atg\\_logspace\\_out(tensor *out\\_\\_, tensor out, scalar start, scalar end, int64\\_t steps, double base)
"""
function logspace_out(out::Tensor, start::TorchNumber, end_::TorchNumber, steps::Int64, base::Float64)
    outputs__ = Int[0]
    start_s_ = Scalar(start)
    end__s_ = Scalar(end_)
    __cret = ccall((:atg_logspace_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cdouble),
                 outputs__, out.pointer, start_s_.pointer, end__s_.pointer, steps, base)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export logsumexp


"""
    logsumexp(self::Tensor, dim_data::Array{Int64}, keepdim::Int)

 Wrapper of C++ function void atg\\_logsumexp(tensor *out\\_\\_, tensor self, int64\\_t *dim\\_data, int dim\\_len, int keepdim)
"""
function logsumexp(self::Tensor, dim_data::Array{Int64}, keepdim::Int)
    outputs__ = Int[0]
    dim_len = length(dim_data)
    __cret = ccall((:atg_logsumexp, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, dim_data, dim_len, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export logsumexp_out


"""
    logsumexp_out(out::Tensor, self::Tensor, dim_data::Array{Int64}, keepdim::Int)

 Wrapper of C++ function void atg\\_logsumexp\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *dim\\_data, int dim\\_len, int keepdim)
"""
function logsumexp_out(out::Tensor, self::Tensor, dim_data::Array{Int64}, keepdim::Int)
    outputs__ = Int[0]
    dim_len = length(dim_data)
    __cret = ccall((:atg_logsumexp_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, out.pointer, self.pointer, dim_data, dim_len, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export lstm


"""
    lstm(input::Tensor, hx_data::Array{Tensor{T,N}}, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int, batch_first::Int)

 Wrapper of C++ function void atg\\_lstm(tensor *out\\_\\_, tensor input, tensor *hx\\_data, int hx\\_len, tensor *params\\_data, int params\\_len, int has\\_biases, int64\\_t num\\_layers, double dropout, int train, int bidirectional, int batch\\_first)
"""
function lstm(input::Tensor, hx_data::Array{Tensor{T,N}}, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int, batch_first::Int) where {T,N}
    outputs__ = Int[0, 0, 0]
    hx_data_ta_ = map(x->x.pointer, hx_data)
    hx_len = length(hx_data)
    params_data_ta_ = map(x->x.pointer, params_data)
    params_len = length(params_data)
    __cret = ccall((:atg_lstm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint, Clonglong, Cdouble, Cint, Cint, Cint),
                 outputs__, input.pointer, hx_data_ta_, hx_len, params_data_ta_, params_len, has_biases, num_layers, dropout, train, bidirectional, batch_first)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    __o_3 = tensor_from_ptr(Ptr{Cvoid}(outputs__[3]))
    return __o_1, __o_2, __o_3
end



export lstm1


"""
    lstm1(data::Tensor, batch_sizes::Tensor, hx_data::Array{Tensor{T,N}}, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int)

 Wrapper of C++ function void atg\\_lstm1(tensor *out\\_\\_, tensor data, tensor batch\\_sizes, tensor *hx\\_data, int hx\\_len, tensor *params\\_data, int params\\_len, int has\\_biases, int64\\_t num\\_layers, double dropout, int train, int bidirectional)
"""
function lstm1(data::Tensor, batch_sizes::Tensor, hx_data::Array{Tensor{T,N}}, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int) where {T,N}
    outputs__ = Int[0, 0, 0]
    hx_data_ta_ = map(x->x.pointer, hx_data)
    hx_len = length(hx_data)
    params_data_ta_ = map(x->x.pointer, params_data)
    params_len = length(params_data)
    __cret = ccall((:atg_lstm1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint, Clonglong, Cdouble, Cint, Cint),
                 outputs__, data.pointer, batch_sizes.pointer, hx_data_ta_, hx_len, params_data_ta_, params_len, has_biases, num_layers, dropout, train, bidirectional)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    __o_3 = tensor_from_ptr(Ptr{Cvoid}(outputs__[3]))
    return __o_1, __o_2, __o_3
end



export lstm_cell


"""
    lstm_cell(input::Tensor, hx_data::Array{Tensor{T,N}}, w_ih::Tensor, w_hh::Tensor, b_ih::Tensor, b_hh::Tensor)

 Wrapper of C++ function void atg\\_lstm\\_cell(tensor *out\\_\\_, tensor input, tensor *hx\\_data, int hx\\_len, tensor w\\_ih, tensor w\\_hh, tensor b\\_ih, tensor b\\_hh)
"""
function lstm_cell(input::Tensor, hx_data::Array{Tensor{T,N}}, w_ih::Tensor, w_hh::Tensor, b_ih::Tensor, b_hh::Tensor) where {T,N}
    outputs__ = Int[0, 0]
    hx_data_ta_ = map(x->x.pointer, hx_data)
    hx_len = length(hx_data)
    __cret = ccall((:atg_lstm_cell, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, input.pointer, hx_data_ta_, hx_len, w_ih.pointer, w_hh.pointer, b_ih.pointer, b_hh.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export lstsq


"""
    lstsq(self::Tensor, A::Tensor)

 Wrapper of C++ function void atg\\_lstsq(tensor *out\\_\\_, tensor self, tensor A)
"""
function lstsq(self::Tensor, A::Tensor)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_lstsq, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, A.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export lstsq_out


"""
    lstsq_out(X::Tensor, qr::Tensor, self::Tensor, A::Tensor)

 Wrapper of C++ function void atg\\_lstsq\\_out(tensor *out\\_\\_, tensor X, tensor qr, tensor self, tensor A)
"""
function lstsq_out(X::Tensor, qr::Tensor, self::Tensor, A::Tensor)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_lstsq_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, X.pointer, qr.pointer, self.pointer, A.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export lt


"""
    lt(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_lt(tensor *out\\_\\_, tensor self, scalar other)
"""
function lt(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_lt, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export lt1


"""
    lt1(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_lt1(tensor *out\\_\\_, tensor self, tensor other)
"""
function lt1(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_lt1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export lt!


"""
    lt!(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_lt\\_(tensor *out\\_\\_, tensor self, scalar other)
"""
function lt!(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_lt_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export lt1!


"""
    lt1!(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_lt\\_1(tensor *out\\_\\_, tensor self, tensor other)
"""
function lt1!(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_lt_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export lt_out


"""
    lt_out(out::Tensor, self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_lt\\_out(tensor *out\\_\\_, tensor out, tensor self, scalar other)
"""
function lt_out(out::Tensor, self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_lt_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export lt_out1


"""
    lt_out1(out::Tensor, self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_lt\\_out1(tensor *out\\_\\_, tensor out, tensor self, tensor other)
"""
function lt_out1(out::Tensor, self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_lt_out1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export lu_solve


"""
    lu_solve(self::Tensor, LU_data::Tensor, LU_pivots::Tensor)

 Wrapper of C++ function void atg\\_lu\\_solve(tensor *out\\_\\_, tensor self, tensor LU\\_data, tensor LU\\_pivots)
"""
function lu_solve(self::Tensor, LU_data::Tensor, LU_pivots::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_lu_solve, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, LU_data.pointer, LU_pivots.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export lu_solve_out


"""
    lu_solve_out(out::Tensor, self::Tensor, LU_data::Tensor, LU_pivots::Tensor)

 Wrapper of C++ function void atg\\_lu\\_solve\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor LU\\_data, tensor LU\\_pivots)
"""
function lu_solve_out(out::Tensor, self::Tensor, LU_data::Tensor, LU_pivots::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_lu_solve_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, LU_data.pointer, LU_pivots.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export margin_ranking_loss


"""
    margin_ranking_loss(input1::Tensor, input2::Tensor, target::Tensor, margin::Float64, reduction::Int64)

 Wrapper of C++ function void atg\\_margin\\_ranking\\_loss(tensor *out\\_\\_, tensor input1, tensor input2, tensor target, double margin, int64\\_t reduction)
"""
function margin_ranking_loss(input1::Tensor, input2::Tensor, target::Tensor, margin::Float64, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_margin_ranking_loss, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Clonglong),
                 outputs__, input1.pointer, input2.pointer, target.pointer, margin, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export masked_fill


"""
    masked_fill(self::Tensor, mask::Tensor, value::TorchNumber)

 Wrapper of C++ function void atg\\_masked\\_fill(tensor *out\\_\\_, tensor self, tensor mask, scalar value)
"""
function masked_fill(self::Tensor, mask::Tensor, value::TorchNumber)
    outputs__ = Int[0]
    value_s_ = Scalar(value)
    __cret = ccall((:atg_masked_fill, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, mask.pointer, value_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export masked_fill1


"""
    masked_fill1(self::Tensor, mask::Tensor, value::Tensor)

 Wrapper of C++ function void atg\\_masked\\_fill1(tensor *out\\_\\_, tensor self, tensor mask, tensor value)
"""
function masked_fill1(self::Tensor, mask::Tensor, value::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_masked_fill1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, mask.pointer, value.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export masked_fill!


"""
    masked_fill!(self::Tensor, mask::Tensor, value::TorchNumber)

 Wrapper of C++ function void atg\\_masked\\_fill\\_(tensor *out\\_\\_, tensor self, tensor mask, scalar value)
"""
function masked_fill!(self::Tensor, mask::Tensor, value::TorchNumber)
    outputs__ = Int[0]
    value_s_ = Scalar(value)
    __cret = ccall((:atg_masked_fill_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, mask.pointer, value_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export masked_fill1!


"""
    masked_fill1!(self::Tensor, mask::Tensor, value::Tensor)

 Wrapper of C++ function void atg\\_masked\\_fill\\_1(tensor *out\\_\\_, tensor self, tensor mask, tensor value)
"""
function masked_fill1!(self::Tensor, mask::Tensor, value::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_masked_fill_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, mask.pointer, value.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export masked_scatter


"""
    masked_scatter(self::Tensor, mask::Tensor, source::Tensor)

 Wrapper of C++ function void atg\\_masked\\_scatter(tensor *out\\_\\_, tensor self, tensor mask, tensor source)
"""
function masked_scatter(self::Tensor, mask::Tensor, source::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_masked_scatter, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, mask.pointer, source.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export masked_scatter!


"""
    masked_scatter!(self::Tensor, mask::Tensor, source::Tensor)

 Wrapper of C++ function void atg\\_masked\\_scatter\\_(tensor *out\\_\\_, tensor self, tensor mask, tensor source)
"""
function masked_scatter!(self::Tensor, mask::Tensor, source::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_masked_scatter_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, mask.pointer, source.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export masked_select


"""
    masked_select(self::Tensor, mask::Tensor)

 Wrapper of C++ function void atg\\_masked\\_select(tensor *out\\_\\_, tensor self, tensor mask)
"""
function masked_select(self::Tensor, mask::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_masked_select, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, mask.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export masked_select_out


"""
    masked_select_out(out::Tensor, self::Tensor, mask::Tensor)

 Wrapper of C++ function void atg\\_masked\\_select\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor mask)
"""
function masked_select_out(out::Tensor, self::Tensor, mask::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_masked_select_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, mask.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export matmul


"""
    matmul(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_matmul(tensor *out\\_\\_, tensor self, tensor other)
"""
function matmul(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_matmul, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export matmul_out


"""
    matmul_out(out::Tensor, self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_matmul\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor other)
"""
function matmul_out(out::Tensor, self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_matmul_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export matrix_power


"""
    matrix_power(self::Tensor, n::Int64)

 Wrapper of C++ function void atg\\_matrix\\_power(tensor *out\\_\\_, tensor self, int64\\_t n)
"""
function matrix_power(self::Tensor, n::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_matrix_power, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, n)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export matrix_rank


"""
    matrix_rank(self::Tensor, symmetric::Int)

 Wrapper of C++ function void atg\\_matrix\\_rank(tensor *out\\_\\_, tensor self, int symmetric)
"""
function matrix_rank(self::Tensor, symmetric::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_matrix_rank, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, symmetric)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export matrix_rank1


"""
    matrix_rank1(self::Tensor, tol::Float64, symmetric::Int)

 Wrapper of C++ function void atg\\_matrix\\_rank1(tensor *out\\_\\_, tensor self, double tol, int symmetric)
"""
function matrix_rank1(self::Tensor, tol::Float64, symmetric::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_matrix_rank1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Cint),
                 outputs__, self.pointer, tol, symmetric)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.max


"""
    max(self::Tensor)

 Wrapper of C++ function void atg\\_max(tensor *out\\_\\_, tensor self)
"""
function max(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_max, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export max1


"""
    max1(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_max1(tensor *out\\_\\_, tensor self, tensor other)
"""
function max1(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_max1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export max2


"""
    max2(self::Tensor, dim::Int64, keepdim::Int)

 Wrapper of C++ function void atg\\_max2(tensor *out\\_\\_, tensor self, int64\\_t dim, int keepdim)
"""
function max2(self::Tensor, dim::Int64, keepdim::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_max2, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, self.pointer, dim, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export max_out


"""
    max_out(out::Tensor, self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_max\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor other)
"""
function max_out(out::Tensor, self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_max_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export max_out1


"""
    max_out1(max::Tensor, max_values::Tensor, self::Tensor, dim::Int64, keepdim::Int)

 Wrapper of C++ function void atg\\_max\\_out1(tensor *out\\_\\_, tensor max, tensor max\\_values, tensor self, int64\\_t dim, int keepdim)
"""
function max_out1(max::Tensor, max_values::Tensor, self::Tensor, dim::Int64, keepdim::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_max_out1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, max.pointer, max_values.pointer, self.pointer, dim, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export max_pool1d


"""
    max_pool1d(self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int)

 Wrapper of C++ function void atg\\_max\\_pool1d(tensor *out\\_\\_, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int ceil\\_mode)
"""
function max_pool1d(self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int)
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_max_pool1d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, dilation_data, dilation_len, ceil_mode)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export max_pool1d_with_indices


"""
    max_pool1d_with_indices(self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int)

 Wrapper of C++ function void atg\\_max\\_pool1d\\_with\\_indices(tensor *out\\_\\_, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int ceil\\_mode)
"""
function max_pool1d_with_indices(self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int)
    outputs__ = Int[0, 0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_max_pool1d_with_indices, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, dilation_data, dilation_len, ceil_mode)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export max_pool2d


"""
    max_pool2d(self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int)

 Wrapper of C++ function void atg\\_max\\_pool2d(tensor *out\\_\\_, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int ceil\\_mode)
"""
function max_pool2d(self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int)
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_max_pool2d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, dilation_data, dilation_len, ceil_mode)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export max_pool2d_with_indices


"""
    max_pool2d_with_indices(self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int)

 Wrapper of C++ function void atg\\_max\\_pool2d\\_with\\_indices(tensor *out\\_\\_, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int ceil\\_mode)
"""
function max_pool2d_with_indices(self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int)
    outputs__ = Int[0, 0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_max_pool2d_with_indices, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, dilation_data, dilation_len, ceil_mode)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export max_pool2d_with_indices_backward


"""
    max_pool2d_with_indices_backward(grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int, indices::Tensor)

 Wrapper of C++ function void atg\\_max\\_pool2d\\_with\\_indices\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int ceil\\_mode, tensor indices)
"""
function max_pool2d_with_indices_backward(grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int, indices::Tensor)
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_max_pool2d_with_indices_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint, Ptr{Cvoid}),
                 outputs__, grad_output.pointer, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, dilation_data, dilation_len, ceil_mode, indices.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export max_pool2d_with_indices_backward_out


"""
    max_pool2d_with_indices_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int, indices::Tensor)

 Wrapper of C++ function void atg\\_max\\_pool2d\\_with\\_indices\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int ceil\\_mode, tensor indices)
"""
function max_pool2d_with_indices_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int, indices::Tensor)
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_max_pool2d_with_indices_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint, Ptr{Cvoid}),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, dilation_data, dilation_len, ceil_mode, indices.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export max_pool2d_with_indices_out


"""
    max_pool2d_with_indices_out(out::Tensor, indices::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int)

 Wrapper of C++ function void atg\\_max\\_pool2d\\_with\\_indices\\_out(tensor *out\\_\\_, tensor out, tensor indices, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int ceil\\_mode)
"""
function max_pool2d_with_indices_out(out::Tensor, indices::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int)
    outputs__ = Int[0, 0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_max_pool2d_with_indices_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint),
                 outputs__, out.pointer, indices.pointer, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, dilation_data, dilation_len, ceil_mode)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export max_pool3d


"""
    max_pool3d(self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int)

 Wrapper of C++ function void atg\\_max\\_pool3d(tensor *out\\_\\_, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int ceil\\_mode)
"""
function max_pool3d(self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int)
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_max_pool3d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, dilation_data, dilation_len, ceil_mode)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export max_pool3d_with_indices


"""
    max_pool3d_with_indices(self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int)

 Wrapper of C++ function void atg\\_max\\_pool3d\\_with\\_indices(tensor *out\\_\\_, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int ceil\\_mode)
"""
function max_pool3d_with_indices(self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int)
    outputs__ = Int[0, 0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_max_pool3d_with_indices, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, dilation_data, dilation_len, ceil_mode)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export max_pool3d_with_indices_backward


"""
    max_pool3d_with_indices_backward(grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int, indices::Tensor)

 Wrapper of C++ function void atg\\_max\\_pool3d\\_with\\_indices\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int ceil\\_mode, tensor indices)
"""
function max_pool3d_with_indices_backward(grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int, indices::Tensor)
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_max_pool3d_with_indices_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint, Ptr{Cvoid}),
                 outputs__, grad_output.pointer, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, dilation_data, dilation_len, ceil_mode, indices.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export max_pool3d_with_indices_backward_out


"""
    max_pool3d_with_indices_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int, indices::Tensor)

 Wrapper of C++ function void atg\\_max\\_pool3d\\_with\\_indices\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int ceil\\_mode, tensor indices)
"""
function max_pool3d_with_indices_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int, indices::Tensor)
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_max_pool3d_with_indices_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint, Ptr{Cvoid}),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, dilation_data, dilation_len, ceil_mode, indices.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export max_pool3d_with_indices_out


"""
    max_pool3d_with_indices_out(out::Tensor, indices::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int)

 Wrapper of C++ function void atg\\_max\\_pool3d\\_with\\_indices\\_out(tensor *out\\_\\_, tensor out, tensor indices, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int ceil\\_mode)
"""
function max_pool3d_with_indices_out(out::Tensor, indices::Tensor, self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int)
    outputs__ = Int[0, 0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_max_pool3d_with_indices_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint),
                 outputs__, out.pointer, indices.pointer, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, dilation_data, dilation_len, ceil_mode)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export max_unpool2d


"""
    max_unpool2d(self::Tensor, indices::Tensor, output_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_max\\_unpool2d(tensor *out\\_\\_, tensor self, tensor indices, int64\\_t *output\\_size\\_data, int output\\_size\\_len)
"""
function max_unpool2d(self::Tensor, indices::Tensor, output_size_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_max_unpool2d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, indices.pointer, output_size_data, output_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export max_unpool2d_backward


"""
    max_unpool2d_backward(grad_output::Tensor, self::Tensor, indices::Tensor, output_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_max\\_unpool2d\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, tensor indices, int64\\_t *output\\_size\\_data, int output\\_size\\_len)
"""
function max_unpool2d_backward(grad_output::Tensor, self::Tensor, indices::Tensor, output_size_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_max_unpool2d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, grad_output.pointer, self.pointer, indices.pointer, output_size_data, output_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export max_unpool2d_backward_out


"""
    max_unpool2d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, indices::Tensor, output_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_max\\_unpool2d\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, tensor indices, int64\\_t *output\\_size\\_data, int output\\_size\\_len)
"""
function max_unpool2d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, indices::Tensor, output_size_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_max_unpool2d_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, indices.pointer, output_size_data, output_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export max_unpool2d_out


"""
    max_unpool2d_out(out::Tensor, self::Tensor, indices::Tensor, output_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_max\\_unpool2d\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor indices, int64\\_t *output\\_size\\_data, int output\\_size\\_len)
"""
function max_unpool2d_out(out::Tensor, self::Tensor, indices::Tensor, output_size_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_max_unpool2d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, indices.pointer, output_size_data, output_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export max_unpool3d


"""
    max_unpool3d(self::Tensor, indices::Tensor, output_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_max\\_unpool3d(tensor *out\\_\\_, tensor self, tensor indices, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len)
"""
function max_unpool3d(self::Tensor, indices::Tensor, output_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    __cret = ccall((:atg_max_unpool3d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, indices.pointer, output_size_data, output_size_len, stride_data, stride_len, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export max_unpool3d_backward


"""
    max_unpool3d_backward(grad_output::Tensor, self::Tensor, indices::Tensor, output_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_max\\_unpool3d\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, tensor indices, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len)
"""
function max_unpool3d_backward(grad_output::Tensor, self::Tensor, indices::Tensor, output_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    __cret = ccall((:atg_max_unpool3d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, grad_output.pointer, self.pointer, indices.pointer, output_size_data, output_size_len, stride_data, stride_len, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export max_unpool3d_backward_out


"""
    max_unpool3d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, indices::Tensor, output_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_max\\_unpool3d\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, tensor indices, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len)
"""
function max_unpool3d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, indices::Tensor, output_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    __cret = ccall((:atg_max_unpool3d_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, indices.pointer, output_size_data, output_size_len, stride_data, stride_len, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export max_unpool3d_out


"""
    max_unpool3d_out(out::Tensor, self::Tensor, indices::Tensor, output_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_max\\_unpool3d\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor indices, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len)
"""
function max_unpool3d_out(out::Tensor, self::Tensor, indices::Tensor, output_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    __cret = ccall((:atg_max_unpool3d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, indices.pointer, output_size_data, output_size_len, stride_data, stride_len, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export max_values


"""
    max_values(self::Tensor, dim_data::Array{Int64}, keepdim::Int)

 Wrapper of C++ function void atg\\_max\\_values(tensor *out\\_\\_, tensor self, int64\\_t *dim\\_data, int dim\\_len, int keepdim)
"""
function max_values(self::Tensor, dim_data::Array{Int64}, keepdim::Int)
    outputs__ = Int[0]
    dim_len = length(dim_data)
    __cret = ccall((:atg_max_values, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, dim_data, dim_len, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export mean


"""
    mean(self::Tensor, dtype::Int)

 Wrapper of C++ function void atg\\_mean(tensor *out\\_\\_, tensor self, int dtype)
"""
function mean(self::Tensor, dtype::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_mean, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, dtype)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export mean1


"""
    mean1(self::Tensor, dim_data::Array{Int64}, keepdim::Int, dtype::Int)

 Wrapper of C++ function void atg\\_mean1(tensor *out\\_\\_, tensor self, int64\\_t *dim\\_data, int dim\\_len, int keepdim, int dtype)
"""
function mean1(self::Tensor, dim_data::Array{Int64}, keepdim::Int, dtype::Int)
    outputs__ = Int[0]
    dim_len = length(dim_data)
    __cret = ccall((:atg_mean1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, self.pointer, dim_data, dim_len, keepdim, dtype)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export mean_out


"""
    mean_out(out::Tensor, self::Tensor, dim_data::Array{Int64}, keepdim::Int, dtype::Int)

 Wrapper of C++ function void atg\\_mean\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *dim\\_data, int dim\\_len, int keepdim, int dtype)
"""
function mean_out(out::Tensor, self::Tensor, dim_data::Array{Int64}, keepdim::Int, dtype::Int)
    outputs__ = Int[0]
    dim_len = length(dim_data)
    __cret = ccall((:atg_mean_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, out.pointer, self.pointer, dim_data, dim_len, keepdim, dtype)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export median


"""
    median(self::Tensor)

 Wrapper of C++ function void atg\\_median(tensor *out\\_\\_, tensor self)
"""
function median(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_median, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export median1


"""
    median1(self::Tensor, dim::Int64, keepdim::Int)

 Wrapper of C++ function void atg\\_median1(tensor *out\\_\\_, tensor self, int64\\_t dim, int keepdim)
"""
function median1(self::Tensor, dim::Int64, keepdim::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_median1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, self.pointer, dim, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export median_out


"""
    median_out(values::Tensor, indices::Tensor, self::Tensor, dim::Int64, keepdim::Int)

 Wrapper of C++ function void atg\\_median\\_out(tensor *out\\_\\_, tensor values, tensor indices, tensor self, int64\\_t dim, int keepdim)
"""
function median_out(values::Tensor, indices::Tensor, self::Tensor, dim::Int64, keepdim::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_median_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, values.pointer, indices.pointer, self.pointer, dim, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export meshgrid


"""
    meshgrid(tensors_data::Array{Tensor{T,N}})

 Wrapper of C++ function tensor *atg\\_meshgrid(tensor *tensors\\_data, int tensors\\_len)
"""
function meshgrid(tensors_data::Array{Tensor{T,N}}) where {T,N}
    tensors_data_ta_ = map(x->x.pointer, tensors_data)
    tensors_len = length(tensors_data)
    __cret = ccall((:atg_meshgrid, :libtorch_capi),
                 Ptr{Int}, (Ptr{Cvoid}, Cint),
                 tensors_data_ta_, tensors_len)
    ptrs__, i__ = Int[], 1
    while true
        ptr__ = unsafe_load(__cret, i__)
        ptr__ == 0 && break
        push!(ptrs__, ptr__)
        i__ += 1
    end
    ccall(:free, Cvoid, (Ptr{Cvoid},), __cret)
    return map(x -> tensor_from_ptr(Ptr{Nothing}(x)), ptrs__)
end



import Base.min


"""
    min(self::Tensor)

 Wrapper of C++ function void atg\\_min(tensor *out\\_\\_, tensor self)
"""
function min(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_min, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export min1


"""
    min1(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_min1(tensor *out\\_\\_, tensor self, tensor other)
"""
function min1(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_min1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export min2


"""
    min2(self::Tensor, dim::Int64, keepdim::Int)

 Wrapper of C++ function void atg\\_min2(tensor *out\\_\\_, tensor self, int64\\_t dim, int keepdim)
"""
function min2(self::Tensor, dim::Int64, keepdim::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_min2, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, self.pointer, dim, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export min_out


"""
    min_out(out::Tensor, self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_min\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor other)
"""
function min_out(out::Tensor, self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_min_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export min_out1


"""
    min_out1(min::Tensor, min_indices::Tensor, self::Tensor, dim::Int64, keepdim::Int)

 Wrapper of C++ function void atg\\_min\\_out1(tensor *out\\_\\_, tensor min, tensor min\\_indices, tensor self, int64\\_t dim, int keepdim)
"""
function min_out1(min::Tensor, min_indices::Tensor, self::Tensor, dim::Int64, keepdim::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_min_out1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, min.pointer, min_indices.pointer, self.pointer, dim, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export min_values


"""
    min_values(self::Tensor, dim_data::Array{Int64}, keepdim::Int)

 Wrapper of C++ function void atg\\_min\\_values(tensor *out\\_\\_, tensor self, int64\\_t *dim\\_data, int dim\\_len, int keepdim)
"""
function min_values(self::Tensor, dim_data::Array{Int64}, keepdim::Int)
    outputs__ = Int[0]
    dim_len = length(dim_data)
    __cret = ccall((:atg_min_values, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, dim_data, dim_len, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export miopen_batch_norm


"""
    miopen_batch_norm(input::Tensor, weight::Tensor, bias::Tensor, running_mean::Tensor, running_var::Tensor, training::Int, exponential_average_factor::Float64, epsilon::Float64)

 Wrapper of C++ function void atg\\_miopen\\_batch\\_norm(tensor *out\\_\\_, tensor input, tensor weight, tensor bias, tensor running\\_mean, tensor running\\_var, int training, double exponential\\_average\\_factor, double epsilon)
"""
function miopen_batch_norm(input::Tensor, weight::Tensor, bias::Tensor, running_mean::Tensor, running_var::Tensor, training::Int, exponential_average_factor::Float64, epsilon::Float64)
    outputs__ = Int[0, 0, 0]
    __cret = ccall((:atg_miopen_batch_norm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cdouble, Cdouble),
                 outputs__, input.pointer, weight.pointer, bias.pointer, running_mean.pointer, running_var.pointer, training, exponential_average_factor, epsilon)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    __o_3 = tensor_from_ptr(Ptr{Cvoid}(outputs__[3]))
    return __o_1, __o_2, __o_3
end



export miopen_batch_norm_backward


"""
    miopen_batch_norm_backward(input::Tensor, grad_output::Tensor, weight::Tensor, running_mean::Tensor, running_var::Tensor, save_mean::Tensor, save_var::Tensor, epsilon::Float64)

 Wrapper of C++ function void atg\\_miopen\\_batch\\_norm\\_backward(tensor *out\\_\\_, tensor input, tensor grad\\_output, tensor weight, tensor running\\_mean, tensor running\\_var, tensor save\\_mean, tensor save\\_var, double epsilon)
"""
function miopen_batch_norm_backward(input::Tensor, grad_output::Tensor, weight::Tensor, running_mean::Tensor, running_var::Tensor, save_mean::Tensor, save_var::Tensor, epsilon::Float64)
    outputs__ = Int[0, 0, 0]
    __cret = ccall((:atg_miopen_batch_norm_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cdouble),
                 outputs__, input.pointer, grad_output.pointer, weight.pointer, running_mean.pointer, running_var.pointer, save_mean.pointer, save_var.pointer, epsilon)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    __o_3 = tensor_from_ptr(Ptr{Cvoid}(outputs__[3]))
    return __o_1, __o_2, __o_3
end



export miopen_convolution


"""
    miopen_convolution(self::Tensor, weight::Tensor, bias::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)

 Wrapper of C++ function void atg\\_miopen\\_convolution(tensor *out\\_\\_, tensor self, tensor weight, tensor bias, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t groups, int benchmark, int deterministic)
"""
function miopen_convolution(self::Tensor, weight::Tensor, bias::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)
    outputs__ = Int[0]
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_miopen_convolution, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong, Cint, Cint),
                 outputs__, self.pointer, weight.pointer, bias.pointer, padding_data, padding_len, stride_data, stride_len, dilation_data, dilation_len, groups, benchmark, deterministic)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export miopen_convolution_backward_bias


"""
    miopen_convolution_backward_bias(grad_output::Tensor)

 Wrapper of C++ function void atg\\_miopen\\_convolution\\_backward\\_bias(tensor *out\\_\\_, tensor grad\\_output)
"""
function miopen_convolution_backward_bias(grad_output::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_miopen_convolution_backward_bias, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_output.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export miopen_convolution_backward_input


"""
    miopen_convolution_backward_input(self_size_data::Array{Int64}, grad_output::Tensor, weight::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)

 Wrapper of C++ function void atg\\_miopen\\_convolution\\_backward\\_input(tensor *out\\_\\_, int64\\_t *self\\_size\\_data, int self\\_size\\_len, tensor grad\\_output, tensor weight, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t groups, int benchmark, int deterministic)
"""
function miopen_convolution_backward_input(self_size_data::Array{Int64}, grad_output::Tensor, weight::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)
    outputs__ = Int[0]
    self_size_len = length(self_size_data)
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_miopen_convolution_backward_input, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong, Cint, Cint),
                 outputs__, self_size_data, self_size_len, grad_output.pointer, weight.pointer, padding_data, padding_len, stride_data, stride_len, dilation_data, dilation_len, groups, benchmark, deterministic)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export miopen_convolution_backward_weight


"""
    miopen_convolution_backward_weight(weight_size_data::Array{Int64}, grad_output::Tensor, self::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)

 Wrapper of C++ function void atg\\_miopen\\_convolution\\_backward\\_weight(tensor *out\\_\\_, int64\\_t *weight\\_size\\_data, int weight\\_size\\_len, tensor grad\\_output, tensor self, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t groups, int benchmark, int deterministic)
"""
function miopen_convolution_backward_weight(weight_size_data::Array{Int64}, grad_output::Tensor, self::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)
    outputs__ = Int[0]
    weight_size_len = length(weight_size_data)
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_miopen_convolution_backward_weight, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong, Cint, Cint),
                 outputs__, weight_size_data, weight_size_len, grad_output.pointer, self.pointer, padding_data, padding_len, stride_data, stride_len, dilation_data, dilation_len, groups, benchmark, deterministic)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export miopen_convolution_transpose


"""
    miopen_convolution_transpose(self::Tensor, weight::Tensor, bias::Tensor, padding_data::Array{Int64}, output_padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)

 Wrapper of C++ function void atg\\_miopen\\_convolution\\_transpose(tensor *out\\_\\_, tensor self, tensor weight, tensor bias, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *output\\_padding\\_data, int output\\_padding\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t groups, int benchmark, int deterministic)
"""
function miopen_convolution_transpose(self::Tensor, weight::Tensor, bias::Tensor, padding_data::Array{Int64}, output_padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)
    outputs__ = Int[0]
    padding_len = length(padding_data)
    output_padding_len = length(output_padding_data)
    stride_len = length(stride_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_miopen_convolution_transpose, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong, Cint, Cint),
                 outputs__, self.pointer, weight.pointer, bias.pointer, padding_data, padding_len, output_padding_data, output_padding_len, stride_data, stride_len, dilation_data, dilation_len, groups, benchmark, deterministic)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export miopen_convolution_transpose_backward_input


"""
    miopen_convolution_transpose_backward_input(grad_output::Tensor, weight::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)

 Wrapper of C++ function void atg\\_miopen\\_convolution\\_transpose\\_backward\\_input(tensor *out\\_\\_, tensor grad\\_output, tensor weight, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t groups, int benchmark, int deterministic)
"""
function miopen_convolution_transpose_backward_input(grad_output::Tensor, weight::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)
    outputs__ = Int[0]
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_miopen_convolution_transpose_backward_input, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong, Cint, Cint),
                 outputs__, grad_output.pointer, weight.pointer, padding_data, padding_len, stride_data, stride_len, dilation_data, dilation_len, groups, benchmark, deterministic)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export miopen_convolution_transpose_backward_weight


"""
    miopen_convolution_transpose_backward_weight(weight_size_data::Array{Int64}, grad_output::Tensor, self::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)

 Wrapper of C++ function void atg\\_miopen\\_convolution\\_transpose\\_backward\\_weight(tensor *out\\_\\_, int64\\_t *weight\\_size\\_data, int weight\\_size\\_len, tensor grad\\_output, tensor self, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t groups, int benchmark, int deterministic)
"""
function miopen_convolution_transpose_backward_weight(weight_size_data::Array{Int64}, grad_output::Tensor, self::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)
    outputs__ = Int[0]
    weight_size_len = length(weight_size_data)
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_miopen_convolution_transpose_backward_weight, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong, Cint, Cint),
                 outputs__, weight_size_data, weight_size_len, grad_output.pointer, self.pointer, padding_data, padding_len, stride_data, stride_len, dilation_data, dilation_len, groups, benchmark, deterministic)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export miopen_depthwise_convolution


"""
    miopen_depthwise_convolution(self::Tensor, weight::Tensor, bias::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)

 Wrapper of C++ function void atg\\_miopen\\_depthwise\\_convolution(tensor *out\\_\\_, tensor self, tensor weight, tensor bias, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t groups, int benchmark, int deterministic)
"""
function miopen_depthwise_convolution(self::Tensor, weight::Tensor, bias::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)
    outputs__ = Int[0]
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_miopen_depthwise_convolution, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong, Cint, Cint),
                 outputs__, self.pointer, weight.pointer, bias.pointer, padding_data, padding_len, stride_data, stride_len, dilation_data, dilation_len, groups, benchmark, deterministic)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export miopen_depthwise_convolution_backward_input


"""
    miopen_depthwise_convolution_backward_input(self_size_data::Array{Int64}, grad_output::Tensor, weight::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)

 Wrapper of C++ function void atg\\_miopen\\_depthwise\\_convolution\\_backward\\_input(tensor *out\\_\\_, int64\\_t *self\\_size\\_data, int self\\_size\\_len, tensor grad\\_output, tensor weight, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t groups, int benchmark, int deterministic)
"""
function miopen_depthwise_convolution_backward_input(self_size_data::Array{Int64}, grad_output::Tensor, weight::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)
    outputs__ = Int[0]
    self_size_len = length(self_size_data)
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_miopen_depthwise_convolution_backward_input, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong, Cint, Cint),
                 outputs__, self_size_data, self_size_len, grad_output.pointer, weight.pointer, padding_data, padding_len, stride_data, stride_len, dilation_data, dilation_len, groups, benchmark, deterministic)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export miopen_depthwise_convolution_backward_weight


"""
    miopen_depthwise_convolution_backward_weight(weight_size_data::Array{Int64}, grad_output::Tensor, self::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)

 Wrapper of C++ function void atg\\_miopen\\_depthwise\\_convolution\\_backward\\_weight(tensor *out\\_\\_, int64\\_t *weight\\_size\\_data, int weight\\_size\\_len, tensor grad\\_output, tensor self, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t groups, int benchmark, int deterministic)
"""
function miopen_depthwise_convolution_backward_weight(weight_size_data::Array{Int64}, grad_output::Tensor, self::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, benchmark::Int, deterministic::Int)
    outputs__ = Int[0]
    weight_size_len = length(weight_size_data)
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_miopen_depthwise_convolution_backward_weight, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong, Cint, Cint),
                 outputs__, weight_size_data, weight_size_len, grad_output.pointer, self.pointer, padding_data, padding_len, stride_data, stride_len, dilation_data, dilation_len, groups, benchmark, deterministic)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export miopen_rnn


"""
    miopen_rnn(input::Tensor, weight_data::Array{Tensor{T,N}}, weight_stride0::Int64, hx::Tensor, cx::Tensor, mode::Int64, hidden_size::Int64, num_layers::Int64, batch_first::Int, dropout::Float64, train::Int, bidirectional::Int, batch_sizes_data::Array{Int64}, dropout_state::Tensor)

 Wrapper of C++ function void atg\\_miopen\\_rnn(tensor *out\\_\\_, tensor input, tensor *weight\\_data, int weight\\_len, int64\\_t weight\\_stride0, tensor hx, tensor cx, int64\\_t mode, int64\\_t hidden\\_size, int64\\_t num\\_layers, int batch\\_first, double dropout, int train, int bidirectional, int64\\_t *batch\\_sizes\\_data, int batch\\_sizes\\_len, tensor dropout\\_state)
"""
function miopen_rnn(input::Tensor, weight_data::Array{Tensor{T,N}}, weight_stride0::Int64, hx::Tensor, cx::Tensor, mode::Int64, hidden_size::Int64, num_layers::Int64, batch_first::Int, dropout::Float64, train::Int, bidirectional::Int, batch_sizes_data::Array{Int64}, dropout_state::Tensor) where {T,N}
    outputs__ = Int[0, 0, 0, 0, 0]
    weight_data_ta_ = map(x->x.pointer, weight_data)
    weight_len = length(weight_data)
    batch_sizes_len = length(batch_sizes_data)
    __cret = ccall((:atg_miopen_rnn, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Clonglong, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Clonglong, Cint, Cdouble, Cint, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}),
                 outputs__, input.pointer, weight_data_ta_, weight_len, weight_stride0, hx.pointer, cx.pointer, mode, hidden_size, num_layers, batch_first, dropout, train, bidirectional, batch_sizes_data, batch_sizes_len, dropout_state.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    __o_3 = tensor_from_ptr(Ptr{Cvoid}(outputs__[3]))
    __o_4 = tensor_from_ptr(Ptr{Cvoid}(outputs__[4]))
    __o_5 = tensor_from_ptr(Ptr{Cvoid}(outputs__[5]))
    return __o_1, __o_2, __o_3, __o_4, __o_5
end



export mkldnn_adaptive_avg_pool2d


"""
    mkldnn_adaptive_avg_pool2d(self::Tensor, output_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_mkldnn\\_adaptive\\_avg\\_pool2d(tensor *out\\_\\_, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len)
"""
function mkldnn_adaptive_avg_pool2d(self::Tensor, output_size_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_mkldnn_adaptive_avg_pool2d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, output_size_data, output_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export mkldnn_convolution


"""
    mkldnn_convolution(self::Tensor, weight::Tensor, bias::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64)

 Wrapper of C++ function void atg\\_mkldnn\\_convolution(tensor *out\\_\\_, tensor self, tensor weight, tensor bias, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t groups)
"""
function mkldnn_convolution(self::Tensor, weight::Tensor, bias::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64)
    outputs__ = Int[0]
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_mkldnn_convolution, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong),
                 outputs__, self.pointer, weight.pointer, bias.pointer, padding_data, padding_len, stride_data, stride_len, dilation_data, dilation_len, groups)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export mkldnn_convolution_backward_input


"""
    mkldnn_convolution_backward_input(self_size_data::Array{Int64}, grad_output::Tensor, weight::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, bias_defined::Int)

 Wrapper of C++ function void atg\\_mkldnn\\_convolution\\_backward\\_input(tensor *out\\_\\_, int64\\_t *self\\_size\\_data, int self\\_size\\_len, tensor grad\\_output, tensor weight, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t groups, int bias\\_defined)
"""
function mkldnn_convolution_backward_input(self_size_data::Array{Int64}, grad_output::Tensor, weight::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, bias_defined::Int)
    outputs__ = Int[0]
    self_size_len = length(self_size_data)
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_mkldnn_convolution_backward_input, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong, Cint),
                 outputs__, self_size_data, self_size_len, grad_output.pointer, weight.pointer, padding_data, padding_len, stride_data, stride_len, dilation_data, dilation_len, groups, bias_defined)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export mkldnn_convolution_backward_weights


"""
    mkldnn_convolution_backward_weights(weight_size_data::Array{Int64}, grad_output::Tensor, self::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, bias_defined::Int)

 Wrapper of C++ function void atg\\_mkldnn\\_convolution\\_backward\\_weights(tensor *out\\_\\_, int64\\_t *weight\\_size\\_data, int weight\\_size\\_len, tensor grad\\_output, tensor self, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t groups, int bias\\_defined)
"""
function mkldnn_convolution_backward_weights(weight_size_data::Array{Int64}, grad_output::Tensor, self::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64, bias_defined::Int)
    outputs__ = Int[0, 0]
    weight_size_len = length(weight_size_data)
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_mkldnn_convolution_backward_weights, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong, Cint),
                 outputs__, weight_size_data, weight_size_len, grad_output.pointer, self.pointer, padding_data, padding_len, stride_data, stride_len, dilation_data, dilation_len, groups, bias_defined)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export mkldnn_linear


"""
    mkldnn_linear(input::Tensor, weight::Tensor, bias::Tensor)

 Wrapper of C++ function void atg\\_mkldnn\\_linear(tensor *out\\_\\_, tensor input, tensor weight, tensor bias)
"""
function mkldnn_linear(input::Tensor, weight::Tensor, bias::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_mkldnn_linear, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, input.pointer, weight.pointer, bias.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export mkldnn_max_pool2d


"""
    mkldnn_max_pool2d(self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int)

 Wrapper of C++ function void atg\\_mkldnn\\_max\\_pool2d(tensor *out\\_\\_, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int ceil\\_mode)
"""
function mkldnn_max_pool2d(self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int)
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_mkldnn_max_pool2d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, dilation_data, dilation_len, ceil_mode)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export mkldnn_reorder_conv2d_weight


"""
    mkldnn_reorder_conv2d_weight(self::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64)

 Wrapper of C++ function void atg\\_mkldnn\\_reorder\\_conv2d\\_weight(tensor *out\\_\\_, tensor self, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int64\\_t groups)
"""
function mkldnn_reorder_conv2d_weight(self::Tensor, padding_data::Array{Int64}, stride_data::Array{Int64}, dilation_data::Array{Int64}, groups::Int64)
    outputs__ = Int[0]
    padding_len = length(padding_data)
    stride_len = length(stride_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_mkldnn_reorder_conv2d_weight, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Clonglong),
                 outputs__, self.pointer, padding_data, padding_len, stride_data, stride_len, dilation_data, dilation_len, groups)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export mm


"""
    mm(self::Tensor, mat2::Tensor)

 Wrapper of C++ function void atg\\_mm(tensor *out\\_\\_, tensor self, tensor mat2)
"""
function mm(self::Tensor, mat2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_mm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, mat2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export mm_out


"""
    mm_out(out::Tensor, self::Tensor, mat2::Tensor)

 Wrapper of C++ function void atg\\_mm\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor mat2)
"""
function mm_out(out::Tensor, self::Tensor, mat2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_mm_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, mat2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export mode


"""
    mode(self::Tensor, dim::Int64, keepdim::Int)

 Wrapper of C++ function void atg\\_mode(tensor *out\\_\\_, tensor self, int64\\_t dim, int keepdim)
"""
function mode(self::Tensor, dim::Int64, keepdim::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_mode, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, self.pointer, dim, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export mode_out


"""
    mode_out(values::Tensor, indices::Tensor, self::Tensor, dim::Int64, keepdim::Int)

 Wrapper of C++ function void atg\\_mode\\_out(tensor *out\\_\\_, tensor values, tensor indices, tensor self, int64\\_t dim, int keepdim)
"""
function mode_out(values::Tensor, indices::Tensor, self::Tensor, dim::Int64, keepdim::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_mode_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, values.pointer, indices.pointer, self.pointer, dim, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export mse_loss


"""
    mse_loss(self::Tensor, target::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_mse\\_loss(tensor *out\\_\\_, tensor self, tensor target, int64\\_t reduction)
"""
function mse_loss(self::Tensor, target::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_mse_loss, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, target.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export mse_loss_backward


"""
    mse_loss_backward(grad_output::Tensor, self::Tensor, target::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_mse\\_loss\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, tensor target, int64\\_t reduction)
"""
function mse_loss_backward(grad_output::Tensor, self::Tensor, target::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_mse_loss_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, grad_output.pointer, self.pointer, target.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export mse_loss_backward_out


"""
    mse_loss_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, target::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_mse\\_loss\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, tensor target, int64\\_t reduction)
"""
function mse_loss_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, target::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_mse_loss_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, target.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export mse_loss_out


"""
    mse_loss_out(out::Tensor, self::Tensor, target::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_mse\\_loss\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor target, int64\\_t reduction)
"""
function mse_loss_out(out::Tensor, self::Tensor, target::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_mse_loss_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, out.pointer, self.pointer, target.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export mul


"""
    mul(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_mul(tensor *out\\_\\_, tensor self, tensor other)
"""
function mul(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_mul, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export mul1


"""
    mul1(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_mul1(tensor *out\\_\\_, tensor self, scalar other)
"""
function mul1(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_mul1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export mul!


"""
    mul!(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_mul\\_(tensor *out\\_\\_, tensor self, tensor other)
"""
function mul!(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_mul_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export mul1!


"""
    mul1!(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_mul\\_1(tensor *out\\_\\_, tensor self, scalar other)
"""
function mul1!(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_mul_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export mul_out


"""
    mul_out(out::Tensor, self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_mul\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor other)
"""
function mul_out(out::Tensor, self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_mul_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export multi_margin_loss_backward


"""
    multi_margin_loss_backward(grad_output::Tensor, self::Tensor, target::Tensor, p::TorchNumber, margin::TorchNumber, weight::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_multi\\_margin\\_loss\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, tensor target, scalar p, scalar margin, tensor weight, int64\\_t reduction)
"""
function multi_margin_loss_backward(grad_output::Tensor, self::Tensor, target::Tensor, p::TorchNumber, margin::TorchNumber, weight::Tensor, reduction::Int64)
    outputs__ = Int[0]
    p_s_ = Scalar(p)
    margin_s_ = Scalar(margin)
    __cret = ccall((:atg_multi_margin_loss_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, grad_output.pointer, self.pointer, target.pointer, p_s_.pointer, margin_s_.pointer, weight.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export multi_margin_loss_backward_out


"""
    multi_margin_loss_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, target::Tensor, p::TorchNumber, margin::TorchNumber, weight::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_multi\\_margin\\_loss\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, tensor target, scalar p, scalar margin, tensor weight, int64\\_t reduction)
"""
function multi_margin_loss_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, target::Tensor, p::TorchNumber, margin::TorchNumber, weight::Tensor, reduction::Int64)
    outputs__ = Int[0]
    p_s_ = Scalar(p)
    margin_s_ = Scalar(margin)
    __cret = ccall((:atg_multi_margin_loss_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, target.pointer, p_s_.pointer, margin_s_.pointer, weight.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export multilabel_margin_loss


"""
    multilabel_margin_loss(self::Tensor, target::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_multilabel\\_margin\\_loss(tensor *out\\_\\_, tensor self, tensor target, int64\\_t reduction)
"""
function multilabel_margin_loss(self::Tensor, target::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_multilabel_margin_loss, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, target.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export multilabel_margin_loss_backward


"""
    multilabel_margin_loss_backward(grad_output::Tensor, self::Tensor, target::Tensor, reduction::Int64, is_target::Tensor)

 Wrapper of C++ function void atg\\_multilabel\\_margin\\_loss\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, tensor target, int64\\_t reduction, tensor is\\_target)
"""
function multilabel_margin_loss_backward(grad_output::Tensor, self::Tensor, target::Tensor, reduction::Int64, is_target::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_multilabel_margin_loss_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}),
                 outputs__, grad_output.pointer, self.pointer, target.pointer, reduction, is_target.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export multilabel_margin_loss_backward_out


"""
    multilabel_margin_loss_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, target::Tensor, reduction::Int64, is_target::Tensor)

 Wrapper of C++ function void atg\\_multilabel\\_margin\\_loss\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, tensor target, int64\\_t reduction, tensor is\\_target)
"""
function multilabel_margin_loss_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, target::Tensor, reduction::Int64, is_target::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_multilabel_margin_loss_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, target.pointer, reduction, is_target.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export multilabel_margin_loss_out


"""
    multilabel_margin_loss_out(out::Tensor, self::Tensor, target::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_multilabel\\_margin\\_loss\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor target, int64\\_t reduction)
"""
function multilabel_margin_loss_out(out::Tensor, self::Tensor, target::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_multilabel_margin_loss_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, out.pointer, self.pointer, target.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export multinomial


"""
    multinomial(self::Tensor, num_samples::Int64, replacement::Int)

 Wrapper of C++ function void atg\\_multinomial(tensor *out\\_\\_, tensor self, int64\\_t num\\_samples, int replacement)
"""
function multinomial(self::Tensor, num_samples::Int64, replacement::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_multinomial, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, self.pointer, num_samples, replacement)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export multinomial_out


"""
    multinomial_out(out::Tensor, self::Tensor, num_samples::Int64, replacement::Int)

 Wrapper of C++ function void atg\\_multinomial\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t num\\_samples, int replacement)
"""
function multinomial_out(out::Tensor, self::Tensor, num_samples::Int64, replacement::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_multinomial_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, out.pointer, self.pointer, num_samples, replacement)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.mv


"""
    mv(self::Tensor, vec::Tensor)

 Wrapper of C++ function void atg\\_mv(tensor *out\\_\\_, tensor self, tensor vec)
"""
function mv(self::Tensor, vec::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_mv, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, vec.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export mv_out


"""
    mv_out(out::Tensor, self::Tensor, vec::Tensor)

 Wrapper of C++ function void atg\\_mv\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor vec)
"""
function mv_out(out::Tensor, self::Tensor, vec::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_mv_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, vec.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export mvlgamma


"""
    mvlgamma(self::Tensor, p::Int64)

 Wrapper of C++ function void atg\\_mvlgamma(tensor *out\\_\\_, tensor self, int64\\_t p)
"""
function mvlgamma(self::Tensor, p::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_mvlgamma, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, p)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export mvlgamma!


"""
    mvlgamma!(self::Tensor, p::Int64)

 Wrapper of C++ function void atg\\_mvlgamma\\_(tensor *out\\_\\_, tensor self, int64\\_t p)
"""
function mvlgamma!(self::Tensor, p::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_mvlgamma_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, p)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export narrow


"""
    narrow(self::Tensor, dim::Int64, start::Int64, length::Int64)

 Wrapper of C++ function void atg\\_narrow(tensor *out\\_\\_, tensor self, int64\\_t dim, int64\\_t start, int64\\_t length)
"""
function narrow(self::Tensor, dim::Int64, start::Int64, length::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_narrow, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Clonglong),
                 outputs__, self.pointer, dim, start, length)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export narrow_copy


"""
    narrow_copy(self::Tensor, dim::Int64, start::Int64, length::Int64)

 Wrapper of C++ function void atg\\_narrow\\_copy(tensor *out\\_\\_, tensor self, int64\\_t dim, int64\\_t start, int64\\_t length)
"""
function narrow_copy(self::Tensor, dim::Int64, start::Int64, length::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_narrow_copy, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Clonglong),
                 outputs__, self.pointer, dim, start, length)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export native_batch_norm


"""
    native_batch_norm(input::Tensor, weight::Tensor, bias::Tensor, running_mean::Tensor, running_var::Tensor, training::Int, momentum::Float64, eps::Float64)

 Wrapper of C++ function void atg\\_native\\_batch\\_norm(tensor *out\\_\\_, tensor input, tensor weight, tensor bias, tensor running\\_mean, tensor running\\_var, int training, double momentum, double eps)
"""
function native_batch_norm(input::Tensor, weight::Tensor, bias::Tensor, running_mean::Tensor, running_var::Tensor, training::Int, momentum::Float64, eps::Float64)
    outputs__ = Int[0, 0, 0]
    __cret = ccall((:atg_native_batch_norm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cdouble, Cdouble),
                 outputs__, input.pointer, weight.pointer, bias.pointer, running_mean.pointer, running_var.pointer, training, momentum, eps)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    __o_3 = tensor_from_ptr(Ptr{Cvoid}(outputs__[3]))
    return __o_1, __o_2, __o_3
end



export native_layer_norm


"""
    native_layer_norm(input::Tensor, weight::Tensor, bias::Tensor, M::Int64, n::Int64, eps::Float64)

 Wrapper of C++ function void atg\\_native\\_layer\\_norm(tensor *out\\_\\_, tensor input, tensor weight, tensor bias, int64\\_t M, int64\\_t n, double eps)
"""
function native_layer_norm(input::Tensor, weight::Tensor, bias::Tensor, M::Int64, n::Int64, eps::Float64)
    outputs__ = Int[0, 0, 0]
    __cret = ccall((:atg_native_layer_norm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Cdouble),
                 outputs__, input.pointer, weight.pointer, bias.pointer, M, n, eps)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    __o_3 = tensor_from_ptr(Ptr{Cvoid}(outputs__[3]))
    return __o_1, __o_2, __o_3
end



export native_norm


"""
    native_norm(self::Tensor)

 Wrapper of C++ function void atg\\_native\\_norm(tensor *out\\_\\_, tensor self)
"""
function native_norm(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_native_norm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ne


"""
    ne(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_ne(tensor *out\\_\\_, tensor self, scalar other)
"""
function ne(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_ne, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ne1


"""
    ne1(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_ne1(tensor *out\\_\\_, tensor self, tensor other)
"""
function ne1(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_ne1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ne!


"""
    ne!(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_ne\\_(tensor *out\\_\\_, tensor self, scalar other)
"""
function ne!(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_ne_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ne1!


"""
    ne1!(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_ne\\_1(tensor *out\\_\\_, tensor self, tensor other)
"""
function ne1!(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_ne_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ne_out


"""
    ne_out(out::Tensor, self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_ne\\_out(tensor *out\\_\\_, tensor out, tensor self, scalar other)
"""
function ne_out(out::Tensor, self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_ne_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ne_out1


"""
    ne_out1(out::Tensor, self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_ne\\_out1(tensor *out\\_\\_, tensor out, tensor self, tensor other)
"""
function ne_out1(out::Tensor, self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_ne_out1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export neg


"""
    neg(self::Tensor)

 Wrapper of C++ function void atg\\_neg(tensor *out\\_\\_, tensor self)
"""
function neg(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_neg, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export neg!


"""
    neg!(self::Tensor)

 Wrapper of C++ function void atg\\_neg\\_(tensor *out\\_\\_, tensor self)
"""
function neg!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_neg_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export neg_out


"""
    neg_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_neg\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function neg_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_neg_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export new_empty


"""
    new_empty(self::Tensor, size_data::Array{Int64}, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_new\\_empty(tensor *out\\_\\_, tensor self, int64\\_t *size\\_data, int size\\_len, int options\\_kind, int options\\_device)
"""
function new_empty(self::Tensor, size_data::Array{Int64}, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_new_empty, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, self.pointer, size_data, size_len, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export new_full


"""
    new_full(self::Tensor, size_data::Array{Int64}, fill_value::TorchNumber, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_new\\_full(tensor *out\\_\\_, tensor self, int64\\_t *size\\_data, int size\\_len, scalar fill\\_value, int options\\_kind, int options\\_device)
"""
function new_full(self::Tensor, size_data::Array{Int64}, fill_value::TorchNumber, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    size_len = length(size_data)
    fill_value_s_ = Scalar(fill_value)
    __cret = ccall((:atg_new_full, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, size_data, size_len, fill_value_s_.pointer, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export new_zeros


"""
    new_zeros(self::Tensor, size_data::Array{Int64}, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_new\\_zeros(tensor *out\\_\\_, tensor self, int64\\_t *size\\_data, int size\\_len, int options\\_kind, int options\\_device)
"""
function new_zeros(self::Tensor, size_data::Array{Int64}, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_new_zeros, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, self.pointer, size_data, size_len, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export nll_loss


"""
    nll_loss(self::Tensor, target::Tensor, weight::Tensor, reduction::Int64, ignore_index::Int64)

 Wrapper of C++ function void atg\\_nll\\_loss(tensor *out\\_\\_, tensor self, tensor target, tensor weight, int64\\_t reduction, int64\\_t ignore\\_index)
"""
function nll_loss(self::Tensor, target::Tensor, weight::Tensor, reduction::Int64, ignore_index::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_nll_loss, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong),
                 outputs__, self.pointer, target.pointer, weight.pointer, reduction, ignore_index)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export nll_loss2d


"""
    nll_loss2d(self::Tensor, target::Tensor, weight::Tensor, reduction::Int64, ignore_index::Int64)

 Wrapper of C++ function void atg\\_nll\\_loss2d(tensor *out\\_\\_, tensor self, tensor target, tensor weight, int64\\_t reduction, int64\\_t ignore\\_index)
"""
function nll_loss2d(self::Tensor, target::Tensor, weight::Tensor, reduction::Int64, ignore_index::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_nll_loss2d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong),
                 outputs__, self.pointer, target.pointer, weight.pointer, reduction, ignore_index)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export nll_loss2d_backward


"""
    nll_loss2d_backward(grad_output::Tensor, self::Tensor, target::Tensor, weight::Tensor, reduction::Int64, ignore_index::Int64, total_weight::Tensor)

 Wrapper of C++ function void atg\\_nll\\_loss2d\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, tensor target, tensor weight, int64\\_t reduction, int64\\_t ignore\\_index, tensor total\\_weight)
"""
function nll_loss2d_backward(grad_output::Tensor, self::Tensor, target::Tensor, weight::Tensor, reduction::Int64, ignore_index::Int64, total_weight::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_nll_loss2d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Ptr{Cvoid}),
                 outputs__, grad_output.pointer, self.pointer, target.pointer, weight.pointer, reduction, ignore_index, total_weight.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export nll_loss2d_backward_out


"""
    nll_loss2d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, target::Tensor, weight::Tensor, reduction::Int64, ignore_index::Int64, total_weight::Tensor)

 Wrapper of C++ function void atg\\_nll\\_loss2d\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, tensor target, tensor weight, int64\\_t reduction, int64\\_t ignore\\_index, tensor total\\_weight)
"""
function nll_loss2d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, target::Tensor, weight::Tensor, reduction::Int64, ignore_index::Int64, total_weight::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_nll_loss2d_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Ptr{Cvoid}),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, target.pointer, weight.pointer, reduction, ignore_index, total_weight.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export nll_loss2d_out


"""
    nll_loss2d_out(out::Tensor, self::Tensor, target::Tensor, weight::Tensor, reduction::Int64, ignore_index::Int64)

 Wrapper of C++ function void atg\\_nll\\_loss2d\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor target, tensor weight, int64\\_t reduction, int64\\_t ignore\\_index)
"""
function nll_loss2d_out(out::Tensor, self::Tensor, target::Tensor, weight::Tensor, reduction::Int64, ignore_index::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_nll_loss2d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong),
                 outputs__, out.pointer, self.pointer, target.pointer, weight.pointer, reduction, ignore_index)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export nll_loss_backward


"""
    nll_loss_backward(grad_output::Tensor, self::Tensor, target::Tensor, weight::Tensor, reduction::Int64, ignore_index::Int64, total_weight::Tensor)

 Wrapper of C++ function void atg\\_nll\\_loss\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, tensor target, tensor weight, int64\\_t reduction, int64\\_t ignore\\_index, tensor total\\_weight)
"""
function nll_loss_backward(grad_output::Tensor, self::Tensor, target::Tensor, weight::Tensor, reduction::Int64, ignore_index::Int64, total_weight::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_nll_loss_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Ptr{Cvoid}),
                 outputs__, grad_output.pointer, self.pointer, target.pointer, weight.pointer, reduction, ignore_index, total_weight.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export nll_loss_backward_out


"""
    nll_loss_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, target::Tensor, weight::Tensor, reduction::Int64, ignore_index::Int64, total_weight::Tensor)

 Wrapper of C++ function void atg\\_nll\\_loss\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, tensor target, tensor weight, int64\\_t reduction, int64\\_t ignore\\_index, tensor total\\_weight)
"""
function nll_loss_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, target::Tensor, weight::Tensor, reduction::Int64, ignore_index::Int64, total_weight::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_nll_loss_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Ptr{Cvoid}),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, target.pointer, weight.pointer, reduction, ignore_index, total_weight.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export nll_loss_out


"""
    nll_loss_out(out::Tensor, self::Tensor, target::Tensor, weight::Tensor, reduction::Int64, ignore_index::Int64)

 Wrapper of C++ function void atg\\_nll\\_loss\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor target, tensor weight, int64\\_t reduction, int64\\_t ignore\\_index)
"""
function nll_loss_out(out::Tensor, self::Tensor, target::Tensor, weight::Tensor, reduction::Int64, ignore_index::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_nll_loss_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong),
                 outputs__, out.pointer, self.pointer, target.pointer, weight.pointer, reduction, ignore_index)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export nonzero


"""
    nonzero(self::Tensor)

 Wrapper of C++ function void atg\\_nonzero(tensor *out\\_\\_, tensor self)
"""
function nonzero(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_nonzero, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export nonzero_numpy


"""
    nonzero_numpy(self::Tensor)

 Wrapper of C++ function tensor *atg\\_nonzero\\_numpy(tensor self)
"""
function nonzero_numpy(self::Tensor)

    __cret = ccall((:atg_nonzero_numpy, :libtorch_capi),
                 Ptr{Int}, (Ptr{Cvoid},),
                 self.pointer)
    ptrs__, i__ = Int[], 1
    while true
        ptr__ = unsafe_load(__cret, i__)
        ptr__ == 0 && break
        push!(ptrs__, ptr__)
        i__ += 1
    end
    ccall(:free, Cvoid, (Ptr{Cvoid},), __cret)
    return map(x -> tensor_from_ptr(Ptr{Nothing}(x)), ptrs__)
end



export nonzero_out


"""
    nonzero_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_nonzero\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function nonzero_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_nonzero_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export norm


"""
    norm(self::Tensor)

 Wrapper of C++ function void atg\\_norm(tensor *out\\_\\_, tensor self)
"""
function norm(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_norm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export norm1


"""
    norm1(self::Tensor, p::TorchNumber, dtype::Int)

 Wrapper of C++ function void atg\\_norm1(tensor *out\\_\\_, tensor self, scalar p, int dtype)
"""
function norm1(self::Tensor, p::TorchNumber, dtype::Int)
    outputs__ = Int[0]
    p_s_ = Scalar(p)
    __cret = ccall((:atg_norm1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, p_s_.pointer, dtype)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export norm2


"""
    norm2(self::Tensor, p::TorchNumber, dim_data::Array{Int64}, keepdim::Int)

 Wrapper of C++ function void atg\\_norm2(tensor *out\\_\\_, tensor self, scalar p, int64\\_t *dim\\_data, int dim\\_len, int keepdim)
"""
function norm2(self::Tensor, p::TorchNumber, dim_data::Array{Int64}, keepdim::Int)
    outputs__ = Int[0]
    p_s_ = Scalar(p)
    dim_len = length(dim_data)
    __cret = ccall((:atg_norm2, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, p_s_.pointer, dim_data, dim_len, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export norm3


"""
    norm3(self::Tensor, p::TorchNumber, dim_data::Array{Int64}, keepdim::Int, dtype::Int)

 Wrapper of C++ function void atg\\_norm3(tensor *out\\_\\_, tensor self, scalar p, int64\\_t *dim\\_data, int dim\\_len, int keepdim, int dtype)
"""
function norm3(self::Tensor, p::TorchNumber, dim_data::Array{Int64}, keepdim::Int, dtype::Int)
    outputs__ = Int[0]
    p_s_ = Scalar(p)
    dim_len = length(dim_data)
    __cret = ccall((:atg_norm3, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, self.pointer, p_s_.pointer, dim_data, dim_len, keepdim, dtype)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export norm_except_dim


"""
    norm_except_dim(v::Tensor, pow::Int64, dim::Int64)

 Wrapper of C++ function void atg\\_norm\\_except\\_dim(tensor *out\\_\\_, tensor v, int64\\_t pow, int64\\_t dim)
"""
function norm_except_dim(v::Tensor, pow::Int64, dim::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_norm_except_dim, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong),
                 outputs__, v.pointer, pow, dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export norm_out


"""
    norm_out(out::Tensor, self::Tensor, p::TorchNumber, dim_data::Array{Int64}, keepdim::Int)

 Wrapper of C++ function void atg\\_norm\\_out(tensor *out\\_\\_, tensor out, tensor self, scalar p, int64\\_t *dim\\_data, int dim\\_len, int keepdim)
"""
function norm_out(out::Tensor, self::Tensor, p::TorchNumber, dim_data::Array{Int64}, keepdim::Int)
    outputs__ = Int[0]
    p_s_ = Scalar(p)
    dim_len = length(dim_data)
    __cret = ccall((:atg_norm_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, out.pointer, self.pointer, p_s_.pointer, dim_data, dim_len, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export norm_out1


"""
    norm_out1(out::Tensor, self::Tensor, p::TorchNumber, dim_data::Array{Int64}, keepdim::Int, dtype::Int)

 Wrapper of C++ function void atg\\_norm\\_out1(tensor *out\\_\\_, tensor out, tensor self, scalar p, int64\\_t *dim\\_data, int dim\\_len, int keepdim, int dtype)
"""
function norm_out1(out::Tensor, self::Tensor, p::TorchNumber, dim_data::Array{Int64}, keepdim::Int, dtype::Int)
    outputs__ = Int[0]
    p_s_ = Scalar(p)
    dim_len = length(dim_data)
    __cret = ccall((:atg_norm_out1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, out.pointer, self.pointer, p_s_.pointer, dim_data, dim_len, keepdim, dtype)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export normal!


"""
    normal!(self::Tensor, mean::Float64, std::Float64)

 Wrapper of C++ function void atg\\_normal\\_(tensor *out\\_\\_, tensor self, double mean, double std)
"""
function normal!(self::Tensor, mean::Float64, std::Float64)
    outputs__ = Int[0]
    __cret = ccall((:atg_normal_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Cdouble),
                 outputs__, self.pointer, mean, std)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export normal_out


"""
    normal_out(out::Tensor, mean::Tensor, std::Float64)

 Wrapper of C++ function void atg\\_normal\\_out(tensor *out\\_\\_, tensor out, tensor mean, double std)
"""
function normal_out(out::Tensor, mean::Tensor, std::Float64)
    outputs__ = Int[0]
    __cret = ccall((:atg_normal_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cdouble),
                 outputs__, out.pointer, mean.pointer, std)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export normal_out1


"""
    normal_out1(out::Tensor, mean::Float64, std::Tensor)

 Wrapper of C++ function void atg\\_normal\\_out1(tensor *out\\_\\_, tensor out, double mean, tensor std)
"""
function normal_out1(out::Tensor, mean::Float64, std::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_normal_out1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Ptr{Cvoid}),
                 outputs__, out.pointer, mean, std.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export normal_out2


"""
    normal_out2(out::Tensor, mean::Tensor, std::Tensor)

 Wrapper of C++ function void atg\\_normal\\_out2(tensor *out\\_\\_, tensor out, tensor mean, tensor std)
"""
function normal_out2(out::Tensor, mean::Tensor, std::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_normal_out2, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, mean.pointer, std.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export normal_out3


"""
    normal_out3(out::Tensor, mean::Float64, std::Float64, size_data::Array{Int64})

 Wrapper of C++ function void atg\\_normal\\_out3(tensor *out\\_\\_, tensor out, double mean, double std, int64\\_t *size\\_data, int size\\_len)
"""
function normal_out3(out::Tensor, mean::Float64, std::Float64, size_data::Array{Int64})
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_normal_out3, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Cdouble, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, mean, std, size_data, size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export nuclear_norm


"""
    nuclear_norm(self::Tensor, keepdim::Int)

 Wrapper of C++ function void atg\\_nuclear\\_norm(tensor *out\\_\\_, tensor self, int keepdim)
"""
function nuclear_norm(self::Tensor, keepdim::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_nuclear_norm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export nuclear_norm1


"""
    nuclear_norm1(self::Tensor, dim_data::Array{Int64}, keepdim::Int)

 Wrapper of C++ function void atg\\_nuclear\\_norm1(tensor *out\\_\\_, tensor self, int64\\_t *dim\\_data, int dim\\_len, int keepdim)
"""
function nuclear_norm1(self::Tensor, dim_data::Array{Int64}, keepdim::Int)
    outputs__ = Int[0]
    dim_len = length(dim_data)
    __cret = ccall((:atg_nuclear_norm1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, dim_data, dim_len, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export nuclear_norm_out


"""
    nuclear_norm_out(out::Tensor, self::Tensor, keepdim::Int)

 Wrapper of C++ function void atg\\_nuclear\\_norm\\_out(tensor *out\\_\\_, tensor out, tensor self, int keepdim)
"""
function nuclear_norm_out(out::Tensor, self::Tensor, keepdim::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_nuclear_norm_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export nuclear_norm_out1


"""
    nuclear_norm_out1(out::Tensor, self::Tensor, dim_data::Array{Int64}, keepdim::Int)

 Wrapper of C++ function void atg\\_nuclear\\_norm\\_out1(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *dim\\_data, int dim\\_len, int keepdim)
"""
function nuclear_norm_out1(out::Tensor, self::Tensor, dim_data::Array{Int64}, keepdim::Int)
    outputs__ = Int[0]
    dim_len = length(dim_data)
    __cret = ccall((:atg_nuclear_norm_out1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, out.pointer, self.pointer, dim_data, dim_len, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export numpy_t


"""
    numpy_t(self::Tensor)

 Wrapper of C++ function void atg\\_numpy\\_t(tensor *out\\_\\_, tensor self)
"""
function numpy_t(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_numpy_t, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export one_hot


"""
    one_hot(self::Tensor, num_classes::Int64)

 Wrapper of C++ function void atg\\_one\\_hot(tensor *out\\_\\_, tensor self, int64\\_t num\\_classes)
"""
function one_hot(self::Tensor, num_classes::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_one_hot, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, num_classes)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.ones


"""
    ones(size_data::Array{Int64}, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_ones(tensor *out\\_\\_, int64\\_t *size\\_data, int size\\_len, int options\\_kind, int options\\_device)
"""
function ones(size_data::Array{Int64}, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_ones, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, size_data, size_len, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ones_like


"""
    ones_like(self::Tensor)

 Wrapper of C++ function void atg\\_ones\\_like(tensor *out\\_\\_, tensor self)
"""
function ones_like(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_ones_like, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ones_like1


"""
    ones_like1(self::Tensor, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_ones\\_like1(tensor *out\\_\\_, tensor self, int options\\_kind, int options\\_device)
"""
function ones_like1(self::Tensor, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_ones_like1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ones_out


"""
    ones_out(out::Tensor, size_data::Array{Int64})

 Wrapper of C++ function void atg\\_ones\\_out(tensor *out\\_\\_, tensor out, int64\\_t *size\\_data, int size\\_len)
"""
function ones_out(out::Tensor, size_data::Array{Int64})
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_ones_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, size_data, size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export orgqr


"""
    orgqr(self::Tensor, input2::Tensor)

 Wrapper of C++ function void atg\\_orgqr(tensor *out\\_\\_, tensor self, tensor input2)
"""
function orgqr(self::Tensor, input2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_orgqr, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, input2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export orgqr_out


"""
    orgqr_out(out::Tensor, self::Tensor, input2::Tensor)

 Wrapper of C++ function void atg\\_orgqr\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor input2)
"""
function orgqr_out(out::Tensor, self::Tensor, input2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_orgqr_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, input2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ormqr


"""
    ormqr(self::Tensor, input2::Tensor, input3::Tensor, left::Int, transpose::Int)

 Wrapper of C++ function void atg\\_ormqr(tensor *out\\_\\_, tensor self, tensor input2, tensor input3, int left, int transpose)
"""
function ormqr(self::Tensor, input2::Tensor, input3::Tensor, left::Int, transpose::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_ormqr, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, input2.pointer, input3.pointer, left, transpose)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export ormqr_out


"""
    ormqr_out(out::Tensor, self::Tensor, input2::Tensor, input3::Tensor, left::Int, transpose::Int)

 Wrapper of C++ function void atg\\_ormqr\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor input2, tensor input3, int left, int transpose)
"""
function ormqr_out(out::Tensor, self::Tensor, input2::Tensor, input3::Tensor, left::Int, transpose::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_ormqr_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, out.pointer, self.pointer, input2.pointer, input3.pointer, left, transpose)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export pairwise_distance


"""
    pairwise_distance(x1::Tensor, x2::Tensor, p::Float64, eps::Float64, keepdim::Int)

 Wrapper of C++ function void atg\\_pairwise\\_distance(tensor *out\\_\\_, tensor x1, tensor x2, double p, double eps, int keepdim)
"""
function pairwise_distance(x1::Tensor, x2::Tensor, p::Float64, eps::Float64, keepdim::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_pairwise_distance, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Cdouble, Cint),
                 outputs__, x1.pointer, x2.pointer, p, eps, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export pdist


"""
    pdist(self::Tensor, p::Float64)

 Wrapper of C++ function void atg\\_pdist(tensor *out\\_\\_, tensor self, double p)
"""
function pdist(self::Tensor, p::Float64)
    outputs__ = Int[0]
    __cret = ccall((:atg_pdist, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble),
                 outputs__, self.pointer, p)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export permute


"""
    permute(self::Tensor, dims_data::Array{Int64})

 Wrapper of C++ function void atg\\_permute(tensor *out\\_\\_, tensor self, int64\\_t *dims\\_data, int dims\\_len)
"""
function permute(self::Tensor, dims_data::Array{Int64})
    outputs__ = Int[0]
    dims_len = length(dims_data)
    __cret = ccall((:atg_permute, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, dims_data, dims_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export pin_memory


"""
    pin_memory(self::Tensor)

 Wrapper of C++ function void atg\\_pin\\_memory(tensor *out\\_\\_, tensor self)
"""
function pin_memory(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_pin_memory, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export pinverse


"""
    pinverse(self::Tensor, rcond::Float64)

 Wrapper of C++ function void atg\\_pinverse(tensor *out\\_\\_, tensor self, double rcond)
"""
function pinverse(self::Tensor, rcond::Float64)
    outputs__ = Int[0]
    __cret = ccall((:atg_pinverse, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble),
                 outputs__, self.pointer, rcond)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export pixel_shuffle


"""
    pixel_shuffle(self::Tensor, upscale_factor::Int64)

 Wrapper of C++ function void atg\\_pixel\\_shuffle(tensor *out\\_\\_, tensor self, int64\\_t upscale\\_factor)
"""
function pixel_shuffle(self::Tensor, upscale_factor::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_pixel_shuffle, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, upscale_factor)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export poisson


"""
    poisson(self::Tensor)

 Wrapper of C++ function void atg\\_poisson(tensor *out\\_\\_, tensor self)
"""
function poisson(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_poisson, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export poisson_nll_loss


"""
    poisson_nll_loss(input::Tensor, target::Tensor, log_input::Int, full::Int, eps::Float64, reduction::Int64)

 Wrapper of C++ function void atg\\_poisson\\_nll\\_loss(tensor *out\\_\\_, tensor input, tensor target, int log\\_input, int full, double eps, int64\\_t reduction)
"""
function poisson_nll_loss(input::Tensor, target::Tensor, log_input::Int, full::Int, eps::Float64, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_poisson_nll_loss, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cdouble, Clonglong),
                 outputs__, input.pointer, target.pointer, log_input, full, eps, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export polygamma


"""
    polygamma(n::Int64, self::Tensor)

 Wrapper of C++ function void atg\\_polygamma(tensor *out\\_\\_, int64\\_t n, tensor self)
"""
function polygamma(n::Int64, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_polygamma, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Clonglong, Ptr{Cvoid}),
                 outputs__, n, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export polygamma!


"""
    polygamma!(self::Tensor, n::Int64)

 Wrapper of C++ function void atg\\_polygamma\\_(tensor *out\\_\\_, tensor self, int64\\_t n)
"""
function polygamma!(self::Tensor, n::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_polygamma_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, n)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export polygamma_out


"""
    polygamma_out(out::Tensor, n::Int64, self::Tensor)

 Wrapper of C++ function void atg\\_polygamma\\_out(tensor *out\\_\\_, tensor out, int64\\_t n, tensor self)
"""
function polygamma_out(out::Tensor, n::Int64, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_polygamma_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}),
                 outputs__, out.pointer, n, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export pow


"""
    pow(self::Tensor, exponent::TorchNumber)

 Wrapper of C++ function void atg\\_pow(tensor *out\\_\\_, tensor self, scalar exponent)
"""
function pow(self::Tensor, exponent::TorchNumber)
    outputs__ = Int[0]
    exponent_s_ = Scalar(exponent)
    __cret = ccall((:atg_pow, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, exponent_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export pow1


"""
    pow1(self::Tensor, exponent::Tensor)

 Wrapper of C++ function void atg\\_pow1(tensor *out\\_\\_, tensor self, tensor exponent)
"""
function pow1(self::Tensor, exponent::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_pow1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, exponent.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export pow2


"""
    pow2(self::TorchNumber, exponent::Tensor)

 Wrapper of C++ function void atg\\_pow2(tensor *out\\_\\_, scalar self, tensor exponent)
"""
function pow2(self::TorchNumber, exponent::Tensor)
    outputs__ = Int[0]
    self_s_ = Scalar(self)
    __cret = ccall((:atg_pow2, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self_s_.pointer, exponent.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export pow!


"""
    pow!(self::Tensor, exponent::TorchNumber)

 Wrapper of C++ function void atg\\_pow\\_(tensor *out\\_\\_, tensor self, scalar exponent)
"""
function pow!(self::Tensor, exponent::TorchNumber)
    outputs__ = Int[0]
    exponent_s_ = Scalar(exponent)
    __cret = ccall((:atg_pow_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, exponent_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export pow1!


"""
    pow1!(self::Tensor, exponent::Tensor)

 Wrapper of C++ function void atg\\_pow\\_1(tensor *out\\_\\_, tensor self, tensor exponent)
"""
function pow1!(self::Tensor, exponent::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_pow_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, exponent.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export pow_out


"""
    pow_out(out::Tensor, self::Tensor, exponent::TorchNumber)

 Wrapper of C++ function void atg\\_pow\\_out(tensor *out\\_\\_, tensor out, tensor self, scalar exponent)
"""
function pow_out(out::Tensor, self::Tensor, exponent::TorchNumber)
    outputs__ = Int[0]
    exponent_s_ = Scalar(exponent)
    __cret = ccall((:atg_pow_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, exponent_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export pow_out1


"""
    pow_out1(out::Tensor, self::Tensor, exponent::Tensor)

 Wrapper of C++ function void atg\\_pow\\_out1(tensor *out\\_\\_, tensor out, tensor self, tensor exponent)
"""
function pow_out1(out::Tensor, self::Tensor, exponent::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_pow_out1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, exponent.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export pow_out2


"""
    pow_out2(out::Tensor, self::TorchNumber, exponent::Tensor)

 Wrapper of C++ function void atg\\_pow\\_out2(tensor *out\\_\\_, tensor out, scalar self, tensor exponent)
"""
function pow_out2(out::Tensor, self::TorchNumber, exponent::Tensor)
    outputs__ = Int[0]
    self_s_ = Scalar(self)
    __cret = ccall((:atg_pow_out2, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self_s_.pointer, exponent.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export prelu


"""
    prelu(self::Tensor, weight::Tensor)

 Wrapper of C++ function void atg\\_prelu(tensor *out\\_\\_, tensor self, tensor weight)
"""
function prelu(self::Tensor, weight::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_prelu, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, weight.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export prelu_backward


"""
    prelu_backward(grad_output::Tensor, self::Tensor, weight::Tensor)

 Wrapper of C++ function void atg\\_prelu\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, tensor weight)
"""
function prelu_backward(grad_output::Tensor, self::Tensor, weight::Tensor)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_prelu_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_output.pointer, self.pointer, weight.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



import Base.prod


"""
    prod(self::Tensor, dtype::Int)

 Wrapper of C++ function void atg\\_prod(tensor *out\\_\\_, tensor self, int dtype)
"""
function prod(self::Tensor, dtype::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_prod, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, dtype)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export prod1


"""
    prod1(self::Tensor, dim::Int64, keepdim::Int, dtype::Int)

 Wrapper of C++ function void atg\\_prod1(tensor *out\\_\\_, tensor self, int64\\_t dim, int keepdim, int dtype)
"""
function prod1(self::Tensor, dim::Int64, keepdim::Int, dtype::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_prod1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint, Cint),
                 outputs__, self.pointer, dim, keepdim, dtype)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export prod_out


"""
    prod_out(out::Tensor, self::Tensor, dim::Int64, keepdim::Int, dtype::Int)

 Wrapper of C++ function void atg\\_prod\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t dim, int keepdim, int dtype)
"""
function prod_out(out::Tensor, self::Tensor, dim::Int64, keepdim::Int, dtype::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_prod_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint, Cint),
                 outputs__, out.pointer, self.pointer, dim, keepdim, dtype)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.put!


"""
    put!(self::Tensor, index::Tensor, source::Tensor, accumulate::Int)

 Wrapper of C++ function void atg\\_put\\_(tensor *out\\_\\_, tensor self, tensor index, tensor source, int accumulate)
"""
function put!(self::Tensor, index::Tensor, source::Tensor, accumulate::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_put_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, index.pointer, source.pointer, accumulate)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export q_per_channel_scales


"""
    q_per_channel_scales(self::Tensor)

 Wrapper of C++ function void atg\\_q\\_per\\_channel\\_scales(tensor *out\\_\\_, tensor self)
"""
function q_per_channel_scales(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_q_per_channel_scales, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export q_per_channel_zero_points


"""
    q_per_channel_zero_points(self::Tensor)

 Wrapper of C++ function void atg\\_q\\_per\\_channel\\_zero\\_points(tensor *out\\_\\_, tensor self)
"""
function q_per_channel_zero_points(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_q_per_channel_zero_points, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export qr


"""
    qr(self::Tensor, some::Int)

 Wrapper of C++ function void atg\\_qr(tensor *out\\_\\_, tensor self, int some)
"""
function qr(self::Tensor, some::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_qr, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, some)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export qr_out


"""
    qr_out(Q::Tensor, R::Tensor, self::Tensor, some::Int)

 Wrapper of C++ function void atg\\_qr\\_out(tensor *out\\_\\_, tensor Q, tensor R, tensor self, int some)
"""
function qr_out(Q::Tensor, R::Tensor, self::Tensor, some::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_qr_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, Q.pointer, R.pointer, self.pointer, some)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export quantize_per_channel


"""
    quantize_per_channel(self::Tensor, scales::Tensor, zero_points::Tensor, axis::Int64, dtype::Int)

 Wrapper of C++ function void atg\\_quantize\\_per\\_channel(tensor *out\\_\\_, tensor self, tensor scales, tensor zero\\_points, int64\\_t axis, int dtype)
"""
function quantize_per_channel(self::Tensor, scales::Tensor, zero_points::Tensor, axis::Int64, dtype::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_quantize_per_channel, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, self.pointer, scales.pointer, zero_points.pointer, axis, dtype)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export quantize_per_tensor


"""
    quantize_per_tensor(self::Tensor, scale::Float64, zero_point::Int64, dtype::Int)

 Wrapper of C++ function void atg\\_quantize\\_per\\_tensor(tensor *out\\_\\_, tensor self, double scale, int64\\_t zero\\_point, int dtype)
"""
function quantize_per_tensor(self::Tensor, scale::Float64, zero_point::Int64, dtype::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_quantize_per_tensor, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Clonglong, Cint),
                 outputs__, self.pointer, scale, zero_point, dtype)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export quantized_gru


"""
    quantized_gru(input::Tensor, hx::Tensor, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int, batch_first::Int)

 Wrapper of C++ function void atg\\_quantized\\_gru(tensor *out\\_\\_, tensor input, tensor hx, tensor *params\\_data, int params\\_len, int has\\_biases, int64\\_t num\\_layers, double dropout, int train, int bidirectional, int batch\\_first)
"""
function quantized_gru(input::Tensor, hx::Tensor, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int, batch_first::Int) where {T,N}
    outputs__ = Int[0, 0]
    params_data_ta_ = map(x->x.pointer, params_data)
    params_len = length(params_data)
    __cret = ccall((:atg_quantized_gru, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Clonglong, Cdouble, Cint, Cint, Cint),
                 outputs__, input.pointer, hx.pointer, params_data_ta_, params_len, has_biases, num_layers, dropout, train, bidirectional, batch_first)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export quantized_gru1


"""
    quantized_gru1(data::Tensor, batch_sizes::Tensor, hx::Tensor, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int)

 Wrapper of C++ function void atg\\_quantized\\_gru1(tensor *out\\_\\_, tensor data, tensor batch\\_sizes, tensor hx, tensor *params\\_data, int params\\_len, int has\\_biases, int64\\_t num\\_layers, double dropout, int train, int bidirectional)
"""
function quantized_gru1(data::Tensor, batch_sizes::Tensor, hx::Tensor, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int) where {T,N}
    outputs__ = Int[0, 0]
    params_data_ta_ = map(x->x.pointer, params_data)
    params_len = length(params_data)
    __cret = ccall((:atg_quantized_gru1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Clonglong, Cdouble, Cint, Cint),
                 outputs__, data.pointer, batch_sizes.pointer, hx.pointer, params_data_ta_, params_len, has_biases, num_layers, dropout, train, bidirectional)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export quantized_gru_cell


"""
    quantized_gru_cell(input::Tensor, hx::Tensor, w_ih::Tensor, w_hh::Tensor, b_ih::Tensor, b_hh::Tensor, packed_ih::Tensor, packed_hh::Tensor, col_offsets_ih::Tensor, col_offsets_hh::Tensor, scale_ih::TorchNumber, scale_hh::TorchNumber, zero_point_ih::TorchNumber, zero_point_hh::TorchNumber)

 Wrapper of C++ function void atg\\_quantized\\_gru\\_cell(tensor *out\\_\\_, tensor input, tensor hx, tensor w\\_ih, tensor w\\_hh, tensor b\\_ih, tensor b\\_hh, tensor packed\\_ih, tensor packed\\_hh, tensor col\\_offsets\\_ih, tensor col\\_offsets\\_hh, scalar scale\\_ih, scalar scale\\_hh, scalar zero\\_point\\_ih, scalar zero\\_point\\_hh)
"""
function quantized_gru_cell(input::Tensor, hx::Tensor, w_ih::Tensor, w_hh::Tensor, b_ih::Tensor, b_hh::Tensor, packed_ih::Tensor, packed_hh::Tensor, col_offsets_ih::Tensor, col_offsets_hh::Tensor, scale_ih::TorchNumber, scale_hh::TorchNumber, zero_point_ih::TorchNumber, zero_point_hh::TorchNumber)
    outputs__ = Int[0]
    scale_ih_s_ = Scalar(scale_ih)
    scale_hh_s_ = Scalar(scale_hh)
    zero_point_ih_s_ = Scalar(zero_point_ih)
    zero_point_hh_s_ = Scalar(zero_point_hh)
    __cret = ccall((:atg_quantized_gru_cell, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, input.pointer, hx.pointer, w_ih.pointer, w_hh.pointer, b_ih.pointer, b_hh.pointer, packed_ih.pointer, packed_hh.pointer, col_offsets_ih.pointer, col_offsets_hh.pointer, scale_ih_s_.pointer, scale_hh_s_.pointer, zero_point_ih_s_.pointer, zero_point_hh_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export quantized_lstm


"""
    quantized_lstm(input::Tensor, hx_data::Array{Tensor{T,N}}, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int, batch_first::Int, dtype::Int, use_dynamic::Int)

 Wrapper of C++ function void atg\\_quantized\\_lstm(tensor *out\\_\\_, tensor input, tensor *hx\\_data, int hx\\_len, tensor *params\\_data, int params\\_len, int has\\_biases, int64\\_t num\\_layers, double dropout, int train, int bidirectional, int batch\\_first, int dtype, int use\\_dynamic)
"""
function quantized_lstm(input::Tensor, hx_data::Array{Tensor{T,N}}, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int, batch_first::Int, dtype::Int, use_dynamic::Int) where {T,N}
    outputs__ = Int[0, 0, 0]
    hx_data_ta_ = map(x->x.pointer, hx_data)
    hx_len = length(hx_data)
    params_data_ta_ = map(x->x.pointer, params_data)
    params_len = length(params_data)
    __cret = ccall((:atg_quantized_lstm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint, Clonglong, Cdouble, Cint, Cint, Cint, Cint, Cint),
                 outputs__, input.pointer, hx_data_ta_, hx_len, params_data_ta_, params_len, has_biases, num_layers, dropout, train, bidirectional, batch_first, dtype, use_dynamic)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    __o_3 = tensor_from_ptr(Ptr{Cvoid}(outputs__[3]))
    return __o_1, __o_2, __o_3
end



export quantized_lstm1


"""
    quantized_lstm1(data::Tensor, batch_sizes::Tensor, hx_data::Array{Tensor{T,N}}, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int, dtype::Int, use_dynamic::Int)

 Wrapper of C++ function void atg\\_quantized\\_lstm1(tensor *out\\_\\_, tensor data, tensor batch\\_sizes, tensor *hx\\_data, int hx\\_len, tensor *params\\_data, int params\\_len, int has\\_biases, int64\\_t num\\_layers, double dropout, int train, int bidirectional, int dtype, int use\\_dynamic)
"""
function quantized_lstm1(data::Tensor, batch_sizes::Tensor, hx_data::Array{Tensor{T,N}}, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int, dtype::Int, use_dynamic::Int) where {T,N}
    outputs__ = Int[0, 0, 0]
    hx_data_ta_ = map(x->x.pointer, hx_data)
    hx_len = length(hx_data)
    params_data_ta_ = map(x->x.pointer, params_data)
    params_len = length(params_data)
    __cret = ccall((:atg_quantized_lstm1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint, Clonglong, Cdouble, Cint, Cint, Cint, Cint),
                 outputs__, data.pointer, batch_sizes.pointer, hx_data_ta_, hx_len, params_data_ta_, params_len, has_biases, num_layers, dropout, train, bidirectional, dtype, use_dynamic)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    __o_3 = tensor_from_ptr(Ptr{Cvoid}(outputs__[3]))
    return __o_1, __o_2, __o_3
end



export quantized_lstm_cell


"""
    quantized_lstm_cell(input::Tensor, hx_data::Array{Tensor{T,N}}, w_ih::Tensor, w_hh::Tensor, b_ih::Tensor, b_hh::Tensor, packed_ih::Tensor, packed_hh::Tensor, col_offsets_ih::Tensor, col_offsets_hh::Tensor, scale_ih::TorchNumber, scale_hh::TorchNumber, zero_point_ih::TorchNumber, zero_point_hh::TorchNumber)

 Wrapper of C++ function void atg\\_quantized\\_lstm\\_cell(tensor *out\\_\\_, tensor input, tensor *hx\\_data, int hx\\_len, tensor w\\_ih, tensor w\\_hh, tensor b\\_ih, tensor b\\_hh, tensor packed\\_ih, tensor packed\\_hh, tensor col\\_offsets\\_ih, tensor col\\_offsets\\_hh, scalar scale\\_ih, scalar scale\\_hh, scalar zero\\_point\\_ih, scalar zero\\_point\\_hh)
"""
function quantized_lstm_cell(input::Tensor, hx_data::Array{Tensor{T,N}}, w_ih::Tensor, w_hh::Tensor, b_ih::Tensor, b_hh::Tensor, packed_ih::Tensor, packed_hh::Tensor, col_offsets_ih::Tensor, col_offsets_hh::Tensor, scale_ih::TorchNumber, scale_hh::TorchNumber, zero_point_ih::TorchNumber, zero_point_hh::TorchNumber) where {T,N}
    outputs__ = Int[0, 0]
    hx_data_ta_ = map(x->x.pointer, hx_data)
    hx_len = length(hx_data)
    scale_ih_s_ = Scalar(scale_ih)
    scale_hh_s_ = Scalar(scale_hh)
    zero_point_ih_s_ = Scalar(zero_point_ih)
    zero_point_hh_s_ = Scalar(zero_point_hh)
    __cret = ccall((:atg_quantized_lstm_cell, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, input.pointer, hx_data_ta_, hx_len, w_ih.pointer, w_hh.pointer, b_ih.pointer, b_hh.pointer, packed_ih.pointer, packed_hh.pointer, col_offsets_ih.pointer, col_offsets_hh.pointer, scale_ih_s_.pointer, scale_hh_s_.pointer, zero_point_ih_s_.pointer, zero_point_hh_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export quantized_max_pool2d


"""
    quantized_max_pool2d(self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int)

 Wrapper of C++ function void atg\\_quantized\\_max\\_pool2d(tensor *out\\_\\_, tensor self, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len, int ceil\\_mode)
"""
function quantized_max_pool2d(self::Tensor, kernel_size_data::Array{Int64}, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64}, ceil_mode::Int)
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_quantized_max_pool2d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, kernel_size_data, kernel_size_len, stride_data, stride_len, padding_data, padding_len, dilation_data, dilation_len, ceil_mode)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export quantized_rnn_relu_cell


"""
    quantized_rnn_relu_cell(input::Tensor, hx::Tensor, w_ih::Tensor, w_hh::Tensor, b_ih::Tensor, b_hh::Tensor, packed_ih::Tensor, packed_hh::Tensor, col_offsets_ih::Tensor, col_offsets_hh::Tensor, scale_ih::TorchNumber, scale_hh::TorchNumber, zero_point_ih::TorchNumber, zero_point_hh::TorchNumber)

 Wrapper of C++ function void atg\\_quantized\\_rnn\\_relu\\_cell(tensor *out\\_\\_, tensor input, tensor hx, tensor w\\_ih, tensor w\\_hh, tensor b\\_ih, tensor b\\_hh, tensor packed\\_ih, tensor packed\\_hh, tensor col\\_offsets\\_ih, tensor col\\_offsets\\_hh, scalar scale\\_ih, scalar scale\\_hh, scalar zero\\_point\\_ih, scalar zero\\_point\\_hh)
"""
function quantized_rnn_relu_cell(input::Tensor, hx::Tensor, w_ih::Tensor, w_hh::Tensor, b_ih::Tensor, b_hh::Tensor, packed_ih::Tensor, packed_hh::Tensor, col_offsets_ih::Tensor, col_offsets_hh::Tensor, scale_ih::TorchNumber, scale_hh::TorchNumber, zero_point_ih::TorchNumber, zero_point_hh::TorchNumber)
    outputs__ = Int[0]
    scale_ih_s_ = Scalar(scale_ih)
    scale_hh_s_ = Scalar(scale_hh)
    zero_point_ih_s_ = Scalar(zero_point_ih)
    zero_point_hh_s_ = Scalar(zero_point_hh)
    __cret = ccall((:atg_quantized_rnn_relu_cell, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, input.pointer, hx.pointer, w_ih.pointer, w_hh.pointer, b_ih.pointer, b_hh.pointer, packed_ih.pointer, packed_hh.pointer, col_offsets_ih.pointer, col_offsets_hh.pointer, scale_ih_s_.pointer, scale_hh_s_.pointer, zero_point_ih_s_.pointer, zero_point_hh_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export quantized_rnn_tanh_cell


"""
    quantized_rnn_tanh_cell(input::Tensor, hx::Tensor, w_ih::Tensor, w_hh::Tensor, b_ih::Tensor, b_hh::Tensor, packed_ih::Tensor, packed_hh::Tensor, col_offsets_ih::Tensor, col_offsets_hh::Tensor, scale_ih::TorchNumber, scale_hh::TorchNumber, zero_point_ih::TorchNumber, zero_point_hh::TorchNumber)

 Wrapper of C++ function void atg\\_quantized\\_rnn\\_tanh\\_cell(tensor *out\\_\\_, tensor input, tensor hx, tensor w\\_ih, tensor w\\_hh, tensor b\\_ih, tensor b\\_hh, tensor packed\\_ih, tensor packed\\_hh, tensor col\\_offsets\\_ih, tensor col\\_offsets\\_hh, scalar scale\\_ih, scalar scale\\_hh, scalar zero\\_point\\_ih, scalar zero\\_point\\_hh)
"""
function quantized_rnn_tanh_cell(input::Tensor, hx::Tensor, w_ih::Tensor, w_hh::Tensor, b_ih::Tensor, b_hh::Tensor, packed_ih::Tensor, packed_hh::Tensor, col_offsets_ih::Tensor, col_offsets_hh::Tensor, scale_ih::TorchNumber, scale_hh::TorchNumber, zero_point_ih::TorchNumber, zero_point_hh::TorchNumber)
    outputs__ = Int[0]
    scale_ih_s_ = Scalar(scale_ih)
    scale_hh_s_ = Scalar(scale_hh)
    zero_point_ih_s_ = Scalar(zero_point_ih)
    zero_point_hh_s_ = Scalar(zero_point_hh)
    __cret = ccall((:atg_quantized_rnn_tanh_cell, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, input.pointer, hx.pointer, w_ih.pointer, w_hh.pointer, b_ih.pointer, b_hh.pointer, packed_ih.pointer, packed_hh.pointer, col_offsets_ih.pointer, col_offsets_hh.pointer, scale_ih_s_.pointer, scale_hh_s_.pointer, zero_point_ih_s_.pointer, zero_point_hh_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.rand


"""
    rand(size_data::Array{Int64}, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_rand(tensor *out\\_\\_, int64\\_t *size\\_data, int size\\_len, int options\\_kind, int options\\_device)
"""
function rand(size_data::Array{Int64}, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_rand, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, size_data, size_len, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export rand_like


"""
    rand_like(self::Tensor)

 Wrapper of C++ function void atg\\_rand\\_like(tensor *out\\_\\_, tensor self)
"""
function rand_like(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_rand_like, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export rand_like1


"""
    rand_like1(self::Tensor, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_rand\\_like1(tensor *out\\_\\_, tensor self, int options\\_kind, int options\\_device)
"""
function rand_like1(self::Tensor, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_rand_like1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export rand_out


"""
    rand_out(out::Tensor, size_data::Array{Int64})

 Wrapper of C++ function void atg\\_rand\\_out(tensor *out\\_\\_, tensor out, int64\\_t *size\\_data, int size\\_len)
"""
function rand_out(out::Tensor, size_data::Array{Int64})
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_rand_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, size_data, size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export randint


"""
    randint(high::Int64, size_data::Array{Int64}, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_randint(tensor *out\\_\\_, int64\\_t high, int64\\_t *size\\_data, int size\\_len, int options\\_kind, int options\\_device)
"""
function randint(high::Int64, size_data::Array{Int64}, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_randint, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Clonglong, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, high, size_data, size_len, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export randint1


"""
    randint1(low::Int64, high::Int64, size_data::Array{Int64}, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_randint1(tensor *out\\_\\_, int64\\_t low, int64\\_t high, int64\\_t *size\\_data, int size\\_len, int options\\_kind, int options\\_device)
"""
function randint1(low::Int64, high::Int64, size_data::Array{Int64}, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_randint1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Clonglong, Clonglong, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, low, high, size_data, size_len, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export randint_like


"""
    randint_like(self::Tensor, high::Int64)

 Wrapper of C++ function void atg\\_randint\\_like(tensor *out\\_\\_, tensor self, int64\\_t high)
"""
function randint_like(self::Tensor, high::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_randint_like, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, high)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export randint_like1


"""
    randint_like1(self::Tensor, low::Int64, high::Int64)

 Wrapper of C++ function void atg\\_randint\\_like1(tensor *out\\_\\_, tensor self, int64\\_t low, int64\\_t high)
"""
function randint_like1(self::Tensor, low::Int64, high::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_randint_like1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong),
                 outputs__, self.pointer, low, high)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export randint_like2


"""
    randint_like2(self::Tensor, high::Int64, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_randint\\_like2(tensor *out\\_\\_, tensor self, int64\\_t high, int options\\_kind, int options\\_device)
"""
function randint_like2(self::Tensor, high::Int64, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_randint_like2, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint, Cint),
                 outputs__, self.pointer, high, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export randint_like3


"""
    randint_like3(self::Tensor, low::Int64, high::Int64, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_randint\\_like3(tensor *out\\_\\_, tensor self, int64\\_t low, int64\\_t high, int options\\_kind, int options\\_device)
"""
function randint_like3(self::Tensor, low::Int64, high::Int64, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_randint_like3, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Cint, Cint),
                 outputs__, self.pointer, low, high, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export randint_out


"""
    randint_out(out::Tensor, high::Int64, size_data::Array{Int64})

 Wrapper of C++ function void atg\\_randint\\_out(tensor *out\\_\\_, tensor out, int64\\_t high, int64\\_t *size\\_data, int size\\_len)
"""
function randint_out(out::Tensor, high::Int64, size_data::Array{Int64})
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_randint_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, high, size_data, size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export randint_out1


"""
    randint_out1(out::Tensor, low::Int64, high::Int64, size_data::Array{Int64})

 Wrapper of C++ function void atg\\_randint\\_out1(tensor *out\\_\\_, tensor out, int64\\_t low, int64\\_t high, int64\\_t *size\\_data, int size\\_len)
"""
function randint_out1(out::Tensor, low::Int64, high::Int64, size_data::Array{Int64})
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_randint_out1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, low, high, size_data, size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.randn


"""
    randn(size_data::Array{Int64}, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_randn(tensor *out\\_\\_, int64\\_t *size\\_data, int size\\_len, int options\\_kind, int options\\_device)
"""
function randn(size_data::Array{Int64}, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_randn, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, size_data, size_len, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export randn_like


"""
    randn_like(self::Tensor)

 Wrapper of C++ function void atg\\_randn\\_like(tensor *out\\_\\_, tensor self)
"""
function randn_like(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_randn_like, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export randn_like1


"""
    randn_like1(self::Tensor, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_randn\\_like1(tensor *out\\_\\_, tensor self, int options\\_kind, int options\\_device)
"""
function randn_like1(self::Tensor, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_randn_like1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export randn_out


"""
    randn_out(out::Tensor, size_data::Array{Int64})

 Wrapper of C++ function void atg\\_randn\\_out(tensor *out\\_\\_, tensor out, int64\\_t *size\\_data, int size\\_len)
"""
function randn_out(out::Tensor, size_data::Array{Int64})
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_randn_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, size_data, size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export random!


"""
    random!(self::Tensor)

 Wrapper of C++ function void atg\\_random\\_(tensor *out\\_\\_, tensor self)
"""
function random!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_random_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export random1!


"""
    random1!(self::Tensor, to::Int64)

 Wrapper of C++ function void atg\\_random\\_1(tensor *out\\_\\_, tensor self, int64\\_t to)
"""
function random1!(self::Tensor, to::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_random_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, to)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export random2!


"""
    random2!(self::Tensor, from::Int64, to::Int64)

 Wrapper of C++ function void atg\\_random\\_2(tensor *out\\_\\_, tensor self, int64\\_t from, int64\\_t to)
"""
function random2!(self::Tensor, from::Int64, to::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_random_2, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong),
                 outputs__, self.pointer, from, to)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export randperm


"""
    randperm(n::Int64, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_randperm(tensor *out\\_\\_, int64\\_t n, int options\\_kind, int options\\_device)
"""
function randperm(n::Int64, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_randperm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Clonglong, Cint, Cint),
                 outputs__, n, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export randperm_out


"""
    randperm_out(out::Tensor, n::Int64)

 Wrapper of C++ function void atg\\_randperm\\_out(tensor *out\\_\\_, tensor out, int64\\_t n)
"""
function randperm_out(out::Tensor, n::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_randperm_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, out.pointer, n)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.range


"""
    range(start::TorchNumber, end_::TorchNumber, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_range(tensor *out\\_\\_, scalar start, scalar end, int options\\_kind, int options\\_device)
"""
function range(start::TorchNumber, end_::TorchNumber, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    start_s_ = Scalar(start)
    end__s_ = Scalar(end_)
    __cret = ccall((:atg_range, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, start_s_.pointer, end__s_.pointer, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export range1


"""
    range1(start::TorchNumber, end_::TorchNumber, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_range1(tensor *out\\_\\_, scalar start, scalar end, int options\\_kind, int options\\_device)
"""
function range1(start::TorchNumber, end_::TorchNumber, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    start_s_ = Scalar(start)
    end__s_ = Scalar(end_)
    __cret = ccall((:atg_range1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, start_s_.pointer, end__s_.pointer, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export range_out


"""
    range_out(out::Tensor, start::TorchNumber, end_::TorchNumber)

 Wrapper of C++ function void atg\\_range\\_out(tensor *out\\_\\_, tensor out, scalar start, scalar end)
"""
function range_out(out::Tensor, start::TorchNumber, end_::TorchNumber)
    outputs__ = Int[0]
    start_s_ = Scalar(start)
    end__s_ = Scalar(end_)
    __cret = ccall((:atg_range_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, start_s_.pointer, end__s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.real


"""
    real(self::Tensor)

 Wrapper of C++ function void atg\\_real(tensor *out\\_\\_, tensor self)
"""
function real(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_real, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export real_out


"""
    real_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_real\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function real_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_real_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export reciprocal


"""
    reciprocal(self::Tensor)

 Wrapper of C++ function void atg\\_reciprocal(tensor *out\\_\\_, tensor self)
"""
function reciprocal(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_reciprocal, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export reciprocal!


"""
    reciprocal!(self::Tensor)

 Wrapper of C++ function void atg\\_reciprocal\\_(tensor *out\\_\\_, tensor self)
"""
function reciprocal!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_reciprocal_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export reciprocal_out


"""
    reciprocal_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_reciprocal\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function reciprocal_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_reciprocal_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export reflection_pad1d


"""
    reflection_pad1d(self::Tensor, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_reflection\\_pad1d(tensor *out\\_\\_, tensor self, int64\\_t *padding\\_data, int padding\\_len)
"""
function reflection_pad1d(self::Tensor, padding_data::Array{Int64})
    outputs__ = Int[0]
    padding_len = length(padding_data)
    __cret = ccall((:atg_reflection_pad1d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export reflection_pad1d_backward


"""
    reflection_pad1d_backward(grad_output::Tensor, self::Tensor, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_reflection\\_pad1d\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, int64\\_t *padding\\_data, int padding\\_len)
"""
function reflection_pad1d_backward(grad_output::Tensor, self::Tensor, padding_data::Array{Int64})
    outputs__ = Int[0]
    padding_len = length(padding_data)
    __cret = ccall((:atg_reflection_pad1d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, grad_output.pointer, self.pointer, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export reflection_pad1d_backward_out


"""
    reflection_pad1d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_reflection\\_pad1d\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, int64\\_t *padding\\_data, int padding\\_len)
"""
function reflection_pad1d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, padding_data::Array{Int64})
    outputs__ = Int[0]
    padding_len = length(padding_data)
    __cret = ccall((:atg_reflection_pad1d_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export reflection_pad1d_out


"""
    reflection_pad1d_out(out::Tensor, self::Tensor, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_reflection\\_pad1d\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *padding\\_data, int padding\\_len)
"""
function reflection_pad1d_out(out::Tensor, self::Tensor, padding_data::Array{Int64})
    outputs__ = Int[0]
    padding_len = length(padding_data)
    __cret = ccall((:atg_reflection_pad1d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export reflection_pad2d


"""
    reflection_pad2d(self::Tensor, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_reflection\\_pad2d(tensor *out\\_\\_, tensor self, int64\\_t *padding\\_data, int padding\\_len)
"""
function reflection_pad2d(self::Tensor, padding_data::Array{Int64})
    outputs__ = Int[0]
    padding_len = length(padding_data)
    __cret = ccall((:atg_reflection_pad2d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export reflection_pad2d_backward


"""
    reflection_pad2d_backward(grad_output::Tensor, self::Tensor, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_reflection\\_pad2d\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, int64\\_t *padding\\_data, int padding\\_len)
"""
function reflection_pad2d_backward(grad_output::Tensor, self::Tensor, padding_data::Array{Int64})
    outputs__ = Int[0]
    padding_len = length(padding_data)
    __cret = ccall((:atg_reflection_pad2d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, grad_output.pointer, self.pointer, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export reflection_pad2d_backward_out


"""
    reflection_pad2d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_reflection\\_pad2d\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, int64\\_t *padding\\_data, int padding\\_len)
"""
function reflection_pad2d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, padding_data::Array{Int64})
    outputs__ = Int[0]
    padding_len = length(padding_data)
    __cret = ccall((:atg_reflection_pad2d_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export reflection_pad2d_out


"""
    reflection_pad2d_out(out::Tensor, self::Tensor, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_reflection\\_pad2d\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *padding\\_data, int padding\\_len)
"""
function reflection_pad2d_out(out::Tensor, self::Tensor, padding_data::Array{Int64})
    outputs__ = Int[0]
    padding_len = length(padding_data)
    __cret = ccall((:atg_reflection_pad2d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export relu


"""
    relu(self::Tensor)

 Wrapper of C++ function void atg\\_relu(tensor *out\\_\\_, tensor self)
"""
function relu(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_relu, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export relu!


"""
    relu!(self::Tensor)

 Wrapper of C++ function void atg\\_relu\\_(tensor *out\\_\\_, tensor self)
"""
function relu!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_relu_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export remainder


"""
    remainder(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_remainder(tensor *out\\_\\_, tensor self, scalar other)
"""
function remainder(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_remainder, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export remainder1


"""
    remainder1(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_remainder1(tensor *out\\_\\_, tensor self, tensor other)
"""
function remainder1(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_remainder1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export remainder!


"""
    remainder!(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_remainder\\_(tensor *out\\_\\_, tensor self, scalar other)
"""
function remainder!(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_remainder_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export remainder1!


"""
    remainder1!(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_remainder\\_1(tensor *out\\_\\_, tensor self, tensor other)
"""
function remainder1!(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_remainder_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export remainder_out


"""
    remainder_out(out::Tensor, self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_remainder\\_out(tensor *out\\_\\_, tensor out, tensor self, scalar other)
"""
function remainder_out(out::Tensor, self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_remainder_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export remainder_out1


"""
    remainder_out1(out::Tensor, self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_remainder\\_out1(tensor *out\\_\\_, tensor out, tensor self, tensor other)
"""
function remainder_out1(out::Tensor, self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_remainder_out1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export renorm


"""
    renorm(self::Tensor, p::TorchNumber, dim::Int64, maxnorm::TorchNumber)

 Wrapper of C++ function void atg\\_renorm(tensor *out\\_\\_, tensor self, scalar p, int64\\_t dim, scalar maxnorm)
"""
function renorm(self::Tensor, p::TorchNumber, dim::Int64, maxnorm::TorchNumber)
    outputs__ = Int[0]
    p_s_ = Scalar(p)
    maxnorm_s_ = Scalar(maxnorm)
    __cret = ccall((:atg_renorm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}),
                 outputs__, self.pointer, p_s_.pointer, dim, maxnorm_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export renorm!


"""
    renorm!(self::Tensor, p::TorchNumber, dim::Int64, maxnorm::TorchNumber)

 Wrapper of C++ function void atg\\_renorm\\_(tensor *out\\_\\_, tensor self, scalar p, int64\\_t dim, scalar maxnorm)
"""
function renorm!(self::Tensor, p::TorchNumber, dim::Int64, maxnorm::TorchNumber)
    outputs__ = Int[0]
    p_s_ = Scalar(p)
    maxnorm_s_ = Scalar(maxnorm)
    __cret = ccall((:atg_renorm_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}),
                 outputs__, self.pointer, p_s_.pointer, dim, maxnorm_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export renorm_out


"""
    renorm_out(out::Tensor, self::Tensor, p::TorchNumber, dim::Int64, maxnorm::TorchNumber)

 Wrapper of C++ function void atg\\_renorm\\_out(tensor *out\\_\\_, tensor out, tensor self, scalar p, int64\\_t dim, scalar maxnorm)
"""
function renorm_out(out::Tensor, self::Tensor, p::TorchNumber, dim::Int64, maxnorm::TorchNumber)
    outputs__ = Int[0]
    p_s_ = Scalar(p)
    maxnorm_s_ = Scalar(maxnorm)
    __cret = ccall((:atg_renorm_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, p_s_.pointer, dim, maxnorm_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.repeat


"""
    repeat(self::Tensor, repeats_data::Array{Int64})

 Wrapper of C++ function void atg\\_repeat(tensor *out\\_\\_, tensor self, int64\\_t *repeats\\_data, int repeats\\_len)
"""
function repeat(self::Tensor, repeats_data::Array{Int64})
    outputs__ = Int[0]
    repeats_len = length(repeats_data)
    __cret = ccall((:atg_repeat, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, repeats_data, repeats_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export repeat_interleave


"""
    repeat_interleave(repeats::Tensor)

 Wrapper of C++ function void atg\\_repeat\\_interleave(tensor *out\\_\\_, tensor repeats)
"""
function repeat_interleave(repeats::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_repeat_interleave, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, repeats.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export repeat_interleave1


"""
    repeat_interleave1(self::Tensor, repeats::Tensor, dim::Int64)

 Wrapper of C++ function void atg\\_repeat\\_interleave1(tensor *out\\_\\_, tensor self, tensor repeats, int64\\_t dim)
"""
function repeat_interleave1(self::Tensor, repeats::Tensor, dim::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_repeat_interleave1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, repeats.pointer, dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export repeat_interleave2


"""
    repeat_interleave2(self::Tensor, repeats::Int64, dim::Int64)

 Wrapper of C++ function void atg\\_repeat\\_interleave2(tensor *out\\_\\_, tensor self, int64\\_t repeats, int64\\_t dim)
"""
function repeat_interleave2(self::Tensor, repeats::Int64, dim::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_repeat_interleave2, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong),
                 outputs__, self.pointer, repeats, dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export replication_pad1d


"""
    replication_pad1d(self::Tensor, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_replication\\_pad1d(tensor *out\\_\\_, tensor self, int64\\_t *padding\\_data, int padding\\_len)
"""
function replication_pad1d(self::Tensor, padding_data::Array{Int64})
    outputs__ = Int[0]
    padding_len = length(padding_data)
    __cret = ccall((:atg_replication_pad1d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export replication_pad1d_backward


"""
    replication_pad1d_backward(grad_output::Tensor, self::Tensor, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_replication\\_pad1d\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, int64\\_t *padding\\_data, int padding\\_len)
"""
function replication_pad1d_backward(grad_output::Tensor, self::Tensor, padding_data::Array{Int64})
    outputs__ = Int[0]
    padding_len = length(padding_data)
    __cret = ccall((:atg_replication_pad1d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, grad_output.pointer, self.pointer, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export replication_pad1d_backward_out


"""
    replication_pad1d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_replication\\_pad1d\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, int64\\_t *padding\\_data, int padding\\_len)
"""
function replication_pad1d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, padding_data::Array{Int64})
    outputs__ = Int[0]
    padding_len = length(padding_data)
    __cret = ccall((:atg_replication_pad1d_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export replication_pad1d_out


"""
    replication_pad1d_out(out::Tensor, self::Tensor, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_replication\\_pad1d\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *padding\\_data, int padding\\_len)
"""
function replication_pad1d_out(out::Tensor, self::Tensor, padding_data::Array{Int64})
    outputs__ = Int[0]
    padding_len = length(padding_data)
    __cret = ccall((:atg_replication_pad1d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export replication_pad2d


"""
    replication_pad2d(self::Tensor, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_replication\\_pad2d(tensor *out\\_\\_, tensor self, int64\\_t *padding\\_data, int padding\\_len)
"""
function replication_pad2d(self::Tensor, padding_data::Array{Int64})
    outputs__ = Int[0]
    padding_len = length(padding_data)
    __cret = ccall((:atg_replication_pad2d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export replication_pad2d_backward


"""
    replication_pad2d_backward(grad_output::Tensor, self::Tensor, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_replication\\_pad2d\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, int64\\_t *padding\\_data, int padding\\_len)
"""
function replication_pad2d_backward(grad_output::Tensor, self::Tensor, padding_data::Array{Int64})
    outputs__ = Int[0]
    padding_len = length(padding_data)
    __cret = ccall((:atg_replication_pad2d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, grad_output.pointer, self.pointer, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export replication_pad2d_backward_out


"""
    replication_pad2d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_replication\\_pad2d\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, int64\\_t *padding\\_data, int padding\\_len)
"""
function replication_pad2d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, padding_data::Array{Int64})
    outputs__ = Int[0]
    padding_len = length(padding_data)
    __cret = ccall((:atg_replication_pad2d_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export replication_pad2d_out


"""
    replication_pad2d_out(out::Tensor, self::Tensor, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_replication\\_pad2d\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *padding\\_data, int padding\\_len)
"""
function replication_pad2d_out(out::Tensor, self::Tensor, padding_data::Array{Int64})
    outputs__ = Int[0]
    padding_len = length(padding_data)
    __cret = ccall((:atg_replication_pad2d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export replication_pad3d


"""
    replication_pad3d(self::Tensor, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_replication\\_pad3d(tensor *out\\_\\_, tensor self, int64\\_t *padding\\_data, int padding\\_len)
"""
function replication_pad3d(self::Tensor, padding_data::Array{Int64})
    outputs__ = Int[0]
    padding_len = length(padding_data)
    __cret = ccall((:atg_replication_pad3d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export replication_pad3d_backward


"""
    replication_pad3d_backward(grad_output::Tensor, self::Tensor, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_replication\\_pad3d\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, int64\\_t *padding\\_data, int padding\\_len)
"""
function replication_pad3d_backward(grad_output::Tensor, self::Tensor, padding_data::Array{Int64})
    outputs__ = Int[0]
    padding_len = length(padding_data)
    __cret = ccall((:atg_replication_pad3d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, grad_output.pointer, self.pointer, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export replication_pad3d_backward_out


"""
    replication_pad3d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_replication\\_pad3d\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, int64\\_t *padding\\_data, int padding\\_len)
"""
function replication_pad3d_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, padding_data::Array{Int64})
    outputs__ = Int[0]
    padding_len = length(padding_data)
    __cret = ccall((:atg_replication_pad3d_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export replication_pad3d_out


"""
    replication_pad3d_out(out::Tensor, self::Tensor, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_replication\\_pad3d\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *padding\\_data, int padding\\_len)
"""
function replication_pad3d_out(out::Tensor, self::Tensor, padding_data::Array{Int64})
    outputs__ = Int[0]
    padding_len = length(padding_data)
    __cret = ccall((:atg_replication_pad3d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export requires_grad!


"""
    requires_grad!(self::Tensor, _requires_grad::Int)

 Wrapper of C++ function void atg\\_requires\\_grad\\_(tensor *out\\_\\_, tensor self, int \\_requires\\_grad)
"""
function requires_grad!(self::Tensor, _requires_grad::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_requires_grad_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, _requires_grad)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.reshape


"""
    reshape(self::Tensor, shape_data::Array{Int64})

 Wrapper of C++ function void atg\\_reshape(tensor *out\\_\\_, tensor self, int64\\_t *shape\\_data, int shape\\_len)
"""
function reshape(self::Tensor, shape_data::Array{Int64})
    outputs__ = Int[0]
    shape_len = length(shape_data)
    __cret = ccall((:atg_reshape, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, shape_data, shape_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export reshape_as


"""
    reshape_as(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_reshape\\_as(tensor *out\\_\\_, tensor self, tensor other)
"""
function reshape_as(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_reshape_as, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.resize!


"""
    resize!(self::Tensor, size_data::Array{Int64})

 Wrapper of C++ function void atg\\_resize\\_(tensor *out\\_\\_, tensor self, int64\\_t *size\\_data, int size\\_len)
"""
function resize!(self::Tensor, size_data::Array{Int64})
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_resize_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, size_data, size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export resize_as!


"""
    resize_as!(self::Tensor, the_template::Tensor)

 Wrapper of C++ function void atg\\_resize\\_as\\_(tensor *out\\_\\_, tensor self, tensor the\\_template)
"""
function resize_as!(self::Tensor, the_template::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_resize_as_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, the_template.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export rfft


"""
    rfft(self::Tensor, signal_ndim::Int64, normalized::Int, onesided::Int)

 Wrapper of C++ function void atg\\_rfft(tensor *out\\_\\_, tensor self, int64\\_t signal\\_ndim, int normalized, int onesided)
"""
function rfft(self::Tensor, signal_ndim::Int64, normalized::Int, onesided::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_rfft, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint, Cint),
                 outputs__, self.pointer, signal_ndim, normalized, onesided)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export rnn_relu


"""
    rnn_relu(input::Tensor, hx::Tensor, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int, batch_first::Int)

 Wrapper of C++ function void atg\\_rnn\\_relu(tensor *out\\_\\_, tensor input, tensor hx, tensor *params\\_data, int params\\_len, int has\\_biases, int64\\_t num\\_layers, double dropout, int train, int bidirectional, int batch\\_first)
"""
function rnn_relu(input::Tensor, hx::Tensor, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int, batch_first::Int) where {T,N}
    outputs__ = Int[0, 0]
    params_data_ta_ = map(x->x.pointer, params_data)
    params_len = length(params_data)
    __cret = ccall((:atg_rnn_relu, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Clonglong, Cdouble, Cint, Cint, Cint),
                 outputs__, input.pointer, hx.pointer, params_data_ta_, params_len, has_biases, num_layers, dropout, train, bidirectional, batch_first)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export rnn_relu1


"""
    rnn_relu1(data::Tensor, batch_sizes::Tensor, hx::Tensor, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int)

 Wrapper of C++ function void atg\\_rnn\\_relu1(tensor *out\\_\\_, tensor data, tensor batch\\_sizes, tensor hx, tensor *params\\_data, int params\\_len, int has\\_biases, int64\\_t num\\_layers, double dropout, int train, int bidirectional)
"""
function rnn_relu1(data::Tensor, batch_sizes::Tensor, hx::Tensor, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int) where {T,N}
    outputs__ = Int[0, 0]
    params_data_ta_ = map(x->x.pointer, params_data)
    params_len = length(params_data)
    __cret = ccall((:atg_rnn_relu1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Clonglong, Cdouble, Cint, Cint),
                 outputs__, data.pointer, batch_sizes.pointer, hx.pointer, params_data_ta_, params_len, has_biases, num_layers, dropout, train, bidirectional)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export rnn_relu_cell


"""
    rnn_relu_cell(input::Tensor, hx::Tensor, w_ih::Tensor, w_hh::Tensor, b_ih::Tensor, b_hh::Tensor)

 Wrapper of C++ function void atg\\_rnn\\_relu\\_cell(tensor *out\\_\\_, tensor input, tensor hx, tensor w\\_ih, tensor w\\_hh, tensor b\\_ih, tensor b\\_hh)
"""
function rnn_relu_cell(input::Tensor, hx::Tensor, w_ih::Tensor, w_hh::Tensor, b_ih::Tensor, b_hh::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_rnn_relu_cell, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, input.pointer, hx.pointer, w_ih.pointer, w_hh.pointer, b_ih.pointer, b_hh.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export rnn_tanh


"""
    rnn_tanh(input::Tensor, hx::Tensor, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int, batch_first::Int)

 Wrapper of C++ function void atg\\_rnn\\_tanh(tensor *out\\_\\_, tensor input, tensor hx, tensor *params\\_data, int params\\_len, int has\\_biases, int64\\_t num\\_layers, double dropout, int train, int bidirectional, int batch\\_first)
"""
function rnn_tanh(input::Tensor, hx::Tensor, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int, batch_first::Int) where {T,N}
    outputs__ = Int[0, 0]
    params_data_ta_ = map(x->x.pointer, params_data)
    params_len = length(params_data)
    __cret = ccall((:atg_rnn_tanh, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Clonglong, Cdouble, Cint, Cint, Cint),
                 outputs__, input.pointer, hx.pointer, params_data_ta_, params_len, has_biases, num_layers, dropout, train, bidirectional, batch_first)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export rnn_tanh1


"""
    rnn_tanh1(data::Tensor, batch_sizes::Tensor, hx::Tensor, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int)

 Wrapper of C++ function void atg\\_rnn\\_tanh1(tensor *out\\_\\_, tensor data, tensor batch\\_sizes, tensor hx, tensor *params\\_data, int params\\_len, int has\\_biases, int64\\_t num\\_layers, double dropout, int train, int bidirectional)
"""
function rnn_tanh1(data::Tensor, batch_sizes::Tensor, hx::Tensor, params_data::Array{Tensor{T,N}}, has_biases::Int, num_layers::Int64, dropout::Float64, train::Int, bidirectional::Int) where {T,N}
    outputs__ = Int[0, 0]
    params_data_ta_ = map(x->x.pointer, params_data)
    params_len = length(params_data)
    __cret = ccall((:atg_rnn_tanh1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Clonglong, Cdouble, Cint, Cint),
                 outputs__, data.pointer, batch_sizes.pointer, hx.pointer, params_data_ta_, params_len, has_biases, num_layers, dropout, train, bidirectional)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export rnn_tanh_cell


"""
    rnn_tanh_cell(input::Tensor, hx::Tensor, w_ih::Tensor, w_hh::Tensor, b_ih::Tensor, b_hh::Tensor)

 Wrapper of C++ function void atg\\_rnn\\_tanh\\_cell(tensor *out\\_\\_, tensor input, tensor hx, tensor w\\_ih, tensor w\\_hh, tensor b\\_ih, tensor b\\_hh)
"""
function rnn_tanh_cell(input::Tensor, hx::Tensor, w_ih::Tensor, w_hh::Tensor, b_ih::Tensor, b_hh::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_rnn_tanh_cell, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, input.pointer, hx.pointer, w_ih.pointer, w_hh.pointer, b_ih.pointer, b_hh.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export roll


"""
    roll(self::Tensor, shifts_data::Array{Int64}, dims_data::Array{Int64})

 Wrapper of C++ function void atg\\_roll(tensor *out\\_\\_, tensor self, int64\\_t *shifts\\_data, int shifts\\_len, int64\\_t *dims\\_data, int dims\\_len)
"""
function roll(self::Tensor, shifts_data::Array{Int64}, dims_data::Array{Int64})
    outputs__ = Int[0]
    shifts_len = length(shifts_data)
    dims_len = length(dims_data)
    __cret = ccall((:atg_roll, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, shifts_data, shifts_len, dims_data, dims_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export rot90


"""
    rot90(self::Tensor, k::Int64, dims_data::Array{Int64})

 Wrapper of C++ function void atg\\_rot90(tensor *out\\_\\_, tensor self, int64\\_t k, int64\\_t *dims\\_data, int dims\\_len)
"""
function rot90(self::Tensor, k::Int64, dims_data::Array{Int64})
    outputs__ = Int[0]
    dims_len = length(dims_data)
    __cret = ccall((:atg_rot90, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, k, dims_data, dims_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.round


"""
    round(self::Tensor)

 Wrapper of C++ function void atg\\_round(tensor *out\\_\\_, tensor self)
"""
function round(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_round, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export round!


"""
    round!(self::Tensor)

 Wrapper of C++ function void atg\\_round\\_(tensor *out\\_\\_, tensor self)
"""
function round!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_round_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export round_out


"""
    round_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_round\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function round_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_round_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export rrelu


"""
    rrelu(self::Tensor, training::Int)

 Wrapper of C++ function void atg\\_rrelu(tensor *out\\_\\_, tensor self, int training)
"""
function rrelu(self::Tensor, training::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_rrelu, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, training)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export rrelu!


"""
    rrelu!(self::Tensor, training::Int)

 Wrapper of C++ function void atg\\_rrelu\\_(tensor *out\\_\\_, tensor self, int training)
"""
function rrelu!(self::Tensor, training::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_rrelu_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, training)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export rrelu_with_noise


"""
    rrelu_with_noise(self::Tensor, noise::Tensor, training::Int)

 Wrapper of C++ function void atg\\_rrelu\\_with\\_noise(tensor *out\\_\\_, tensor self, tensor noise, int training)
"""
function rrelu_with_noise(self::Tensor, noise::Tensor, training::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_rrelu_with_noise, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, noise.pointer, training)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export rrelu_with_noise!


"""
    rrelu_with_noise!(self::Tensor, noise::Tensor, training::Int)

 Wrapper of C++ function void atg\\_rrelu\\_with\\_noise\\_(tensor *out\\_\\_, tensor self, tensor noise, int training)
"""
function rrelu_with_noise!(self::Tensor, noise::Tensor, training::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_rrelu_with_noise_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, noise.pointer, training)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export rrelu_with_noise_backward


"""
    rrelu_with_noise_backward(grad_output::Tensor, self::Tensor, noise::Tensor, lower::TorchNumber, upper::TorchNumber, training::Int)

 Wrapper of C++ function void atg\\_rrelu\\_with\\_noise\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, tensor noise, scalar lower, scalar upper, int training)
"""
function rrelu_with_noise_backward(grad_output::Tensor, self::Tensor, noise::Tensor, lower::TorchNumber, upper::TorchNumber, training::Int)
    outputs__ = Int[0]
    lower_s_ = Scalar(lower)
    upper_s_ = Scalar(upper)
    __cret = ccall((:atg_rrelu_with_noise_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, grad_output.pointer, self.pointer, noise.pointer, lower_s_.pointer, upper_s_.pointer, training)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export rrelu_with_noise_backward_out


"""
    rrelu_with_noise_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, noise::Tensor, lower::TorchNumber, upper::TorchNumber, training::Int)

 Wrapper of C++ function void atg\\_rrelu\\_with\\_noise\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, tensor noise, scalar lower, scalar upper, int training)
"""
function rrelu_with_noise_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, noise::Tensor, lower::TorchNumber, upper::TorchNumber, training::Int)
    outputs__ = Int[0]
    lower_s_ = Scalar(lower)
    upper_s_ = Scalar(upper)
    __cret = ccall((:atg_rrelu_with_noise_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, noise.pointer, lower_s_.pointer, upper_s_.pointer, training)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export rrelu_with_noise_out


"""
    rrelu_with_noise_out(out::Tensor, self::Tensor, noise::Tensor, training::Int)

 Wrapper of C++ function void atg\\_rrelu\\_with\\_noise\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor noise, int training)
"""
function rrelu_with_noise_out(out::Tensor, self::Tensor, noise::Tensor, training::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_rrelu_with_noise_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, noise.pointer, training)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export rsqrt


"""
    rsqrt(self::Tensor)

 Wrapper of C++ function void atg\\_rsqrt(tensor *out\\_\\_, tensor self)
"""
function rsqrt(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_rsqrt, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export rsqrt!


"""
    rsqrt!(self::Tensor)

 Wrapper of C++ function void atg\\_rsqrt\\_(tensor *out\\_\\_, tensor self)
"""
function rsqrt!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_rsqrt_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export rsqrt_out


"""
    rsqrt_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_rsqrt\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function rsqrt_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_rsqrt_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export rsub


"""
    rsub(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_rsub(tensor *out\\_\\_, tensor self, tensor other)
"""
function rsub(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_rsub, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export rsub1


"""
    rsub1(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_rsub1(tensor *out\\_\\_, tensor self, scalar other)
"""
function rsub1(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_rsub1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export scalar_tensor


"""
    scalar_tensor(s::TorchNumber, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_scalar\\_tensor(tensor *out\\_\\_, scalar s, int options\\_kind, int options\\_device)
"""
function scalar_tensor(s::TorchNumber, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    s_s_ = Scalar(s)
    __cret = ccall((:atg_scalar_tensor, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, s_s_.pointer, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export scatter


"""
    scatter(self::Tensor, dim::Int64, index::Tensor, src::Tensor)

 Wrapper of C++ function void atg\\_scatter(tensor *out\\_\\_, tensor self, int64\\_t dim, tensor index, tensor src)
"""
function scatter(self::Tensor, dim::Int64, index::Tensor, src::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_scatter, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, dim, index.pointer, src.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export scatter1


"""
    scatter1(self::Tensor, dim::Int64, index::Tensor, value::TorchNumber)

 Wrapper of C++ function void atg\\_scatter1(tensor *out\\_\\_, tensor self, int64\\_t dim, tensor index, scalar value)
"""
function scatter1(self::Tensor, dim::Int64, index::Tensor, value::TorchNumber)
    outputs__ = Int[0]
    value_s_ = Scalar(value)
    __cret = ccall((:atg_scatter1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, dim, index.pointer, value_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export scatter!


"""
    scatter!(self::Tensor, dim::Int64, index::Tensor, src::Tensor)

 Wrapper of C++ function void atg\\_scatter\\_(tensor *out\\_\\_, tensor self, int64\\_t dim, tensor index, tensor src)
"""
function scatter!(self::Tensor, dim::Int64, index::Tensor, src::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_scatter_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, dim, index.pointer, src.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export scatter1!


"""
    scatter1!(self::Tensor, dim::Int64, index::Tensor, value::TorchNumber)

 Wrapper of C++ function void atg\\_scatter\\_1(tensor *out\\_\\_, tensor self, int64\\_t dim, tensor index, scalar value)
"""
function scatter1!(self::Tensor, dim::Int64, index::Tensor, value::TorchNumber)
    outputs__ = Int[0]
    value_s_ = Scalar(value)
    __cret = ccall((:atg_scatter_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, dim, index.pointer, value_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export scatter_add


"""
    scatter_add(self::Tensor, dim::Int64, index::Tensor, src::Tensor)

 Wrapper of C++ function void atg\\_scatter\\_add(tensor *out\\_\\_, tensor self, int64\\_t dim, tensor index, tensor src)
"""
function scatter_add(self::Tensor, dim::Int64, index::Tensor, src::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_scatter_add, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, dim, index.pointer, src.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export scatter_add!


"""
    scatter_add!(self::Tensor, dim::Int64, index::Tensor, src::Tensor)

 Wrapper of C++ function void atg\\_scatter\\_add\\_(tensor *out\\_\\_, tensor self, int64\\_t dim, tensor index, tensor src)
"""
function scatter_add!(self::Tensor, dim::Int64, index::Tensor, src::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_scatter_add_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, dim, index.pointer, src.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export select


"""
    select(self::Tensor, dim::Int64, index::Int64)

 Wrapper of C++ function void atg\\_select(tensor *out\\_\\_, tensor self, int64\\_t dim, int64\\_t index)
"""
function select(self::Tensor, dim::Int64, index::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_select, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong),
                 outputs__, self.pointer, dim, index)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export selu


"""
    selu(self::Tensor)

 Wrapper of C++ function void atg\\_selu(tensor *out\\_\\_, tensor self)
"""
function selu(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_selu, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export selu!


"""
    selu!(self::Tensor)

 Wrapper of C++ function void atg\\_selu\\_(tensor *out\\_\\_, tensor self)
"""
function selu!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_selu_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export set!


"""
    set!(self::Tensor)

 Wrapper of C++ function void atg\\_set\\_(tensor *out\\_\\_, tensor self)
"""
function set!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_set_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export set1!


"""
    set1!(self::Tensor, source::Tensor)

 Wrapper of C++ function void atg\\_set\\_1(tensor *out\\_\\_, tensor self, tensor source)
"""
function set1!(self::Tensor, source::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_set_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, source.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export set_requires_grad


"""
    set_requires_grad(self::Tensor, r::Int)

 Wrapper of C++ function void atg\\_set\\_requires\\_grad(tensor *out\\_\\_, tensor self, int r)
"""
function set_requires_grad(self::Tensor, r::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_set_requires_grad, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, r)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sigmoid


"""
    sigmoid(self::Tensor)

 Wrapper of C++ function void atg\\_sigmoid(tensor *out\\_\\_, tensor self)
"""
function sigmoid(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sigmoid, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sigmoid!


"""
    sigmoid!(self::Tensor)

 Wrapper of C++ function void atg\\_sigmoid\\_(tensor *out\\_\\_, tensor self)
"""
function sigmoid!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sigmoid_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sigmoid_backward


"""
    sigmoid_backward(grad_output::Tensor, output::Tensor)

 Wrapper of C++ function void atg\\_sigmoid\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor output)
"""
function sigmoid_backward(grad_output::Tensor, output::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sigmoid_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_output.pointer, output.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sigmoid_backward_out


"""
    sigmoid_backward_out(grad_input::Tensor, grad_output::Tensor, output::Tensor)

 Wrapper of C++ function void atg\\_sigmoid\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor output)
"""
function sigmoid_backward_out(grad_input::Tensor, grad_output::Tensor, output::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sigmoid_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_input.pointer, grad_output.pointer, output.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sigmoid_out


"""
    sigmoid_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_sigmoid\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function sigmoid_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sigmoid_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.sign


"""
    sign(self::Tensor)

 Wrapper of C++ function void atg\\_sign(tensor *out\\_\\_, tensor self)
"""
function sign(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sign, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sign!


"""
    sign!(self::Tensor)

 Wrapper of C++ function void atg\\_sign\\_(tensor *out\\_\\_, tensor self)
"""
function sign!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sign_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sign_out


"""
    sign_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_sign\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function sign_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sign_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.sin


"""
    sin(self::Tensor)

 Wrapper of C++ function void atg\\_sin(tensor *out\\_\\_, tensor self)
"""
function sin(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sin, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sin!


"""
    sin!(self::Tensor)

 Wrapper of C++ function void atg\\_sin\\_(tensor *out\\_\\_, tensor self)
"""
function sin!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sin_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sin_out


"""
    sin_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_sin\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function sin_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sin_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.sinh


"""
    sinh(self::Tensor)

 Wrapper of C++ function void atg\\_sinh(tensor *out\\_\\_, tensor self)
"""
function sinh(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sinh, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sinh!


"""
    sinh!(self::Tensor)

 Wrapper of C++ function void atg\\_sinh\\_(tensor *out\\_\\_, tensor self)
"""
function sinh!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sinh_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sinh_out


"""
    sinh_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_sinh\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function sinh_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sinh_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export slice


"""
    slice(self::Tensor, dim::Int64, start::Int64, end_::Int64, step::Int64)

 Wrapper of C++ function void atg\\_slice(tensor *out\\_\\_, tensor self, int64\\_t dim, int64\\_t start, int64\\_t end, int64\\_t step)
"""
function slice(self::Tensor, dim::Int64, start::Int64, end_::Int64, step::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_slice, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Clonglong, Clonglong),
                 outputs__, self.pointer, dim, start, end_, step)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export slogdet


"""
    slogdet(self::Tensor)

 Wrapper of C++ function void atg\\_slogdet(tensor *out\\_\\_, tensor self)
"""
function slogdet(self::Tensor)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_slogdet, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export slow_conv3d


"""
    slow_conv3d(self::Tensor, weight::Tensor, kernel_size_data::Array{Int64}, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_slow\\_conv3d(tensor *out\\_\\_, tensor self, tensor weight, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, tensor bias, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len)
"""
function slow_conv3d(self::Tensor, weight::Tensor, kernel_size_data::Array{Int64}, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64})
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    __cret = ccall((:atg_slow_conv3d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, weight.pointer, kernel_size_data, kernel_size_len, bias.pointer, stride_data, stride_len, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export slow_conv3d_out


"""
    slow_conv3d_out(out::Tensor, self::Tensor, weight::Tensor, kernel_size_data::Array{Int64}, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64})

 Wrapper of C++ function void atg\\_slow\\_conv3d\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor weight, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, tensor bias, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len)
"""
function slow_conv3d_out(out::Tensor, self::Tensor, weight::Tensor, kernel_size_data::Array{Int64}, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64})
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    __cret = ccall((:atg_slow_conv3d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, weight.pointer, kernel_size_data, kernel_size_len, bias.pointer, stride_data, stride_len, padding_data, padding_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export slow_conv_dilated2d


"""
    slow_conv_dilated2d(self::Tensor, weight::Tensor, kernel_size_data::Array{Int64}, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64})

 Wrapper of C++ function void atg\\_slow\\_conv\\_dilated2d(tensor *out\\_\\_, tensor self, tensor weight, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, tensor bias, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len)
"""
function slow_conv_dilated2d(self::Tensor, weight::Tensor, kernel_size_data::Array{Int64}, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64})
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_slow_conv_dilated2d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, weight.pointer, kernel_size_data, kernel_size_len, bias.pointer, stride_data, stride_len, padding_data, padding_len, dilation_data, dilation_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export slow_conv_dilated3d


"""
    slow_conv_dilated3d(self::Tensor, weight::Tensor, kernel_size_data::Array{Int64}, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64})

 Wrapper of C++ function void atg\\_slow\\_conv\\_dilated3d(tensor *out\\_\\_, tensor self, tensor weight, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, tensor bias, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len)
"""
function slow_conv_dilated3d(self::Tensor, weight::Tensor, kernel_size_data::Array{Int64}, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, dilation_data::Array{Int64})
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_slow_conv_dilated3d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, weight.pointer, kernel_size_data, kernel_size_len, bias.pointer, stride_data, stride_len, padding_data, padding_len, dilation_data, dilation_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export slow_conv_transpose2d


"""
    slow_conv_transpose2d(self::Tensor, weight::Tensor, kernel_size_data::Array{Int64}, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, output_padding_data::Array{Int64}, dilation_data::Array{Int64})

 Wrapper of C++ function void atg\\_slow\\_conv\\_transpose2d(tensor *out\\_\\_, tensor self, tensor weight, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, tensor bias, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *output\\_padding\\_data, int output\\_padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len)
"""
function slow_conv_transpose2d(self::Tensor, weight::Tensor, kernel_size_data::Array{Int64}, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, output_padding_data::Array{Int64}, dilation_data::Array{Int64})
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    output_padding_len = length(output_padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_slow_conv_transpose2d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, weight.pointer, kernel_size_data, kernel_size_len, bias.pointer, stride_data, stride_len, padding_data, padding_len, output_padding_data, output_padding_len, dilation_data, dilation_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export slow_conv_transpose2d_out


"""
    slow_conv_transpose2d_out(out::Tensor, self::Tensor, weight::Tensor, kernel_size_data::Array{Int64}, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, output_padding_data::Array{Int64}, dilation_data::Array{Int64})

 Wrapper of C++ function void atg\\_slow\\_conv\\_transpose2d\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor weight, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, tensor bias, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *output\\_padding\\_data, int output\\_padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len)
"""
function slow_conv_transpose2d_out(out::Tensor, self::Tensor, weight::Tensor, kernel_size_data::Array{Int64}, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, output_padding_data::Array{Int64}, dilation_data::Array{Int64})
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    output_padding_len = length(output_padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_slow_conv_transpose2d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, weight.pointer, kernel_size_data, kernel_size_len, bias.pointer, stride_data, stride_len, padding_data, padding_len, output_padding_data, output_padding_len, dilation_data, dilation_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export slow_conv_transpose3d


"""
    slow_conv_transpose3d(self::Tensor, weight::Tensor, kernel_size_data::Array{Int64}, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, output_padding_data::Array{Int64}, dilation_data::Array{Int64})

 Wrapper of C++ function void atg\\_slow\\_conv\\_transpose3d(tensor *out\\_\\_, tensor self, tensor weight, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, tensor bias, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *output\\_padding\\_data, int output\\_padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len)
"""
function slow_conv_transpose3d(self::Tensor, weight::Tensor, kernel_size_data::Array{Int64}, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, output_padding_data::Array{Int64}, dilation_data::Array{Int64})
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    output_padding_len = length(output_padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_slow_conv_transpose3d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, weight.pointer, kernel_size_data, kernel_size_len, bias.pointer, stride_data, stride_len, padding_data, padding_len, output_padding_data, output_padding_len, dilation_data, dilation_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export slow_conv_transpose3d_out


"""
    slow_conv_transpose3d_out(out::Tensor, self::Tensor, weight::Tensor, kernel_size_data::Array{Int64}, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, output_padding_data::Array{Int64}, dilation_data::Array{Int64})

 Wrapper of C++ function void atg\\_slow\\_conv\\_transpose3d\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor weight, int64\\_t *kernel\\_size\\_data, int kernel\\_size\\_len, tensor bias, int64\\_t *stride\\_data, int stride\\_len, int64\\_t *padding\\_data, int padding\\_len, int64\\_t *output\\_padding\\_data, int output\\_padding\\_len, int64\\_t *dilation\\_data, int dilation\\_len)
"""
function slow_conv_transpose3d_out(out::Tensor, self::Tensor, weight::Tensor, kernel_size_data::Array{Int64}, bias::Tensor, stride_data::Array{Int64}, padding_data::Array{Int64}, output_padding_data::Array{Int64}, dilation_data::Array{Int64})
    outputs__ = Int[0]
    kernel_size_len = length(kernel_size_data)
    stride_len = length(stride_data)
    padding_len = length(padding_data)
    output_padding_len = length(output_padding_data)
    dilation_len = length(dilation_data)
    __cret = ccall((:atg_slow_conv_transpose3d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, weight.pointer, kernel_size_data, kernel_size_len, bias.pointer, stride_data, stride_len, padding_data, padding_len, output_padding_data, output_padding_len, dilation_data, dilation_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export smm


"""
    smm(self::Tensor, mat2::Tensor)

 Wrapper of C++ function void atg\\_smm(tensor *out\\_\\_, tensor self, tensor mat2)
"""
function smm(self::Tensor, mat2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_smm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, mat2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export smooth_l1_loss


"""
    smooth_l1_loss(self::Tensor, target::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_smooth\\_l1\\_loss(tensor *out\\_\\_, tensor self, tensor target, int64\\_t reduction)
"""
function smooth_l1_loss(self::Tensor, target::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_smooth_l1_loss, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, target.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export smooth_l1_loss_backward


"""
    smooth_l1_loss_backward(grad_output::Tensor, self::Tensor, target::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_smooth\\_l1\\_loss\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, tensor target, int64\\_t reduction)
"""
function smooth_l1_loss_backward(grad_output::Tensor, self::Tensor, target::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_smooth_l1_loss_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, grad_output.pointer, self.pointer, target.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export smooth_l1_loss_backward_out


"""
    smooth_l1_loss_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, target::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_smooth\\_l1\\_loss\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, tensor target, int64\\_t reduction)
"""
function smooth_l1_loss_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, target::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_smooth_l1_loss_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, target.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export smooth_l1_loss_out


"""
    smooth_l1_loss_out(out::Tensor, self::Tensor, target::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_smooth\\_l1\\_loss\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor target, int64\\_t reduction)
"""
function smooth_l1_loss_out(out::Tensor, self::Tensor, target::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_smooth_l1_loss_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, out.pointer, self.pointer, target.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export soft_margin_loss


"""
    soft_margin_loss(self::Tensor, target::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_soft\\_margin\\_loss(tensor *out\\_\\_, tensor self, tensor target, int64\\_t reduction)
"""
function soft_margin_loss(self::Tensor, target::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_soft_margin_loss, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, target.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export soft_margin_loss_backward


"""
    soft_margin_loss_backward(grad_output::Tensor, self::Tensor, target::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_soft\\_margin\\_loss\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, tensor target, int64\\_t reduction)
"""
function soft_margin_loss_backward(grad_output::Tensor, self::Tensor, target::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_soft_margin_loss_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, grad_output.pointer, self.pointer, target.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export soft_margin_loss_backward_out


"""
    soft_margin_loss_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, target::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_soft\\_margin\\_loss\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, tensor target, int64\\_t reduction)
"""
function soft_margin_loss_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, target::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_soft_margin_loss_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, target.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export soft_margin_loss_out


"""
    soft_margin_loss_out(out::Tensor, self::Tensor, target::Tensor, reduction::Int64)

 Wrapper of C++ function void atg\\_soft\\_margin\\_loss\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor target, int64\\_t reduction)
"""
function soft_margin_loss_out(out::Tensor, self::Tensor, target::Tensor, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_soft_margin_loss_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, out.pointer, self.pointer, target.pointer, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export softmax


"""
    softmax(self::Tensor, dim::Int64, dtype::Int)

 Wrapper of C++ function void atg\\_softmax(tensor *out\\_\\_, tensor self, int64\\_t dim, int dtype)
"""
function softmax(self::Tensor, dim::Int64, dtype::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_softmax, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, self.pointer, dim, dtype)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export softplus


"""
    softplus(self::Tensor)

 Wrapper of C++ function void atg\\_softplus(tensor *out\\_\\_, tensor self)
"""
function softplus(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_softplus, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export softplus_backward


"""
    softplus_backward(grad_output::Tensor, self::Tensor, beta::TorchNumber, threshold::TorchNumber, output::Tensor)

 Wrapper of C++ function void atg\\_softplus\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, scalar beta, scalar threshold, tensor output)
"""
function softplus_backward(grad_output::Tensor, self::Tensor, beta::TorchNumber, threshold::TorchNumber, output::Tensor)
    outputs__ = Int[0]
    beta_s_ = Scalar(beta)
    threshold_s_ = Scalar(threshold)
    __cret = ccall((:atg_softplus_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_output.pointer, self.pointer, beta_s_.pointer, threshold_s_.pointer, output.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export softplus_backward_out


"""
    softplus_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, beta::TorchNumber, threshold::TorchNumber, output::Tensor)

 Wrapper of C++ function void atg\\_softplus\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, scalar beta, scalar threshold, tensor output)
"""
function softplus_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, beta::TorchNumber, threshold::TorchNumber, output::Tensor)
    outputs__ = Int[0]
    beta_s_ = Scalar(beta)
    threshold_s_ = Scalar(threshold)
    __cret = ccall((:atg_softplus_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, beta_s_.pointer, threshold_s_.pointer, output.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export softplus_out


"""
    softplus_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_softplus\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function softplus_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_softplus_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export softshrink


"""
    softshrink(self::Tensor)

 Wrapper of C++ function void atg\\_softshrink(tensor *out\\_\\_, tensor self)
"""
function softshrink(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_softshrink, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export softshrink_backward


"""
    softshrink_backward(grad_output::Tensor, self::Tensor, lambd::TorchNumber)

 Wrapper of C++ function void atg\\_softshrink\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, scalar lambd)
"""
function softshrink_backward(grad_output::Tensor, self::Tensor, lambd::TorchNumber)
    outputs__ = Int[0]
    lambd_s_ = Scalar(lambd)
    __cret = ccall((:atg_softshrink_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_output.pointer, self.pointer, lambd_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export softshrink_backward_out


"""
    softshrink_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, lambd::TorchNumber)

 Wrapper of C++ function void atg\\_softshrink\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor self, scalar lambd)
"""
function softshrink_backward_out(grad_input::Tensor, grad_output::Tensor, self::Tensor, lambd::TorchNumber)
    outputs__ = Int[0]
    lambd_s_ = Scalar(lambd)
    __cret = ccall((:atg_softshrink_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_input.pointer, grad_output.pointer, self.pointer, lambd_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export softshrink_out


"""
    softshrink_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_softshrink\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function softshrink_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_softshrink_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export solve


"""
    solve(self::Tensor, A::Tensor)

 Wrapper of C++ function void atg\\_solve(tensor *out\\_\\_, tensor self, tensor A)
"""
function solve(self::Tensor, A::Tensor)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_solve, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, A.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export solve_out


"""
    solve_out(solution::Tensor, lu::Tensor, self::Tensor, A::Tensor)

 Wrapper of C++ function void atg\\_solve\\_out(tensor *out\\_\\_, tensor solution, tensor lu, tensor self, tensor A)
"""
function solve_out(solution::Tensor, lu::Tensor, self::Tensor, A::Tensor)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_solve_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, solution.pointer, lu.pointer, self.pointer, A.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



import Base.sort


"""
    sort(self::Tensor, dim::Int64, descending::Int)

 Wrapper of C++ function void atg\\_sort(tensor *out\\_\\_, tensor self, int64\\_t dim, int descending)
"""
function sort(self::Tensor, dim::Int64, descending::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_sort, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, self.pointer, dim, descending)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export sort_out


"""
    sort_out(values::Tensor, indices::Tensor, self::Tensor, dim::Int64, descending::Int)

 Wrapper of C++ function void atg\\_sort\\_out(tensor *out\\_\\_, tensor values, tensor indices, tensor self, int64\\_t dim, int descending)
"""
function sort_out(values::Tensor, indices::Tensor, self::Tensor, dim::Int64, descending::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_sort_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint),
                 outputs__, values.pointer, indices.pointer, self.pointer, dim, descending)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export sparse_coo_tensor


"""
    sparse_coo_tensor(size_data::Array{Int64}, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_sparse\\_coo\\_tensor(tensor *out\\_\\_, int64\\_t *size\\_data, int size\\_len, int options\\_kind, int options\\_device)
"""
function sparse_coo_tensor(size_data::Array{Int64}, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_sparse_coo_tensor, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, size_data, size_len, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sparse_coo_tensor1


"""
    sparse_coo_tensor1(indices::Tensor, values::Tensor, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_sparse\\_coo\\_tensor1(tensor *out\\_\\_, tensor indices, tensor values, int options\\_kind, int options\\_device)
"""
function sparse_coo_tensor1(indices::Tensor, values::Tensor, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_sparse_coo_tensor1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, indices.pointer, values.pointer, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sparse_coo_tensor2


"""
    sparse_coo_tensor2(indices::Tensor, values::Tensor, size_data::Array{Int64}, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_sparse\\_coo\\_tensor2(tensor *out\\_\\_, tensor indices, tensor values, int64\\_t *size\\_data, int size\\_len, int options\\_kind, int options\\_device)
"""
function sparse_coo_tensor2(indices::Tensor, values::Tensor, size_data::Array{Int64}, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_sparse_coo_tensor2, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, indices.pointer, values.pointer, size_data, size_len, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sparse_mask


"""
    sparse_mask(self::Tensor, mask::Tensor)

 Wrapper of C++ function void atg\\_sparse\\_mask(tensor *out\\_\\_, tensor self, tensor mask)
"""
function sparse_mask(self::Tensor, mask::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sparse_mask, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, mask.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sparse_resize!


"""
    sparse_resize!(self::Tensor, size_data::Array{Int64}, sparse_dim::Int64, dense_dim::Int64)

 Wrapper of C++ function void atg\\_sparse\\_resize\\_(tensor *out\\_\\_, tensor self, int64\\_t *size\\_data, int size\\_len, int64\\_t sparse\\_dim, int64\\_t dense\\_dim)
"""
function sparse_resize!(self::Tensor, size_data::Array{Int64}, sparse_dim::Int64, dense_dim::Int64)
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_sparse_resize_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Clonglong, Clonglong),
                 outputs__, self.pointer, size_data, size_len, sparse_dim, dense_dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sparse_resize_and_clear!


"""
    sparse_resize_and_clear!(self::Tensor, size_data::Array{Int64}, sparse_dim::Int64, dense_dim::Int64)

 Wrapper of C++ function void atg\\_sparse\\_resize\\_and\\_clear\\_(tensor *out\\_\\_, tensor self, int64\\_t *size\\_data, int size\\_len, int64\\_t sparse\\_dim, int64\\_t dense\\_dim)
"""
function sparse_resize_and_clear!(self::Tensor, size_data::Array{Int64}, sparse_dim::Int64, dense_dim::Int64)
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_sparse_resize_and_clear_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Clonglong, Clonglong),
                 outputs__, self.pointer, size_data, size_len, sparse_dim, dense_dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.split


"""
    split(self::Tensor, split_size::Int64, dim::Int64)

 Wrapper of C++ function tensor *atg\\_split(tensor self, int64\\_t split\\_size, int64\\_t dim)
"""
function split(self::Tensor, split_size::Int64, dim::Int64)

    __cret = ccall((:atg_split, :libtorch_capi),
                 Ptr{Int}, (Ptr{Cvoid}, Clonglong, Clonglong),
                 self.pointer, split_size, dim)
    ptrs__, i__ = Int[], 1
    while true
        ptr__ = unsafe_load(__cret, i__)
        ptr__ == 0 && break
        push!(ptrs__, ptr__)
        i__ += 1
    end
    ccall(:free, Cvoid, (Ptr{Cvoid},), __cret)
    return map(x -> tensor_from_ptr(Ptr{Nothing}(x)), ptrs__)
end



export split_with_sizes


"""
    split_with_sizes(self::Tensor, split_sizes_data::Array{Int64}, dim::Int64)

 Wrapper of C++ function tensor *atg\\_split\\_with\\_sizes(tensor self, int64\\_t *split\\_sizes\\_data, int split\\_sizes\\_len, int64\\_t dim)
"""
function split_with_sizes(self::Tensor, split_sizes_data::Array{Int64}, dim::Int64)
    split_sizes_len = length(split_sizes_data)
    __cret = ccall((:atg_split_with_sizes, :libtorch_capi),
                 Ptr{Int}, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Clonglong),
                 self.pointer, split_sizes_data, split_sizes_len, dim)
    ptrs__, i__ = Int[], 1
    while true
        ptr__ = unsafe_load(__cret, i__)
        ptr__ == 0 && break
        push!(ptrs__, ptr__)
        i__ += 1
    end
    ccall(:free, Cvoid, (Ptr{Cvoid},), __cret)
    return map(x -> tensor_from_ptr(Ptr{Nothing}(x)), ptrs__)
end



import Base.sqrt


"""
    sqrt(self::Tensor)

 Wrapper of C++ function void atg\\_sqrt(tensor *out\\_\\_, tensor self)
"""
function sqrt(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sqrt, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sqrt!


"""
    sqrt!(self::Tensor)

 Wrapper of C++ function void atg\\_sqrt\\_(tensor *out\\_\\_, tensor self)
"""
function sqrt!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sqrt_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sqrt_out


"""
    sqrt_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_sqrt\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function sqrt_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sqrt_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export squeeze


"""
    squeeze(self::Tensor)

 Wrapper of C++ function void atg\\_squeeze(tensor *out\\_\\_, tensor self)
"""
function squeeze(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_squeeze, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export squeeze1


"""
    squeeze1(self::Tensor, dim::Int64)

 Wrapper of C++ function void atg\\_squeeze1(tensor *out\\_\\_, tensor self, int64\\_t dim)
"""
function squeeze1(self::Tensor, dim::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_squeeze1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export squeeze!


"""
    squeeze!(self::Tensor)

 Wrapper of C++ function void atg\\_squeeze\\_(tensor *out\\_\\_, tensor self)
"""
function squeeze!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_squeeze_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export squeeze1!


"""
    squeeze1!(self::Tensor, dim::Int64)

 Wrapper of C++ function void atg\\_squeeze\\_1(tensor *out\\_\\_, tensor self, int64\\_t dim)
"""
function squeeze1!(self::Tensor, dim::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_squeeze_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sspaddmm


"""
    sspaddmm(self::Tensor, mat1::Tensor, mat2::Tensor)

 Wrapper of C++ function void atg\\_sspaddmm(tensor *out\\_\\_, tensor self, tensor mat1, tensor mat2)
"""
function sspaddmm(self::Tensor, mat1::Tensor, mat2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sspaddmm, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, mat1.pointer, mat2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sspaddmm_out


"""
    sspaddmm_out(out::Tensor, self::Tensor, mat1::Tensor, mat2::Tensor)

 Wrapper of C++ function void atg\\_sspaddmm\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor mat1, tensor mat2)
"""
function sspaddmm_out(out::Tensor, self::Tensor, mat1::Tensor, mat2::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sspaddmm_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, mat1.pointer, mat2.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export stack


"""
    stack(tensors_data::Array{Tensor{T,N}}, dim::Int64)

 Wrapper of C++ function void atg\\_stack(tensor *out\\_\\_, tensor *tensors\\_data, int tensors\\_len, int64\\_t dim)
"""
function stack(tensors_data::Array{Tensor{T,N}}, dim::Int64) where {T,N}
    outputs__ = Int[0]
    tensors_data_ta_ = map(x->x.pointer, tensors_data)
    tensors_len = length(tensors_data)
    __cret = ccall((:atg_stack, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Clonglong),
                 outputs__, tensors_data_ta_, tensors_len, dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export stack_out


"""
    stack_out(out::Tensor, tensors_data::Array{Tensor{T,N}}, dim::Int64)

 Wrapper of C++ function void atg\\_stack\\_out(tensor *out\\_\\_, tensor out, tensor *tensors\\_data, int tensors\\_len, int64\\_t dim)
"""
function stack_out(out::Tensor, tensors_data::Array{Tensor{T,N}}, dim::Int64) where {T,N}
    outputs__ = Int[0]
    tensors_data_ta_ = map(x->x.pointer, tensors_data)
    tensors_len = length(tensors_data)
    __cret = ccall((:atg_stack_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Clonglong),
                 outputs__, out.pointer, tensors_data_ta_, tensors_len, dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export std


"""
    std(self::Tensor, unbiased::Int)

 Wrapper of C++ function void atg\\_std(tensor *out\\_\\_, tensor self, int unbiased)
"""
function std(self::Tensor, unbiased::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_std, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, unbiased)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export std1


"""
    std1(self::Tensor, dim_data::Array{Int64}, unbiased::Int, keepdim::Int)

 Wrapper of C++ function void atg\\_std1(tensor *out\\_\\_, tensor self, int64\\_t *dim\\_data, int dim\\_len, int unbiased, int keepdim)
"""
function std1(self::Tensor, dim_data::Array{Int64}, unbiased::Int, keepdim::Int)
    outputs__ = Int[0]
    dim_len = length(dim_data)
    __cret = ccall((:atg_std1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, self.pointer, dim_data, dim_len, unbiased, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export std_mean


"""
    std_mean(self::Tensor, unbiased::Int)

 Wrapper of C++ function void atg\\_std\\_mean(tensor *out\\_\\_, tensor self, int unbiased)
"""
function std_mean(self::Tensor, unbiased::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_std_mean, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, unbiased)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export std_mean1


"""
    std_mean1(self::Tensor, dim_data::Array{Int64}, unbiased::Int, keepdim::Int)

 Wrapper of C++ function void atg\\_std\\_mean1(tensor *out\\_\\_, tensor self, int64\\_t *dim\\_data, int dim\\_len, int unbiased, int keepdim)
"""
function std_mean1(self::Tensor, dim_data::Array{Int64}, unbiased::Int, keepdim::Int)
    outputs__ = Int[0, 0]
    dim_len = length(dim_data)
    __cret = ccall((:atg_std_mean1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, self.pointer, dim_data, dim_len, unbiased, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export std_out


"""
    std_out(out::Tensor, self::Tensor, dim_data::Array{Int64}, unbiased::Int, keepdim::Int)

 Wrapper of C++ function void atg\\_std\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *dim\\_data, int dim\\_len, int unbiased, int keepdim)
"""
function std_out(out::Tensor, self::Tensor, dim_data::Array{Int64}, unbiased::Int, keepdim::Int)
    outputs__ = Int[0]
    dim_len = length(dim_data)
    __cret = ccall((:atg_std_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, out.pointer, self.pointer, dim_data, dim_len, unbiased, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export stft


"""
    stft(self::Tensor, n_fft::Int64, hop_length::Int64, win_length::Int64, window::Tensor, normalized::Int, onesided::Int)

 Wrapper of C++ function void atg\\_stft(tensor *out\\_\\_, tensor self, int64\\_t n\\_fft, int64\\_t hop\\_length, int64\\_t win\\_length, tensor window, int normalized, int onesided)
"""
function stft(self::Tensor, n_fft::Int64, hop_length::Int64, win_length::Int64, window::Tensor, normalized::Int, onesided::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_stft, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Clonglong, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, n_fft, hop_length, win_length, window.pointer, normalized, onesided)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sub


"""
    sub(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_sub(tensor *out\\_\\_, tensor self, tensor other)
"""
function sub(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sub, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sub1


"""
    sub1(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_sub1(tensor *out\\_\\_, tensor self, scalar other)
"""
function sub1(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_sub1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sub!


"""
    sub!(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_sub\\_(tensor *out\\_\\_, tensor self, tensor other)
"""
function sub!(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sub_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sub1!


"""
    sub1!(self::Tensor, other::TorchNumber)

 Wrapper of C++ function void atg\\_sub\\_1(tensor *out\\_\\_, tensor self, scalar other)
"""
function sub1!(self::Tensor, other::TorchNumber)
    outputs__ = Int[0]
    other_s_ = Scalar(other)
    __cret = ccall((:atg_sub_1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sub_out


"""
    sub_out(out::Tensor, self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_sub\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor other)
"""
function sub_out(out::Tensor, self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_sub_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.sum


"""
    sum(self::Tensor, dtype::Int)

 Wrapper of C++ function void atg\\_sum(tensor *out\\_\\_, tensor self, int dtype)
"""
function sum(self::Tensor, dtype::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_sum, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, dtype)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sum1


"""
    sum1(self::Tensor, dim_data::Array{Int64}, keepdim::Int, dtype::Int)

 Wrapper of C++ function void atg\\_sum1(tensor *out\\_\\_, tensor self, int64\\_t *dim\\_data, int dim\\_len, int keepdim, int dtype)
"""
function sum1(self::Tensor, dim_data::Array{Int64}, keepdim::Int, dtype::Int)
    outputs__ = Int[0]
    dim_len = length(dim_data)
    __cret = ccall((:atg_sum1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, self.pointer, dim_data, dim_len, keepdim, dtype)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sum_out


"""
    sum_out(out::Tensor, self::Tensor, dim_data::Array{Int64}, keepdim::Int, dtype::Int)

 Wrapper of C++ function void atg\\_sum\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *dim\\_data, int dim\\_len, int keepdim, int dtype)
"""
function sum_out(out::Tensor, self::Tensor, dim_data::Array{Int64}, keepdim::Int, dtype::Int)
    outputs__ = Int[0]
    dim_len = length(dim_data)
    __cret = ccall((:atg_sum_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, out.pointer, self.pointer, dim_data, dim_len, keepdim, dtype)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export sum_to_size


"""
    sum_to_size(self::Tensor, size_data::Array{Int64})

 Wrapper of C++ function void atg\\_sum\\_to\\_size(tensor *out\\_\\_, tensor self, int64\\_t *size\\_data, int size\\_len)
"""
function sum_to_size(self::Tensor, size_data::Array{Int64})
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_sum_to_size, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, size_data, size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export svd


"""
    svd(self::Tensor, some::Int, compute_uv::Int)

 Wrapper of C++ function void atg\\_svd(tensor *out\\_\\_, tensor self, int some, int compute\\_uv)
"""
function svd(self::Tensor, some::Int, compute_uv::Int)
    outputs__ = Int[0, 0, 0]
    __cret = ccall((:atg_svd, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, some, compute_uv)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    __o_3 = tensor_from_ptr(Ptr{Cvoid}(outputs__[3]))
    return __o_1, __o_2, __o_3
end



export svd_out


"""
    svd_out(U::Tensor, S::Tensor, V::Tensor, self::Tensor, some::Int, compute_uv::Int)

 Wrapper of C++ function void atg\\_svd\\_out(tensor *out\\_\\_, tensor U, tensor S, tensor V, tensor self, int some, int compute\\_uv)
"""
function svd_out(U::Tensor, S::Tensor, V::Tensor, self::Tensor, some::Int, compute_uv::Int)
    outputs__ = Int[0, 0, 0]
    __cret = ccall((:atg_svd_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, U.pointer, S.pointer, V.pointer, self.pointer, some, compute_uv)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    __o_3 = tensor_from_ptr(Ptr{Cvoid}(outputs__[3]))
    return __o_1, __o_2, __o_3
end



export symeig


"""
    symeig(self::Tensor, eigenvectors::Int, upper::Int)

 Wrapper of C++ function void atg\\_symeig(tensor *out\\_\\_, tensor self, int eigenvectors, int upper)
"""
function symeig(self::Tensor, eigenvectors::Int, upper::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_symeig, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, eigenvectors, upper)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export symeig_out


"""
    symeig_out(e::Tensor, V::Tensor, self::Tensor, eigenvectors::Int, upper::Int)

 Wrapper of C++ function void atg\\_symeig\\_out(tensor *out\\_\\_, tensor e, tensor V, tensor self, int eigenvectors, int upper)
"""
function symeig_out(e::Tensor, V::Tensor, self::Tensor, eigenvectors::Int, upper::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_symeig_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, e.pointer, V.pointer, self.pointer, eigenvectors, upper)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export t


"""
    t(self::Tensor)

 Wrapper of C++ function void atg\\_t(tensor *out\\_\\_, tensor self)
"""
function t(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_t, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export t!


"""
    t!(self::Tensor)

 Wrapper of C++ function void atg\\_t\\_(tensor *out\\_\\_, tensor self)
"""
function t!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_t_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export take


"""
    take(self::Tensor, index::Tensor)

 Wrapper of C++ function void atg\\_take(tensor *out\\_\\_, tensor self, tensor index)
"""
function take(self::Tensor, index::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_take, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, index.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export take_out


"""
    take_out(out::Tensor, self::Tensor, index::Tensor)

 Wrapper of C++ function void atg\\_take\\_out(tensor *out\\_\\_, tensor out, tensor self, tensor index)
"""
function take_out(out::Tensor, self::Tensor, index::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_take_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, index.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.tan


"""
    tan(self::Tensor)

 Wrapper of C++ function void atg\\_tan(tensor *out\\_\\_, tensor self)
"""
function tan(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_tan, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export tan!


"""
    tan!(self::Tensor)

 Wrapper of C++ function void atg\\_tan\\_(tensor *out\\_\\_, tensor self)
"""
function tan!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_tan_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export tan_out


"""
    tan_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_tan\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function tan_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_tan_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.tanh


"""
    tanh(self::Tensor)

 Wrapper of C++ function void atg\\_tanh(tensor *out\\_\\_, tensor self)
"""
function tanh(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_tanh, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export tanh!


"""
    tanh!(self::Tensor)

 Wrapper of C++ function void atg\\_tanh\\_(tensor *out\\_\\_, tensor self)
"""
function tanh!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_tanh_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export tanh_backward


"""
    tanh_backward(grad_output::Tensor, output::Tensor)

 Wrapper of C++ function void atg\\_tanh\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor output)
"""
function tanh_backward(grad_output::Tensor, output::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_tanh_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_output.pointer, output.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export tanh_backward_out


"""
    tanh_backward_out(grad_input::Tensor, grad_output::Tensor, output::Tensor)

 Wrapper of C++ function void atg\\_tanh\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, tensor output)
"""
function tanh_backward_out(grad_input::Tensor, grad_output::Tensor, output::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_tanh_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_input.pointer, grad_output.pointer, output.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export tanh_out


"""
    tanh_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_tanh\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function tanh_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_tanh_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export tensordot


"""
    tensordot(self::Tensor, other::Tensor, dims_self_data::Array{Int64}, dims_other_data::Array{Int64})

 Wrapper of C++ function void atg\\_tensordot(tensor *out\\_\\_, tensor self, tensor other, int64\\_t *dims\\_self\\_data, int dims\\_self\\_len, int64\\_t *dims\\_other\\_data, int dims\\_other\\_len)
"""
function tensordot(self::Tensor, other::Tensor, dims_self_data::Array{Int64}, dims_other_data::Array{Int64})
    outputs__ = Int[0]
    dims_self_len = length(dims_self_data)
    dims_other_len = length(dims_other_data)
    __cret = ccall((:atg_tensordot, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, other.pointer, dims_self_data, dims_self_len, dims_other_data, dims_other_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export threshold


"""
    threshold(self::Tensor, threshold::TorchNumber, value::TorchNumber)

 Wrapper of C++ function void atg\\_threshold(tensor *out\\_\\_, tensor self, scalar threshold, scalar value)
"""
function threshold(self::Tensor, threshold::TorchNumber, value::TorchNumber)
    outputs__ = Int[0]
    threshold_s_ = Scalar(threshold)
    value_s_ = Scalar(value)
    __cret = ccall((:atg_threshold, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, threshold_s_.pointer, value_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export threshold!


"""
    threshold!(self::Tensor, threshold::TorchNumber, value::TorchNumber)

 Wrapper of C++ function void atg\\_threshold\\_(tensor *out\\_\\_, tensor self, scalar threshold, scalar value)
"""
function threshold!(self::Tensor, threshold::TorchNumber, value::TorchNumber)
    outputs__ = Int[0]
    threshold_s_ = Scalar(threshold)
    value_s_ = Scalar(value)
    __cret = ccall((:atg_threshold_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, threshold_s_.pointer, value_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export threshold_backward


"""
    threshold_backward(grad_output::Tensor, self::Tensor, threshold::TorchNumber)

 Wrapper of C++ function void atg\\_threshold\\_backward(tensor *out\\_\\_, tensor grad\\_output, tensor self, scalar threshold)
"""
function threshold_backward(grad_output::Tensor, self::Tensor, threshold::TorchNumber)
    outputs__ = Int[0]
    threshold_s_ = Scalar(threshold)
    __cret = ccall((:atg_threshold_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad_output.pointer, self.pointer, threshold_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export threshold_out


"""
    threshold_out(out::Tensor, self::Tensor, threshold::TorchNumber, value::TorchNumber)

 Wrapper of C++ function void atg\\_threshold\\_out(tensor *out\\_\\_, tensor out, tensor self, scalar threshold, scalar value)
"""
function threshold_out(out::Tensor, self::Tensor, threshold::TorchNumber, value::TorchNumber)
    outputs__ = Int[0]
    threshold_s_ = Scalar(threshold)
    value_s_ = Scalar(value)
    __cret = ccall((:atg_threshold_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer, threshold_s_.pointer, value_s_.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export to


"""
    to(self::Tensor, device::Int)

 Wrapper of C++ function void atg\\_to(tensor *out\\_\\_, tensor self, int device)
"""
function to(self::Tensor, device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_to, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export to1


"""
    to1(self::Tensor, options_kind::Int, options_device::Int, non_blocking::Int, copy::Int)

 Wrapper of C++ function void atg\\_to1(tensor *out\\_\\_, tensor self, int options\\_kind, int options\\_device, int non\\_blocking, int copy)
"""
function to1(self::Tensor, options_kind::Int, options_device::Int, non_blocking::Int, copy::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_to1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint, Cint),
                 outputs__, self.pointer, options_kind, options_device, non_blocking, copy)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export to2


"""
    to2(self::Tensor, dtype::Int, non_blocking::Int, copy::Int)

 Wrapper of C++ function void atg\\_to2(tensor *out\\_\\_, tensor self, int dtype, int non\\_blocking, int copy)
"""
function to2(self::Tensor, dtype::Int, non_blocking::Int, copy::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_to2, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, self.pointer, dtype, non_blocking, copy)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export to3


"""
    to3(self::Tensor, other::Tensor, non_blocking::Int, copy::Int)

 Wrapper of C++ function void atg\\_to3(tensor *out\\_\\_, tensor self, tensor other, int non\\_blocking, int copy)
"""
function to3(self::Tensor, other::Tensor, non_blocking::Int, copy::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_to3, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, other.pointer, non_blocking, copy)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export to4


"""
    to4(self::Tensor, device::Int, dtype::Int, non_blocking::Int, copy::Int)

 Wrapper of C++ function void atg\\_to4(tensor *out\\_\\_, tensor self, int device, int dtype, int non\\_blocking, int copy)
"""
function to4(self::Tensor, device::Int, dtype::Int, non_blocking::Int, copy::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_to4, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint, Cint),
                 outputs__, self.pointer, device, dtype, non_blocking, copy)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export to_dense


"""
    to_dense(self::Tensor)

 Wrapper of C++ function void atg\\_to\\_dense(tensor *out\\_\\_, tensor self)
"""
function to_dense(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_to_dense, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export to_dense_backward


"""
    to_dense_backward(grad::Tensor, input::Tensor)

 Wrapper of C++ function void atg\\_to\\_dense\\_backward(tensor *out\\_\\_, tensor grad, tensor input)
"""
function to_dense_backward(grad::Tensor, input::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_to_dense_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad.pointer, input.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export to_mkldnn


"""
    to_mkldnn(self::Tensor)

 Wrapper of C++ function void atg\\_to\\_mkldnn(tensor *out\\_\\_, tensor self)
"""
function to_mkldnn(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_to_mkldnn, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export to_mkldnn_backward


"""
    to_mkldnn_backward(grad::Tensor, input::Tensor)

 Wrapper of C++ function void atg\\_to\\_mkldnn\\_backward(tensor *out\\_\\_, tensor grad, tensor input)
"""
function to_mkldnn_backward(grad::Tensor, input::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_to_mkldnn_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, grad.pointer, input.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export to_sparse


"""
    to_sparse(self::Tensor)

 Wrapper of C++ function void atg\\_to\\_sparse(tensor *out\\_\\_, tensor self)
"""
function to_sparse(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_to_sparse, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export to_sparse1


"""
    to_sparse1(self::Tensor, sparse_dim::Int64)

 Wrapper of C++ function void atg\\_to\\_sparse1(tensor *out\\_\\_, tensor self, int64\\_t sparse\\_dim)
"""
function to_sparse1(self::Tensor, sparse_dim::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_to_sparse1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, sparse_dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export topk


"""
    topk(self::Tensor, k::Int64, dim::Int64, largest::Int, sorted::Int)

 Wrapper of C++ function void atg\\_topk(tensor *out\\_\\_, tensor self, int64\\_t k, int64\\_t dim, int largest, int sorted)
"""
function topk(self::Tensor, k::Int64, dim::Int64, largest::Int, sorted::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_topk, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Cint, Cint),
                 outputs__, self.pointer, k, dim, largest, sorted)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export topk_out


"""
    topk_out(values::Tensor, indices::Tensor, self::Tensor, k::Int64, dim::Int64, largest::Int, sorted::Int)

 Wrapper of C++ function void atg\\_topk\\_out(tensor *out\\_\\_, tensor values, tensor indices, tensor self, int64\\_t k, int64\\_t dim, int largest, int sorted)
"""
function topk_out(values::Tensor, indices::Tensor, self::Tensor, k::Int64, dim::Int64, largest::Int, sorted::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_topk_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Cint, Cint),
                 outputs__, values.pointer, indices.pointer, self.pointer, k, dim, largest, sorted)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export totype


"""
    totype(self::Tensor, scalar_type::Int)

 Wrapper of C++ function void atg\\_totype(tensor *out\\_\\_, tensor self, int scalar\\_type)
"""
function totype(self::Tensor, scalar_type::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_totype, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, scalar_type)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export trace


"""
    trace(self::Tensor)

 Wrapper of C++ function void atg\\_trace(tensor *out\\_\\_, tensor self)
"""
function trace(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_trace, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.transpose


"""
    transpose(self::Tensor, dim0::Int64, dim1::Int64)

 Wrapper of C++ function void atg\\_transpose(tensor *out\\_\\_, tensor self, int64\\_t dim0, int64\\_t dim1)
"""
function transpose(self::Tensor, dim0::Int64, dim1::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_transpose, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong),
                 outputs__, self.pointer, dim0, dim1)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export transpose!


"""
    transpose!(self::Tensor, dim0::Int64, dim1::Int64)

 Wrapper of C++ function void atg\\_transpose\\_(tensor *out\\_\\_, tensor self, int64\\_t dim0, int64\\_t dim1)
"""
function transpose!(self::Tensor, dim0::Int64, dim1::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_transpose_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong),
                 outputs__, self.pointer, dim0, dim1)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export trapz


"""
    trapz(y::Tensor, x::Tensor, dim::Int64)

 Wrapper of C++ function void atg\\_trapz(tensor *out\\_\\_, tensor y, tensor x, int64\\_t dim)
"""
function trapz(y::Tensor, x::Tensor, dim::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_trapz, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, y.pointer, x.pointer, dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export trapz1


"""
    trapz1(y::Tensor, dx::Float64, dim::Int64)

 Wrapper of C++ function void atg\\_trapz1(tensor *out\\_\\_, tensor y, double dx, int64\\_t dim)
"""
function trapz1(y::Tensor, dx::Float64, dim::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_trapz1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Clonglong),
                 outputs__, y.pointer, dx, dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export triangular_solve


"""
    triangular_solve(self::Tensor, A::Tensor, upper::Int, transpose::Int, unitriangular::Int)

 Wrapper of C++ function void atg\\_triangular\\_solve(tensor *out\\_\\_, tensor self, tensor A, int upper, int transpose, int unitriangular)
"""
function triangular_solve(self::Tensor, A::Tensor, upper::Int, transpose::Int, unitriangular::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_triangular_solve, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, self.pointer, A.pointer, upper, transpose, unitriangular)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export triangular_solve_out


"""
    triangular_solve_out(X::Tensor, M::Tensor, self::Tensor, A::Tensor, upper::Int, transpose::Int, unitriangular::Int)

 Wrapper of C++ function void atg\\_triangular\\_solve\\_out(tensor *out\\_\\_, tensor X, tensor M, tensor self, tensor A, int upper, int transpose, int unitriangular)
"""
function triangular_solve_out(X::Tensor, M::Tensor, self::Tensor, A::Tensor, upper::Int, transpose::Int, unitriangular::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_triangular_solve_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, X.pointer, M.pointer, self.pointer, A.pointer, upper, transpose, unitriangular)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export tril


"""
    tril(self::Tensor, diagonal::Int64)

 Wrapper of C++ function void atg\\_tril(tensor *out\\_\\_, tensor self, int64\\_t diagonal)
"""
function tril(self::Tensor, diagonal::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_tril, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, diagonal)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export tril!


"""
    tril!(self::Tensor, diagonal::Int64)

 Wrapper of C++ function void atg\\_tril\\_(tensor *out\\_\\_, tensor self, int64\\_t diagonal)
"""
function tril!(self::Tensor, diagonal::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_tril_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, diagonal)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export tril_indices


"""
    tril_indices(row::Int64, col::Int64, offset::Int64, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_tril\\_indices(tensor *out\\_\\_, int64\\_t row, int64\\_t col, int64\\_t offset, int options\\_kind, int options\\_device)
"""
function tril_indices(row::Int64, col::Int64, offset::Int64, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_tril_indices, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Clonglong, Clonglong, Clonglong, Cint, Cint),
                 outputs__, row, col, offset, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export tril_out


"""
    tril_out(out::Tensor, self::Tensor, diagonal::Int64)

 Wrapper of C++ function void atg\\_tril\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t diagonal)
"""
function tril_out(out::Tensor, self::Tensor, diagonal::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_tril_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, out.pointer, self.pointer, diagonal)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export triplet_margin_loss


"""
    triplet_margin_loss(anchor::Tensor, positive::Tensor, negative::Tensor, margin::Float64, p::Float64, eps::Float64, swap::Int, reduction::Int64)

 Wrapper of C++ function void atg\\_triplet\\_margin\\_loss(tensor *out\\_\\_, tensor anchor, tensor positive, tensor negative, double margin, double p, double eps, int swap, int64\\_t reduction)
"""
function triplet_margin_loss(anchor::Tensor, positive::Tensor, negative::Tensor, margin::Float64, p::Float64, eps::Float64, swap::Int, reduction::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_triplet_margin_loss, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Cdouble, Cdouble, Cint, Clonglong),
                 outputs__, anchor.pointer, positive.pointer, negative.pointer, margin, p, eps, swap, reduction)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export triu


"""
    triu(self::Tensor, diagonal::Int64)

 Wrapper of C++ function void atg\\_triu(tensor *out\\_\\_, tensor self, int64\\_t diagonal)
"""
function triu(self::Tensor, diagonal::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_triu, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, diagonal)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export triu!


"""
    triu!(self::Tensor, diagonal::Int64)

 Wrapper of C++ function void atg\\_triu\\_(tensor *out\\_\\_, tensor self, int64\\_t diagonal)
"""
function triu!(self::Tensor, diagonal::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_triu_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, diagonal)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export triu_indices


"""
    triu_indices(row::Int64, col::Int64, offset::Int64, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_triu\\_indices(tensor *out\\_\\_, int64\\_t row, int64\\_t col, int64\\_t offset, int options\\_kind, int options\\_device)
"""
function triu_indices(row::Int64, col::Int64, offset::Int64, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_triu_indices, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Clonglong, Clonglong, Clonglong, Cint, Cint),
                 outputs__, row, col, offset, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export triu_out


"""
    triu_out(out::Tensor, self::Tensor, diagonal::Int64)

 Wrapper of C++ function void atg\\_triu\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t diagonal)
"""
function triu_out(out::Tensor, self::Tensor, diagonal::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_triu_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, out.pointer, self.pointer, diagonal)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.trunc


"""
    trunc(self::Tensor)

 Wrapper of C++ function void atg\\_trunc(tensor *out\\_\\_, tensor self)
"""
function trunc(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_trunc, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export trunc!


"""
    trunc!(self::Tensor)

 Wrapper of C++ function void atg\\_trunc\\_(tensor *out\\_\\_, tensor self)
"""
function trunc!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_trunc_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export trunc_out


"""
    trunc_out(out::Tensor, self::Tensor)

 Wrapper of C++ function void atg\\_trunc\\_out(tensor *out\\_\\_, tensor out, tensor self)
"""
function trunc_out(out::Tensor, self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_trunc_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, out.pointer, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export type_as


"""
    type_as(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_type\\_as(tensor *out\\_\\_, tensor self, tensor other)
"""
function type_as(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_type_as, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export unbind


"""
    unbind(self::Tensor, dim::Int64)

 Wrapper of C++ function tensor *atg\\_unbind(tensor self, int64\\_t dim)
"""
function unbind(self::Tensor, dim::Int64)

    __cret = ccall((:atg_unbind, :libtorch_capi),
                 Ptr{Int}, (Ptr{Cvoid}, Clonglong),
                 self.pointer, dim)
    ptrs__, i__ = Int[], 1
    while true
        ptr__ = unsafe_load(__cret, i__)
        ptr__ == 0 && break
        push!(ptrs__, ptr__)
        i__ += 1
    end
    ccall(:free, Cvoid, (Ptr{Cvoid},), __cret)
    return map(x -> tensor_from_ptr(Ptr{Nothing}(x)), ptrs__)
end



export unfold


"""
    unfold(self::Tensor, dimension::Int64, size::Int64, step::Int64)

 Wrapper of C++ function void atg\\_unfold(tensor *out\\_\\_, tensor self, int64\\_t dimension, int64\\_t size, int64\\_t step)
"""
function unfold(self::Tensor, dimension::Int64, size::Int64, step::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_unfold, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Clonglong, Clonglong),
                 outputs__, self.pointer, dimension, size, step)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export uniform!


"""
    uniform!(self::Tensor, from::Float64, to::Float64)

 Wrapper of C++ function void atg\\_uniform\\_(tensor *out\\_\\_, tensor self, double from, double to)
"""
function uniform!(self::Tensor, from::Float64, to::Float64)
    outputs__ = Int[0]
    __cret = ccall((:atg_uniform_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cdouble, Cdouble),
                 outputs__, self.pointer, from, to)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export unique_consecutive


"""
    unique_consecutive(self::Tensor, return_inverse::Int, return_counts::Int, dim::Int64)

 Wrapper of C++ function void atg\\_unique\\_consecutive(tensor *out\\_\\_, tensor self, int return\\_inverse, int return\\_counts, int64\\_t dim)
"""
function unique_consecutive(self::Tensor, return_inverse::Int, return_counts::Int, dim::Int64)
    outputs__ = Int[0, 0, 0]
    __cret = ccall((:atg_unique_consecutive, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Clonglong),
                 outputs__, self.pointer, return_inverse, return_counts, dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    __o_3 = tensor_from_ptr(Ptr{Cvoid}(outputs__[3]))
    return __o_1, __o_2, __o_3
end



export unique_dim


"""
    unique_dim(self::Tensor, dim::Int64, sorted::Int, return_inverse::Int, return_counts::Int)

 Wrapper of C++ function void atg\\_unique\\_dim(tensor *out\\_\\_, tensor self, int64\\_t dim, int sorted, int return\\_inverse, int return\\_counts)
"""
function unique_dim(self::Tensor, dim::Int64, sorted::Int, return_inverse::Int, return_counts::Int)
    outputs__ = Int[0, 0, 0]
    __cret = ccall((:atg_unique_dim, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint, Cint, Cint),
                 outputs__, self.pointer, dim, sorted, return_inverse, return_counts)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    __o_3 = tensor_from_ptr(Ptr{Cvoid}(outputs__[3]))
    return __o_1, __o_2, __o_3
end



export unique_dim_consecutive


"""
    unique_dim_consecutive(self::Tensor, dim::Int64, return_inverse::Int, return_counts::Int)

 Wrapper of C++ function void atg\\_unique\\_dim\\_consecutive(tensor *out\\_\\_, tensor self, int64\\_t dim, int return\\_inverse, int return\\_counts)
"""
function unique_dim_consecutive(self::Tensor, dim::Int64, return_inverse::Int, return_counts::Int)
    outputs__ = Int[0, 0, 0]
    __cret = ccall((:atg_unique_dim_consecutive, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Cint, Cint),
                 outputs__, self.pointer, dim, return_inverse, return_counts)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    __o_3 = tensor_from_ptr(Ptr{Cvoid}(outputs__[3]))
    return __o_1, __o_2, __o_3
end



export unsqueeze


"""
    unsqueeze(self::Tensor, dim::Int64)

 Wrapper of C++ function void atg\\_unsqueeze(tensor *out\\_\\_, tensor self, int64\\_t dim)
"""
function unsqueeze(self::Tensor, dim::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_unsqueeze, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export unsqueeze!


"""
    unsqueeze!(self::Tensor, dim::Int64)

 Wrapper of C++ function void atg\\_unsqueeze\\_(tensor *out\\_\\_, tensor self, int64\\_t dim)
"""
function unsqueeze!(self::Tensor, dim::Int64)
    outputs__ = Int[0]
    __cret = ccall((:atg_unsqueeze_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong),
                 outputs__, self.pointer, dim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_bicubic2d


"""
    upsample_bicubic2d(self::Tensor, output_size_data::Array{Int64}, align_corners::Int)

 Wrapper of C++ function void atg\\_upsample\\_bicubic2d(tensor *out\\_\\_, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int align\\_corners)
"""
function upsample_bicubic2d(self::Tensor, output_size_data::Array{Int64}, align_corners::Int)
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_upsample_bicubic2d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, output_size_data, output_size_len, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_bicubic2d_backward


"""
    upsample_bicubic2d_backward(grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64}, align_corners::Int)

 Wrapper of C++ function void atg\\_upsample\\_bicubic2d\\_backward(tensor *out\\_\\_, tensor grad\\_output, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int64\\_t *input\\_size\\_data, int input\\_size\\_len, int align\\_corners)
"""
function upsample_bicubic2d_backward(grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64}, align_corners::Int)
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    input_size_len = length(input_size_data)
    __cret = ccall((:atg_upsample_bicubic2d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint),
                 outputs__, grad_output.pointer, output_size_data, output_size_len, input_size_data, input_size_len, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_bicubic2d_backward_out


"""
    upsample_bicubic2d_backward_out(grad_input::Tensor, grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64}, align_corners::Int)

 Wrapper of C++ function void atg\\_upsample\\_bicubic2d\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int64\\_t *input\\_size\\_data, int input\\_size\\_len, int align\\_corners)
"""
function upsample_bicubic2d_backward_out(grad_input::Tensor, grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64}, align_corners::Int)
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    input_size_len = length(input_size_data)
    __cret = ccall((:atg_upsample_bicubic2d_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint),
                 outputs__, grad_input.pointer, grad_output.pointer, output_size_data, output_size_len, input_size_data, input_size_len, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_bicubic2d_out


"""
    upsample_bicubic2d_out(out::Tensor, self::Tensor, output_size_data::Array{Int64}, align_corners::Int)

 Wrapper of C++ function void atg\\_upsample\\_bicubic2d\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int align\\_corners)
"""
function upsample_bicubic2d_out(out::Tensor, self::Tensor, output_size_data::Array{Int64}, align_corners::Int)
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_upsample_bicubic2d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, out.pointer, self.pointer, output_size_data, output_size_len, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_bilinear2d


"""
    upsample_bilinear2d(self::Tensor, output_size_data::Array{Int64}, align_corners::Int)

 Wrapper of C++ function void atg\\_upsample\\_bilinear2d(tensor *out\\_\\_, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int align\\_corners)
"""
function upsample_bilinear2d(self::Tensor, output_size_data::Array{Int64}, align_corners::Int)
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_upsample_bilinear2d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, output_size_data, output_size_len, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_bilinear2d_backward


"""
    upsample_bilinear2d_backward(grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64}, align_corners::Int)

 Wrapper of C++ function void atg\\_upsample\\_bilinear2d\\_backward(tensor *out\\_\\_, tensor grad\\_output, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int64\\_t *input\\_size\\_data, int input\\_size\\_len, int align\\_corners)
"""
function upsample_bilinear2d_backward(grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64}, align_corners::Int)
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    input_size_len = length(input_size_data)
    __cret = ccall((:atg_upsample_bilinear2d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint),
                 outputs__, grad_output.pointer, output_size_data, output_size_len, input_size_data, input_size_len, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_bilinear2d_backward_out


"""
    upsample_bilinear2d_backward_out(grad_input::Tensor, grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64}, align_corners::Int)

 Wrapper of C++ function void atg\\_upsample\\_bilinear2d\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int64\\_t *input\\_size\\_data, int input\\_size\\_len, int align\\_corners)
"""
function upsample_bilinear2d_backward_out(grad_input::Tensor, grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64}, align_corners::Int)
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    input_size_len = length(input_size_data)
    __cret = ccall((:atg_upsample_bilinear2d_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint),
                 outputs__, grad_input.pointer, grad_output.pointer, output_size_data, output_size_len, input_size_data, input_size_len, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_bilinear2d_out


"""
    upsample_bilinear2d_out(out::Tensor, self::Tensor, output_size_data::Array{Int64}, align_corners::Int)

 Wrapper of C++ function void atg\\_upsample\\_bilinear2d\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int align\\_corners)
"""
function upsample_bilinear2d_out(out::Tensor, self::Tensor, output_size_data::Array{Int64}, align_corners::Int)
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_upsample_bilinear2d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, out.pointer, self.pointer, output_size_data, output_size_len, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_linear1d


"""
    upsample_linear1d(self::Tensor, output_size_data::Array{Int64}, align_corners::Int)

 Wrapper of C++ function void atg\\_upsample\\_linear1d(tensor *out\\_\\_, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int align\\_corners)
"""
function upsample_linear1d(self::Tensor, output_size_data::Array{Int64}, align_corners::Int)
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_upsample_linear1d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, output_size_data, output_size_len, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_linear1d_backward


"""
    upsample_linear1d_backward(grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64}, align_corners::Int)

 Wrapper of C++ function void atg\\_upsample\\_linear1d\\_backward(tensor *out\\_\\_, tensor grad\\_output, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int64\\_t *input\\_size\\_data, int input\\_size\\_len, int align\\_corners)
"""
function upsample_linear1d_backward(grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64}, align_corners::Int)
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    input_size_len = length(input_size_data)
    __cret = ccall((:atg_upsample_linear1d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint),
                 outputs__, grad_output.pointer, output_size_data, output_size_len, input_size_data, input_size_len, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_linear1d_backward_out


"""
    upsample_linear1d_backward_out(grad_input::Tensor, grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64}, align_corners::Int)

 Wrapper of C++ function void atg\\_upsample\\_linear1d\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int64\\_t *input\\_size\\_data, int input\\_size\\_len, int align\\_corners)
"""
function upsample_linear1d_backward_out(grad_input::Tensor, grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64}, align_corners::Int)
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    input_size_len = length(input_size_data)
    __cret = ccall((:atg_upsample_linear1d_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint),
                 outputs__, grad_input.pointer, grad_output.pointer, output_size_data, output_size_len, input_size_data, input_size_len, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_linear1d_out


"""
    upsample_linear1d_out(out::Tensor, self::Tensor, output_size_data::Array{Int64}, align_corners::Int)

 Wrapper of C++ function void atg\\_upsample\\_linear1d\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int align\\_corners)
"""
function upsample_linear1d_out(out::Tensor, self::Tensor, output_size_data::Array{Int64}, align_corners::Int)
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_upsample_linear1d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, out.pointer, self.pointer, output_size_data, output_size_len, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_nearest1d


"""
    upsample_nearest1d(self::Tensor, output_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_upsample\\_nearest1d(tensor *out\\_\\_, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len)
"""
function upsample_nearest1d(self::Tensor, output_size_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_upsample_nearest1d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, output_size_data, output_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_nearest1d_backward


"""
    upsample_nearest1d_backward(grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_upsample\\_nearest1d\\_backward(tensor *out\\_\\_, tensor grad\\_output, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int64\\_t *input\\_size\\_data, int input\\_size\\_len)
"""
function upsample_nearest1d_backward(grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    input_size_len = length(input_size_data)
    __cret = ccall((:atg_upsample_nearest1d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, grad_output.pointer, output_size_data, output_size_len, input_size_data, input_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_nearest1d_backward_out


"""
    upsample_nearest1d_backward_out(grad_input::Tensor, grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_upsample\\_nearest1d\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int64\\_t *input\\_size\\_data, int input\\_size\\_len)
"""
function upsample_nearest1d_backward_out(grad_input::Tensor, grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    input_size_len = length(input_size_data)
    __cret = ccall((:atg_upsample_nearest1d_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, grad_input.pointer, grad_output.pointer, output_size_data, output_size_len, input_size_data, input_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_nearest1d_out


"""
    upsample_nearest1d_out(out::Tensor, self::Tensor, output_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_upsample\\_nearest1d\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len)
"""
function upsample_nearest1d_out(out::Tensor, self::Tensor, output_size_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_upsample_nearest1d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, output_size_data, output_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_nearest2d


"""
    upsample_nearest2d(self::Tensor, output_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_upsample\\_nearest2d(tensor *out\\_\\_, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len)
"""
function upsample_nearest2d(self::Tensor, output_size_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_upsample_nearest2d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, output_size_data, output_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_nearest2d_backward


"""
    upsample_nearest2d_backward(grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_upsample\\_nearest2d\\_backward(tensor *out\\_\\_, tensor grad\\_output, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int64\\_t *input\\_size\\_data, int input\\_size\\_len)
"""
function upsample_nearest2d_backward(grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    input_size_len = length(input_size_data)
    __cret = ccall((:atg_upsample_nearest2d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, grad_output.pointer, output_size_data, output_size_len, input_size_data, input_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_nearest2d_backward_out


"""
    upsample_nearest2d_backward_out(grad_input::Tensor, grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_upsample\\_nearest2d\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int64\\_t *input\\_size\\_data, int input\\_size\\_len)
"""
function upsample_nearest2d_backward_out(grad_input::Tensor, grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    input_size_len = length(input_size_data)
    __cret = ccall((:atg_upsample_nearest2d_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, grad_input.pointer, grad_output.pointer, output_size_data, output_size_len, input_size_data, input_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_nearest2d_out


"""
    upsample_nearest2d_out(out::Tensor, self::Tensor, output_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_upsample\\_nearest2d\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len)
"""
function upsample_nearest2d_out(out::Tensor, self::Tensor, output_size_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_upsample_nearest2d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, output_size_data, output_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_nearest3d


"""
    upsample_nearest3d(self::Tensor, output_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_upsample\\_nearest3d(tensor *out\\_\\_, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len)
"""
function upsample_nearest3d(self::Tensor, output_size_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_upsample_nearest3d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, output_size_data, output_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_nearest3d_backward


"""
    upsample_nearest3d_backward(grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_upsample\\_nearest3d\\_backward(tensor *out\\_\\_, tensor grad\\_output, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int64\\_t *input\\_size\\_data, int input\\_size\\_len)
"""
function upsample_nearest3d_backward(grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    input_size_len = length(input_size_data)
    __cret = ccall((:atg_upsample_nearest3d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, grad_output.pointer, output_size_data, output_size_len, input_size_data, input_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_nearest3d_backward_out


"""
    upsample_nearest3d_backward_out(grad_input::Tensor, grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_upsample\\_nearest3d\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int64\\_t *input\\_size\\_data, int input\\_size\\_len)
"""
function upsample_nearest3d_backward_out(grad_input::Tensor, grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    input_size_len = length(input_size_data)
    __cret = ccall((:atg_upsample_nearest3d_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint),
                 outputs__, grad_input.pointer, grad_output.pointer, output_size_data, output_size_len, input_size_data, input_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_nearest3d_out


"""
    upsample_nearest3d_out(out::Tensor, self::Tensor, output_size_data::Array{Int64})

 Wrapper of C++ function void atg\\_upsample\\_nearest3d\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len)
"""
function upsample_nearest3d_out(out::Tensor, self::Tensor, output_size_data::Array{Int64})
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_upsample_nearest3d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, self.pointer, output_size_data, output_size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_trilinear3d


"""
    upsample_trilinear3d(self::Tensor, output_size_data::Array{Int64}, align_corners::Int)

 Wrapper of C++ function void atg\\_upsample\\_trilinear3d(tensor *out\\_\\_, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int align\\_corners)
"""
function upsample_trilinear3d(self::Tensor, output_size_data::Array{Int64}, align_corners::Int)
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_upsample_trilinear3d, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, output_size_data, output_size_len, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_trilinear3d_backward


"""
    upsample_trilinear3d_backward(grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64}, align_corners::Int)

 Wrapper of C++ function void atg\\_upsample\\_trilinear3d\\_backward(tensor *out\\_\\_, tensor grad\\_output, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int64\\_t *input\\_size\\_data, int input\\_size\\_len, int align\\_corners)
"""
function upsample_trilinear3d_backward(grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64}, align_corners::Int)
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    input_size_len = length(input_size_data)
    __cret = ccall((:atg_upsample_trilinear3d_backward, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint),
                 outputs__, grad_output.pointer, output_size_data, output_size_len, input_size_data, input_size_len, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_trilinear3d_backward_out


"""
    upsample_trilinear3d_backward_out(grad_input::Tensor, grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64}, align_corners::Int)

 Wrapper of C++ function void atg\\_upsample\\_trilinear3d\\_backward\\_out(tensor *out\\_\\_, tensor grad\\_input, tensor grad\\_output, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int64\\_t *input\\_size\\_data, int input\\_size\\_len, int align\\_corners)
"""
function upsample_trilinear3d_backward_out(grad_input::Tensor, grad_output::Tensor, output_size_data::Array{Int64}, input_size_data::Array{Int64}, align_corners::Int)
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    input_size_len = length(input_size_data)
    __cret = ccall((:atg_upsample_trilinear3d_backward_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Ptr{Cvoid}, Cint, Cint),
                 outputs__, grad_input.pointer, grad_output.pointer, output_size_data, output_size_len, input_size_data, input_size_len, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export upsample_trilinear3d_out


"""
    upsample_trilinear3d_out(out::Tensor, self::Tensor, output_size_data::Array{Int64}, align_corners::Int)

 Wrapper of C++ function void atg\\_upsample\\_trilinear3d\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *output\\_size\\_data, int output\\_size\\_len, int align\\_corners)
"""
function upsample_trilinear3d_out(out::Tensor, self::Tensor, output_size_data::Array{Int64}, align_corners::Int)
    outputs__ = Int[0]
    output_size_len = length(output_size_data)
    __cret = ccall((:atg_upsample_trilinear3d_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, out.pointer, self.pointer, output_size_data, output_size_len, align_corners)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.values


"""
    values(self::Tensor)

 Wrapper of C++ function void atg\\_values(tensor *out\\_\\_, tensor self)
"""
function values(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_values, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export var


"""
    var(self::Tensor, unbiased::Int)

 Wrapper of C++ function void atg\\_var(tensor *out\\_\\_, tensor self, int unbiased)
"""
function var(self::Tensor, unbiased::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_var, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, unbiased)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export var1


"""
    var1(self::Tensor, dim_data::Array{Int64}, unbiased::Int, keepdim::Int)

 Wrapper of C++ function void atg\\_var1(tensor *out\\_\\_, tensor self, int64\\_t *dim\\_data, int dim\\_len, int unbiased, int keepdim)
"""
function var1(self::Tensor, dim_data::Array{Int64}, unbiased::Int, keepdim::Int)
    outputs__ = Int[0]
    dim_len = length(dim_data)
    __cret = ccall((:atg_var1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, self.pointer, dim_data, dim_len, unbiased, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export var_mean


"""
    var_mean(self::Tensor, unbiased::Int)

 Wrapper of C++ function void atg\\_var\\_mean(tensor *out\\_\\_, tensor self, int unbiased)
"""
function var_mean(self::Tensor, unbiased::Int)
    outputs__ = Int[0, 0]
    __cret = ccall((:atg_var_mean, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, unbiased)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export var_mean1


"""
    var_mean1(self::Tensor, dim_data::Array{Int64}, unbiased::Int, keepdim::Int)

 Wrapper of C++ function void atg\\_var\\_mean1(tensor *out\\_\\_, tensor self, int64\\_t *dim\\_data, int dim\\_len, int unbiased, int keepdim)
"""
function var_mean1(self::Tensor, dim_data::Array{Int64}, unbiased::Int, keepdim::Int)
    outputs__ = Int[0, 0]
    dim_len = length(dim_data)
    __cret = ccall((:atg_var_mean1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, self.pointer, dim_data, dim_len, unbiased, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    __o_2 = tensor_from_ptr(Ptr{Cvoid}(outputs__[2]))
    return __o_1, __o_2
end



export var_out


"""
    var_out(out::Tensor, self::Tensor, dim_data::Array{Int64}, unbiased::Int, keepdim::Int)

 Wrapper of C++ function void atg\\_var\\_out(tensor *out\\_\\_, tensor out, tensor self, int64\\_t *dim\\_data, int dim\\_len, int unbiased, int keepdim)
"""
function var_out(out::Tensor, self::Tensor, dim_data::Array{Int64}, unbiased::Int, keepdim::Int)
    outputs__ = Int[0]
    dim_len = length(dim_data)
    __cret = ccall((:atg_var_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, out.pointer, self.pointer, dim_data, dim_len, unbiased, keepdim)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.view


"""
    view(self::Tensor, size_data::Array{Int64})

 Wrapper of C++ function void atg\\_view(tensor *out\\_\\_, tensor self, int64\\_t *size\\_data, int size\\_len)
"""
function view(self::Tensor, size_data::Array{Int64})
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_view, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, self.pointer, size_data, size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export view_as


"""
    view_as(self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_view\\_as(tensor *out\\_\\_, tensor self, tensor other)
"""
function view_as(self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_view_as, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export where


"""
    where(condition::Tensor)

 Wrapper of C++ function tensor *atg\\_where(tensor condition)
"""
function where(condition::Tensor)

    __cret = ccall((:atg_where, :libtorch_capi),
                 Ptr{Int}, (Ptr{Cvoid},),
                 condition.pointer)
    ptrs__, i__ = Int[], 1
    while true
        ptr__ = unsafe_load(__cret, i__)
        ptr__ == 0 && break
        push!(ptrs__, ptr__)
        i__ += 1
    end
    ccall(:free, Cvoid, (Ptr{Cvoid},), __cret)
    return map(x -> tensor_from_ptr(Ptr{Nothing}(x)), ptrs__)
end



export where1


"""
    where1(condition::Tensor, self::Tensor, other::Tensor)

 Wrapper of C++ function void atg\\_where1(tensor *out\\_\\_, tensor condition, tensor self, tensor other)
"""
function where1(condition::Tensor, self::Tensor, other::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_where1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, condition.pointer, self.pointer, other.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export zero!


"""
    zero!(self::Tensor)

 Wrapper of C++ function void atg\\_zero\\_(tensor *out\\_\\_, tensor self)
"""
function zero!(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_zero_, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



import Base.zeros


"""
    zeros(size_data::Array{Int64}, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_zeros(tensor *out\\_\\_, int64\\_t *size\\_data, int size\\_len, int options\\_kind, int options\\_device)
"""
function zeros(size_data::Array{Int64}, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_zeros, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint, Cint),
                 outputs__, size_data, size_len, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export zeros_like


"""
    zeros_like(self::Tensor)

 Wrapper of C++ function void atg\\_zeros\\_like(tensor *out\\_\\_, tensor self)
"""
function zeros_like(self::Tensor)
    outputs__ = Int[0]
    __cret = ccall((:atg_zeros_like, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}),
                 outputs__, self.pointer)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export zeros_like1


"""
    zeros_like1(self::Tensor, options_kind::Int, options_device::Int)

 Wrapper of C++ function void atg\\_zeros\\_like1(tensor *out\\_\\_, tensor self, int options\\_kind, int options\\_device)
"""
function zeros_like1(self::Tensor, options_kind::Int, options_device::Int)
    outputs__ = Int[0]
    __cret = ccall((:atg_zeros_like1, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cint),
                 outputs__, self.pointer, options_kind, options_device)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end



export zeros_out


"""
    zeros_out(out::Tensor, size_data::Array{Int64})

 Wrapper of C++ function void atg\\_zeros\\_out(tensor *out\\_\\_, tensor out, int64\\_t *size\\_data, int size\\_len)
"""
function zeros_out(out::Tensor, size_data::Array{Int64})
    outputs__ = Int[0]
    size_len = length(size_data)
    __cret = ccall((:atg_zeros_out, :libtorch_capi),
                 Cvoid, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cint),
                 outputs__, out.pointer, size_data, size_len)
    __o_1 = tensor_from_ptr(Ptr{Cvoid}(outputs__[1]))
    return __o_1
end

end
