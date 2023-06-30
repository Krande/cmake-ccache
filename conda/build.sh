#!/bin/sh

# Create the build directory
mkdir build
cd build

# Configure, build, and install
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER_LAUNCHER=ccache -DCMAKE_CXX_COMPILER_LAUNCHER=ccache ..
make
make install
