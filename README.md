# AUTOSAR_cpp14
# AUTOSAR C++14 Checker

## Overview
AUTOSAR C++14 Checker is a static analysis tool designed to enforce AUTOSAR C++14 coding guidelines. It analyzes C++ source files and reports violations of specific coding rules to ensure compliance with the AUTOSAR standard.

## Features
- Detects violations of AUTOSAR C++14 guidelines.
- Uses Clang tooling and AST matchers for analysis.
- Provides JSON-based reports for easier integration with other tools.
- Supports multiple rule checkers, including:
  - **C-style casts detection**
  - **Global variable usage**
  - **Implicit constructor calls**
  - **Unused function parameters**

## Installation
### Prerequisites
Ensure you have the following installed:
- **LLVM/Clang** (version 19.1.7 or higher) via Homebrew:
  ```sh
  brew install llvm
  ```
- **JsonCpp library**:
  ```sh
  brew install jsoncpp
  ```
- **CMake (if using CMake build system)**:
  ```sh
  brew install cmake
  ```

## Build & Run
### Using CMake
```sh
mkdir build && cd build
cmake ..
make
```

### Running the Tool
```sh
./autosar_checker <test_1.cpp> <Test_2.cpp>
```

## Usage Example
```sh
./autosar_checker main.cpp
```

## Output
The tool generates JSON reports in `report.json`. Example output:
```json
{
  "rule": "No C-style casts",
  "message": "Avoid using C-style casts",
  "line": 42,
  "column": 5
}
```

## Code Structure
```
autosar_checker/                 # Root directory
│── CMakeLists.txt               # CMake build configuration
│── src/                         # Source code directory
│   ├── main.cpp                 # Entry point of the tool
│   ├── CastChecker.cpp          # AST matcher for detecting C-style casts (A2-5-2)
│   ├── CastChecker.h            # Header file for CastChecker
│   ├── GlobalVarChecker.cpp     # AST matcher for detecting non-const global variables (A9-3-1)
│   ├── GlobalVarChecker.h       # Header file for GlobalVarChecker
│   ├── ConstructorChecker.cpp   # AST matcher for detecting non-explicit constructors (A12-1-1)
│   ├── ConstructorChecker.h     # Header file for ConstructorChecker
│   ├── ReportGenerator.cpp      # Utility to output violations in JSON/XML format
│   ├── ReportGenerator.h        # Header file for ReportGenerator
│── include/                     # Header files directory
│   ├── CastChecker.h
│   ├── GlobalVarChecker.h
│   ├── ConstructorChecker.h
│   ├── ReportGenerator.h
│── test/                        # Test cases directory
│   ├── test1.cpp                # Test file with C-style casts
│   ├── test2.cpp                # Test file with non-const global variables
│   ├── test3.cpp                # Test file with non-explicit constructors
│── build/                       # Build directory (created after running CMake)
│── docs/                        # Documentation
│   ├── README.md                # Project description
│   ├── INSTALL.md               # Installation and setup guide
│   ├── USAGE.md                 # How to use the tool
│── scripts/                     # Scripts for automation
│   ├── run_tests.sh             # Script to run test cases
│   ├── format_code.sh           # Script to auto-format code using ClangFormat
│── report/                      # Directory for storing generated reports
│   ├── report.json              # JSON report of violations
│   ├── report.xml               # XML report of violations

## Troubleshooting
### 1. Missing `json/json.h`
Run:
```sh
ls /opt/homebrew/include/json
```
If the file is missing, reinstall JsonCpp:
```sh
brew reinstall jsoncpp
```

### 2. Compilation Errors
Ensure `clang++` is pointing to the correct version:
```sh
/opt/homebrew/bin/clang++ --version
```
If incorrect, update your path:
```sh
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
```

## License
This project is licensed under the Apache 2.0 License.

## Author
Sahana Anand

