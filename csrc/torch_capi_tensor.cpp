#include <map>
#include <sstream>
#include <iostream>

#include <dlfcn.h>

#include "torch_capi_tensor.h"

#include <c10/core/ScalarType.h>

std::map<int8_t, torch::ScalarType> TYPE_MAP_REV = \
    {
     {0,  torch::kByte}, // _(uint8_t, Byte) /* 0 */
     {1,  torch::kChar}, // _(int8_t, Char) /* 1 */
     {2,  torch::kShort}, // _(int16_t, Short) /* 2 */
     {3,  torch::kInt}, // _(int, Int) /* 3 */
     {4,  torch::kLong}, // _(int64_t, Long) /* 4 */
     {5,  torch::kHalf}, // _(at::Half, Half) /* 5 */
     {6,  torch::kFloat}, // _(float, Float) /* 6 */
     {7,  torch::kDouble}, // _(double, Double) /* 7 */
     {8,  torch::kComplexHalf}, // _(at::ComplexHalf, ComplexHalf) /* 8 */
     {9,  torch::kComplexFloat}, // _(std::complex<float>, ComplexFloat) /* 9 */
     {10, torch::kComplexDouble}, // _(std::complex<double>, ComplexDouble) /* 10 */
     {11, torch::kBool}, // _(bool, Bool) /* 11 */
     // {12, torch::kQInt8}, // _(c10::qint8, QInt8) /* 12 */
     // {13, torch::kQUint8}, // _(c10::quint8, QUInt8) /* 13 */
     // {14, torch::kQInt32}, // _(c10::qint32, QInt32) /* 14 */
     // {15, torch::kBFloat16}, // _(at::BFloat16, BFloat16) /* 15 */
    };

void (*error_handler)(const char *str) = NULL;
void set_error_handler(const char *sym, size_t len) {
    char hsym[32];
    memcpy(hsym, sym, len);
    hsym[len] = 0;
    error_handler = (void (*)(const char*))dlsym(RTLD_DEFAULT, hsym);
}

// creation and repr
torch::Tensor* tensor_from_data(
    void *data, size_t datalen, int8_t tid,
    int64_t *size_data, int64_t *strides_data, size_t dim,
    int copy_data, int grad) {

    PROTECT(
        c10::ArrayRef<int64_t> sizes(size_data, dim);
        c10::ArrayRef<int64_t> strides(strides_data, dim);

        uint8_t *buf = static_cast<uint8_t*>(data);
        std::function<void(void *)> deleter = [=](void *p) -> void {};

        if(copy_data) {
            buf = new uint8_t[datalen];
            memcpy(buf, data, datalen);
            deleter = [=](void *p) -> void { delete[] buf; };
        }

        torch::Tensor res = torch::from_blob(
            buf, sizes, strides,
            deleter,
            at::dtype(TYPE_MAP_REV.at(tid)).requires_grad(grad));
        return new torch::Tensor(res);
    );
    return nullptr;
}

torch::Tensor* tensor_int64_0dim(int64_t i, int grad) {
    PROTECT(
        return new torch::Tensor(torch::tensor(i, at::requires_grad(grad)));
    );
    return nullptr;
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

// retrieve Tensor info
int8_t tensor_method_dtype(torch::Tensor *tensor) {
    c10:: ScalarType t = c10::typeMetaToScalarType(tensor->dtype());
    return static_cast<int8_t>(t);
}

int64_t tensor_method_ndimension(torch::Tensor *tensor) {
    return tensor->ndimension();
}

void tensor_method_sizes(torch::Tensor *tensor, int64_t *buf) {
    int64_t *p = buf;
    torch::IntArrayRef sizes = tensor->sizes();
    for (auto sz : sizes) {
        *p = sz;
        p++;
    }
}

void tensor_method_strides(torch::Tensor *tensor, int64_t *buf) {
    int64_t *p = buf;
    torch::IntArrayRef strides = tensor->strides();
    for (auto s : strides) {
        *p = s;
        p++;
    }
}

void tensor_method_device(torch::Tensor *tensor, int64_t *buf) {
    int64_t *p = buf;
    torch::Device d = tensor->device();
    *p = d.is_cpu() ? -1 : 0;
    *(p + 1) = d.index();
}

void* tensor_method_data_ptr(torch::Tensor *tensor) {
    return tensor->data_ptr();
}

void tensor_method_data_copy(torch::Tensor *tensor, void *buf, size_t len) {
    memcpy(buf, tensor->data_ptr(), len);
}


// methods on Tensor
void tensor_method_item(torch::Tensor *t, int8_t tid, void *data) {
    torch::ScalarType type = TYPE_MAP_REV.at(tid);
    switch (type) {
    case torch::kHalf:
        *(at::Half*)data = t->item<at::Half>();
        break;
    case torch::kFloat:
        *(float*)data = t->item<float>();
        break;
    case torch::kDouble:
        *(double*)data = t->item<double>();
        break;
    case torch::kBool:
        *(bool*)data = t->item<bool>();
        break;
    case torch::kChar:
        *(int8_t*)data = t->item<int8_t>();
        break;
    case torch::kShort:
        *(int16_t*)data = t->item<int16_t>();
        break;
    case torch::kInt:
        *(int32_t*)data = t->item<int32_t>();
        break;
    case torch::kLong:
        *(int64_t*)data = t->item<int64_t>();
        break;
    default:
        return;
    }
}

torch::Tensor* tensor_method_index_select_int64(
    torch::Tensor *t, int64_t dim, int64_t idx) {
    PROTECT(
        return new torch::Tensor(t->index_select(dim, torch::tensor(idx)));
    );
    return nullptr;
}

int tensor_method_has_grad(torch::Tensor *t) {
    return (t->requires_grad() && t->grad().defined()) ? 1 : 0;
}

void tensor_method_backward(
    torch::Tensor *t, torch::Tensor *g,
    bool keep_graph=false, bool create_graph=false) {
    PROTECT(
        if (g) {
            t->backward(*g, keep_graph, create_graph);
        } else {
            t->backward({}, keep_graph, create_graph);
        }
    );
}
