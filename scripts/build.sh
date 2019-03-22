#! /bin/bash

. ./scripts/common.sh

if [[ ! -d ${BUILD_DIR} ]]; then
    mkdir -p ${BUILD_DIR}
fi
cd ${BUILD_DIR}

cmake -DBUILD_DOCS=OFF -DCMAKE_INSTALL_PREFIX="${CMAKE_INSTALL_PREFIX}" -DProton_DIR="${CMAKE_INSTALL_PREFIX}/lib64/cmake/Proton" ..
make
