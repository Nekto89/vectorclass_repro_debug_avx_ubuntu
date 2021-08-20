cmake_minimum_required(VERSION 3.10.2)

project(test_compilation LANGUAGES CXX)

add_library(test_compilation STATIC test.cpp)
target_compile_features(test_compilation PUBLIC cxx_std_17)
target_compile_options(test_compilation PRIVATE -mavx2 -mfma)
