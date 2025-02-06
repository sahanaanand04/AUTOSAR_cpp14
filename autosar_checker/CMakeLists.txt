cmake_minimum_required(VERSION 3.10)
project(AutosarCppChecker)

# Set C++ standard to 17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Locate LLVM & Clang
find_package(LLVM REQUIRED CONFIG PATHS "/opt/homebrew/opt/llvm/lib/cmake/llvm")
find_package(Clang REQUIRED CONFIG PATHS "/opt/homebrew/opt/llvm/lib/cmake/clang")

message(STATUS "Found LLVM: ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVM at: ${LLVM_DIR}")

include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})
link_directories(${LLVM_LIBRARY_DIRS})

# Locate jsoncpp (make sure it's installed first!)
find_package(jsoncpp REQUIRED PATHS "/opt/homebrew/include/json")

# Define sources
set(SOURCES
    src/main.cpp
    src/CastChecker.cpp
    src/GlobalVarChecker.cpp
    src/ConstructorChecker.cpp
    src/ReportGenerator.cpp
    src/UnusedParamChecker.cpp
)

# Create executable
add_executable(autosar_checker ${SOURCES})

# Link with Clang libraries
target_link_libraries(autosar_checker
    PRIVATE
    clangTooling
    clangFrontend
    clangASTMatchers
    clangBasic
    clangAST
    jsoncpp   # Add jsoncpp as a dependency
)

# Ensure Clang headers and libraries are properly used
target_include_directories(autosar_checker PRIVATE ${LLVM_INCLUDE_DIRS})
target_compile_options(autosar_checker PRIVATE -stdlib=libc++ -Wall -Wextra -pedantic)
target_link_options(autosar_checker PRIVATE -stdlib=libc++)
