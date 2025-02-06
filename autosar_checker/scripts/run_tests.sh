#!/bin/bash

# Compile the Clang tool first
make

# Run the checker on all test files
./autosar_checker test/test1.cpp
./autosar_checker test/test2.cpp
./autosar_checker test/test3.cpp
