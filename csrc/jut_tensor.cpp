#include <torch/torch.h>

#include <sstream>
#include <iostream>

extern "C" {
    torch::Tensor* tensor_from_data(void *data, int64_t *size_data, size_t dim);
    void tensor_destroy(torch::Tensor *tensor);
    void print_tensor(torch::Tensor *tensor);
    const char* tensor_to_string(torch::Tensor *tensor);
}

torch::Tensor* tensor_from_data(void *data, int64_t *size_data, size_t dim) {
    // TODO:
    //  - Deal with element type, now only works for the detault type (float32)
    c10::ArrayRef<int64_t> sizes(size_data, dim);
    torch::Tensor res = torch::from_blob(data, sizes);
    return new torch::Tensor(res.clone());
}

void tensor_destroy(torch::Tensor *tensor) {
    // std::cout << "DEBUG: Tensor " << tensor << " is destroyed!\n";
    if(tensor) delete tensor;
}

void print_tensor(torch::Tensor *tensor) {
    std::cout << *tensor << std::endl;
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
