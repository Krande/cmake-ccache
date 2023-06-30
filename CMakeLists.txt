cmake_minimum_required(VERSION 3.0.0)

if (CMAKE_SIZEOF_VOID_P EQUAL 8)
    message(STATUS "Building for x64 architecture")
else ()
    message(FATAL_ERROR "This project requires a 64-bit toolchain. Please update your toolchain arch to 'x86_amd64'")
endif ()

project(HelloWorld VERSION 0.1.0)

include(CTest)
enable_testing()

add_executable(HelloWorld src/main.cpp)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
