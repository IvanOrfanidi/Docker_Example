# Version CMake
cmake_minimum_required(VERSION 3.10)

# Project name
project(docker_example)

# Options
set(CMAKE_CXX_STANDARD 11)

# Compiler-specific options
if((CMAKE_CXX_COMPILER_ID MATCHES "GNU") OR (CMAKE_CXX_COMPILER_ID MATCHES "Clang"))
    add_compile_options(
        -Werror
        -Wall
    )
endif()

# Source files
set(SOURCES
    source/main.cpp
)

# Compiling target
add_executable(${PROJECT_NAME} ${SOURCES})
