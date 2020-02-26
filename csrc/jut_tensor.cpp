#include <torch/torch.h>

#include <sstream>
#include <iostream>

extern "C" {
    // creation and repr
    torch::Tensor* tensor_from_data(void *data, size_t datalen, int64_t *size_data, size_t dim, int grad);
    void tensor_destroy(torch::Tensor *tensor);
    const char* tensor_to_string(torch::Tensor *tensor);

    // methods on Tensor
    torch::Tensor* tensor_method_sum(torch::Tensor *t);
    torch::Tensor* tensor_method_grad(torch::Tensor *t);
    void tensor_method_backward(torch::Tensor *t);

    // operators
    torch::Tensor* tensor_op_add(torch::Tensor *a, torch::Tensor *b);
}


// creation and repr
torch::Tensor* tensor_from_data(void *data, size_t datalen, int64_t *size_data, size_t dim, int grad) {
    // TODO:
    //  - Deal with element type, now only works for the detault type (float32)
    c10::ArrayRef<int64_t> sizes(size_data, dim);
    // TODO: copy and deleter
    uint8_t *buf = new uint8_t[datalen];
    memcpy(buf, data, datalen);
    torch::Tensor res = torch::from_blob(
        buf, sizes,
        [=](void *p) -> void { delete[] buf; },
        torch::requires_grad(grad));
    return new torch::Tensor(res);
}

void tensor_destroy(torch::Tensor *tensor) {
    // std::cout << "DEBUG: Tensor " << tensor << " is destroyed!\n";
    if(tensor) delete tensor;
}

const char* tensor_to_string(torch::Tensor *tensor) {
    std::stringstream ss;
    ss << *tensor;
    std::string str = ss.str();
    char* res = static_cast<char*>(malloc(str.length() + 1));
    memcpy(res, str.c_str(), str.length());
    res[str.length()] = 0;
    return res;
}


// methods on Tensor
torch::Tensor* tensor_method_sum(torch::Tensor *t) {
    torch::Tensor sum = t->sum();
    return new torch::Tensor(sum);
}

torch::Tensor* tensor_method_grad(torch::Tensor *t) {
    torch::Tensor g = t->grad();
    return new torch::Tensor(g);
}

void tensor_method_backward(torch::Tensor *t) {
    t->backward();
}

// operators
torch::Tensor* tensor_op_add(torch::Tensor *a, torch::Tensor *b) {
    torch::Tensor sum = *a + *b;
    return new torch::Tensor(sum);
}
