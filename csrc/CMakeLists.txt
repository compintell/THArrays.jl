cmake_minimum_required(VERSION 3.0 FATAL_ERROR)
project(TorchCAPI)

set(CMAKE_VERBOSE_MAKEFILE ON)

find_package(Torch REQUIRED)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${TORCH_CXX_FLAGS}")

add_executable(example-app example_app.cpp)
target_link_libraries(example-app "${TORCH_LIBRARIES}")
set_property(TARGET example-app PROPERTY CXX_STANDARD 17)


add_library(torch_capi SHARED
    torch_capi.h
    torch_capi_scalar.h torch_capi_scalar.cpp
    torch_capi_tensor.h torch_capi_tensor.cpp
    torch_capi_script.h torch_capi_script.cpp
    torch_api.cpp torch_api.h
)

target_link_libraries(torch_capi "${TORCH_LIBRARIES}")
set_property(TARGET torch_capi PROPERTY CXX_STANDARD 17)
