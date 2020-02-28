#ifndef _TORCH_CAPI_TENSOR_H
#define _TORCH_CAPI_TENSOR_H

#include <torch/torch.h>

#ifdef _OS_WINDOWS_
#  define STDCALL __stdcall
#  define CAPI_DLLEXPORT __declspec(dllexport)
#else
#  define STDCALL
#  define CAPI_DLLEXPORT __attribute__ ((visibility("default")))
#endif

#ifdef __cplusplus
extern "C" {
#endif

    // creation and repr
    CAPI_DLLEXPORT torch::Tensor* tensor_from_data(
        void *data, size_t datalen, int tid, int64_t *size_data, size_t dim, int grad);
    CAPI_DLLEXPORT void tensor_destroy(torch::Tensor *tensor);
    CAPI_DLLEXPORT const char* tensor_to_string(torch::Tensor *tensor);

    // methods on Tensor
    CAPI_DLLEXPORT torch::Tensor* tensor_method_sum(torch::Tensor *t);
    CAPI_DLLEXPORT torch::Tensor* tensor_method_grad(torch::Tensor *t);
    CAPI_DLLEXPORT void tensor_method_backward(
        torch::Tensor *t, torch::Tensor *g, bool keep_graph, bool create_graph);

    // operators
    CAPI_DLLEXPORT torch::Tensor* tensor_op_add(torch::Tensor *a, torch::Tensor *b);

#ifdef __cplusplus
}
#endif

#endif // _TORCH_CAPI_TENSOR_H
