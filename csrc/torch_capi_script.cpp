#include <memory>
#include <vector>
#include <iostream>

#include "torch_capi_script.h"

void cunit_compile(void **dest, const char *code) {
    std::shared_ptr<torch::jit::script::CompilationUnit> module =
        torch::jit::compile(code);

    dest[0] = module.get();
    dest[1] = new std::shared_ptr<torch::jit::script::CompilationUnit>(module);
}

void cunit_destroy(std::shared_ptr<torch::jit::script::CompilationUnit> *o) {
    delete o;
}

torch::Tensor* cunit_run_method(
    const torch::CompilationUnit *module, const char *method,
    torch::Tensor **args, ssize_t args_len) {
    PROTECT(
        // torch::IValue output = module->run_method(method, a, b);
        torch::jit::Function &func = module->get_function(method);
        std::vector<torch::jit::IValue> stack;
        for (int i = 0; i< args_len; i++) {
            stack.push_back(torch::jit::IValue(*(args[i])));
        }
        torch::IValue output = func(stack);
        if (output.isTensor())
            return new torch::Tensor(output.toTensor());
        throw "Result is not a Tensor.";
    );
    return nullptr;
}
