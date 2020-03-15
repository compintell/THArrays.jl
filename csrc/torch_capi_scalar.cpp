#include <map>
#include <sstream>
#include <iostream>

#include "torch_capi_scalar.h"

#include <c10/core/ScalarType.h>

extern std::map<int8_t, torch::ScalarType> TYPE_MAP_REV;

// creation and repr
torch::Scalar* scalar_from_data(void *data, int8_t tid) {
    torch::ScalarType t = TYPE_MAP_REV.at(tid);
    switch (t) {
    case torch::kHalf:
        return new torch::Scalar(*(at::Half*)data);
    case torch::kFloat:
        return new torch::Scalar(*(float*)data);
    case torch::kDouble:
        return new torch::Scalar(*(double*)data);
    case torch::kBool:
        return new torch::Scalar(*(bool*)data);
    case torch::kChar:
        return new torch::Scalar(*(int8_t*)data);
    case torch::kShort:
        return new torch::Scalar(*(int16_t*)data);
    case torch::kInt:
        return new torch::Scalar(*(int32_t*)data);
    case torch::kLong:
        return new torch::Scalar(*(int64_t*)data);
    default:
        return new torch::Scalar(0);
    }
    return new torch::Scalar(0);
}


void scalar_value(torch::Scalar *scalar, int8_t tid, void *data) {
    torch::ScalarType t = TYPE_MAP_REV.at(tid);
    switch (t) {
    case torch::kHalf:
        *(at::Half*)data = scalar->to<at::Half>();
        break;
    case torch::kFloat:
        *(float*)data = scalar->to<float>();
        break;
    case torch::kDouble:
        *(double*)data = scalar->to<double>();
        break;
    case torch::kBool:
        *(bool*)data = scalar->to<bool>();
        break;
    case torch::kChar:
        *(int8_t*)data = scalar->to<int8_t>();
        break;
    case torch::kShort:
        *(int16_t*)data = scalar->to<int16_t>();
        break;
    case torch::kInt:
        *(int32_t*)data = scalar->to<int32_t>();
        break;
    case torch::kLong:
        *(int64_t*)data = scalar->to<int64_t>();
        break;
    default:
        return;
    }
}

void scalar_destroy(torch::Scalar *scalar) {
    // std::cout << "DEBUG: Scalar " << scalar << " is destroyed!\n";
    if(scalar) delete scalar;
}
