@echo off

REM Create the build directory
mkdir build
cd build

REM Configure, build, and install
cmake -DCMAKE_BUILD_TYPE=Release ..

REM Build and install
cmake --build . --target install --config Release

