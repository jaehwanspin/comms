#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ROOT_DIR=$( dirname ${SCRIPT_DIR} )
BUILD_DIR="${ROOT_DIR}/build.gcc"
mkdir -p ${BUILD_DIR}
cd ${BUILD_DIR}

CC=gcc CXX=g++ cmake .. -DCMAKE_INSTALL_PREFIX=install -DCMAKE_BUILD_TYPE=Debug -DCC_COMMS_BUILD_UNIT_TESTS=ON
