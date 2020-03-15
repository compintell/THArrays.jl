// -*- mode: c++ -*-

#ifndef _TORCH_CAPI_SCALAR_H
#define _TORCH_CAPI_SCALAR_H

#include "torch_capi.h"

#include <torch/torch.h>

#ifdef __cplusplus
extern "C" {
#endif

    // creation and repr
    CAPI_DLLEXPORT torch::Scalar* scalar_from_data(void *data, int8_t tid);
    CAPI_DLLEXPORT void scalar_value(
        torch::Scalar *scalar, int8_t tid, void *data);
    CAPI_DLLEXPORT void scalar_destroy(torch::Scalar *scalar);

#ifdef __cplusplus
}
#endif

#endif // _TORCH_CAPI_SCALAR_H
