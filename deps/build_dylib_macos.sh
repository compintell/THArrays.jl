#!/bin/bash

OS=$(uname)
OS=$(echo $OS | tr '[:upper:]' '[:lower:]')

if [[ $OS != "darwin" ]]; then
    exit 1
fi

PKG_VERSION=$(perl -ne 'print "$1" if m#version\s*=\s*"(.*)"#' Project.toml)
TARGET=x86_64-apple-darwin14
PROJECT_DIR=$PWD
PREFIX=$PWD/dist
PKG_NAME=TorchCAPIDylib.v${PKG_VERSION}.${TARGET}.tar.gz

# prepare libtorch
mkdir -p $PROJECT_DIR/csrc/build
cd $PROJECT_DIR/csrc/build
rm -f *.zip
rm -fr libtorch/
wget https://download.pytorch.org/libtorch/cpu/libtorch-macos-1.7.1.zip
unzip *.zip
LIBTORCH_PATH=$PWD/libtorch

# build capi
cmake -DCMAKE_PREFIX_PATH=${LIBTORCH_PATH} $PROJECT_DIR/csrc
make torch_capi

# copy libs
mkdir -p $PREFIX/lib
cp ${PROJECT_DIR}/csrc/build/libtorch_capi.dylib ${PREFIX}/lib/
cp ${LIBTORCH_PATH}/lib/libtorch.dylib ${PREFIX}/lib/
cp ${LIBTORCH_PATH}/lib/libtorch_cpu.dylib ${PREFIX}/lib/
cp ${LIBTORCH_PATH}/lib/libc10.dylib ${PREFIX}/lib/
cp ${LIBTORCH_PATH}/lib/libiomp5.dylib ${PREFIX}/lib/

# patch dylib
install_name_tool -change  @rpath/libtorch.dylib @loader_path/libtorch.dylib ${PREFIX}/lib/libtorch_capi.dylib
install_name_tool -change  @rpath/libtorch_cpu.dylib @loader_path/libtorch_cpu.dylib ${PREFIX}/lib/libtorch_capi.dylib
install_name_tool -change  @rpath/libc10.dylib @loader_path/libc10.dylib ${PREFIX}/lib/libtorch_capi.dylib

install_name_tool -change  @rpath/libtorch_cpu.dylib @loader_path/libtorch_cpu.dylib ${PREFIX}/lib/libtorch.dylib
install_name_tool -change  @rpath/libc10.dylib @loader_path/libc10.dylib ${PREFIX}/lib/libtorch.dylib
install_name_tool -change  @rpath/libiomp5.dylib @loader_path/libiomp5.dylib ${PREFIX}/lib/libtorch.dylib
install_name_tool -change  @rpath/libiomp5.dylib @loader_path/libiomp5.dylib ${PREFIX}/lib/libtorch_cpu.dylib

# tar
cd $PREFIX
tar zcvf ${PKG_NAME} lib/
mkdir -p $PROJECT_DIR/products
mv ${PKG_NAME} $PROJECT_DIR/products/
