// -*- mode: c++ -*-

#ifndef _TORCH_CAPI_TENSOR_H
#define _TORCH_CAPI_TENSOR_H

#include "torch_capi.h"

#include <torch/torch.h>

#ifdef __cplusplus
extern "C" {
#endif

    // creation and repr
    CAPI_DLLEXPORT torch::Tensor* tensor_from_data(
        void *data, size_t datalen, int8_t tid, int64_t *size_data, size_t dim, int grad);
    CAPI_DLLEXPORT void tensor_destroy(torch::Tensor *tensor);
    CAPI_DLLEXPORT const char* tensor_to_string(torch::Tensor *tensor);

    // retrive array info
    CAPI_DLLEXPORT int8_t tensor_method_dtype(torch::Tensor *tensor);
    int64_t tensor_method_ndimension(torch::Tensor *tensor);
    void tensor_method_sizes(torch::Tensor *tensor, int64_t *buf);
    void* tensor_method_data_ptr(torch::Tensor *tensor);
    void tensor_method_data_copy(torch::Tensor *tensor, void *buf, size_t len);

    // methods on Tensor
    CAPI_DLLEXPORT void tensor_method_item(torch::Tensor *t, int8_t tid, void *data);
    CAPI_DLLEXPORT void tensor_method_backward(
        torch::Tensor *t, torch::Tensor *g, bool keep_graph, bool create_graph);

    // operators
    CAPI_DLLEXPORT torch::Tensor* tensor_op_add(torch::Tensor *a, torch::Tensor *b);

#ifdef __cplusplus
}
#endif

#endif // _TORCH_CAPI_TENSOR_H
