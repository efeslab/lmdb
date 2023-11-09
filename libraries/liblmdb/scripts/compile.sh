#!/bin/bash

export LLVM_COMPILER=clang
export LLVM_COMPILER_PATH=/usr/lib/llvm-10/bin

make clean
make all
extract-bc mtest_mmap_insert
extract-bc mtest
extract-bc mtest2
extract-bc mtest3
extract-bc mtest4
extract-bc mtest5
extract-bc mtest6