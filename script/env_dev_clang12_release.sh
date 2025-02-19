#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ROOT_DIR=$( dirname ${SCRIPT_DIR} )
BUILD_DIR="${ROOT_DIR}/build.clang12.release"
mkdir -p ${BUILD_DIR}
cd ${BUILD_DIR}

CC=clang-12 CXX=clang++-12 cmake .. -DCMAKE_INSTALL_PREFIX=install -DCMAKE_BUILD_TYPE=Release -DCC_COMMS_BUILD_UNIT_TESTS=ON
