// -*- mode: c++ -*-
#ifndef _TORCH_CAPI_SCRIPT_H
#define _TORCH_CAPI_SCRIPT_H

#include <memory>

#include <torch/torch.h>

#include "torch_capi.h"

#ifdef __cplusplus
extern "C" {
#endif

    CAPI_DLLEXPORT void cunit_compile(void **dest, const char *code);
    CAPI_DLLEXPORT void cunit_destroy(
        std::shared_ptr<torch::jit::script::CompilationUnit> *o);
    CAPI_DLLEXPORT torch::Tensor* cunit_run_method(
        const torch::CompilationUnit *module, const char *method,
        torch::Tensor **args, ssize_t args_len);
    // TODO:
    //   - expose class IValue to Julia

#ifdef __cplusplus
}
#endif

#endif // _TORCH_CAPI_SCRIPT_H
