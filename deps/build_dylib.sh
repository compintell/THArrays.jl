#!/bin/bash

OS=$(uname)
case $OS in
MINGW*)
  OS="windows"
  ;;
*)
  OS=$(echo $OS | tr '[:upper:]' '[:lower:]')
  ;;
esac

PREFIX=${prefix-$PWD}


# target=x86_64-linux-gnu
cd $WORKSPACE/srcdir

PROJECT_DIR=$WORKSPACE/srcdir/Torch.jl

RELEASES=(
    x86_64-linux-gnu@v1_4_0@https://download.pytorch.org/libtorch/cpu/libtorch-cxx11-abi-shared-with-deps-1.4.0%2Bcpu.zip
    x86_64-apple-darwin14@v1_4_0@https://download.pytorch.org/libtorch/cpu/libtorch-macos-1.4.0.zip
    x86_64-w64-mingw32@v1_4_0@https://download.pytorch.org/libtorch/cpu/libtorch-win-shared-with-deps-1.4.0.zip
)

for RELEASE in ${RELEASES[@]}; do
    REL_TARGET=$(echo $RELEASE | cut -d@ -f1)
    if [ $target != $REL_TARGET ]; then
        continue
    fi

    # prepare libtorch
    rm -f *.zip
    rm -fr libtorch/
    wget $(echo $RELEASE | cut -d@ -f3)
    unzip *.zip
    LIBTORCH_PATH=$PWD/libtorch

    # build capi
    mkdir -p ${PROJECT_DIR}/csrc/build
    cd ${PROJECT_DIR}/csrc/build
    cmake -DCMAKE_PREFIX_PATH=${LIBTORCH_PATH} ..
    make torch_capi

    mkdir -p ${PREFIX}/lib
    if [[ $OS == "darwin" ]]; then
        # copy libs
        cp ${PROJECT_DIR}/csrc/build/libtorch_capi.dylib ${PREFIX}/lib/
        cp ${LIBTORCH_PATH}/lib/libtorch.dylib ${PREFIX}/lib/
        cp ${LIBTORCH_PATH}/lib/libc10.dylib ${PREFIX}/lib/

        # patch dylib
        install_name_tool -change  @rpath/libtorch.dylib @loader_path/libtorch.dylib ${PREFIX}/lib/libtorch_capi.dylib
        install_name_tool -change  @rpath/libc10.dylib @loader_path/libc10.dylib ${PREFIX}/lib/libtorch_capi.dylib
    elif [[ $OS == "linux" ]]; then
        # copy libs
        cp ${PROJECT_DIR}/csrc/build/libtorch_capi.so ${PREFIX}/lib/
        cp ${LIBTORCH_PATH}/lib/libtorch.so ${PREFIX}/lib/
        cp ${LIBTORCH_PATH}/lib/libc10.so ${PREFIX}/lib/
        cp ${LIBTORCH_PATH}/lib/libgomp-753e6e92.so.1 ${PREFIX}/lib/

        # patch dylib
        patchelf --replace-needed "libtorch.so" "\$ORIGIN/libtorch.so" ${PREFIX}/lib/libtorch_capi.so
        patchelf --replace-needed "libc10.so" "\$ORIGIN/libc10.so" ${PREFIX}/lib/libtorch_capi.so
    fi
done
