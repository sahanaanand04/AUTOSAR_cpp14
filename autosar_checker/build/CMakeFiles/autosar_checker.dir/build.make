# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/sahana/AUTOSAR_cpp14/autosar_checker

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/sahana/AUTOSAR_cpp14/autosar_checker/build

# Include any dependencies generated for this target.
include CMakeFiles/autosar_checker.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/autosar_checker.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/autosar_checker.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/autosar_checker.dir/flags.make

CMakeFiles/autosar_checker.dir/codegen:
.PHONY : CMakeFiles/autosar_checker.dir/codegen

CMakeFiles/autosar_checker.dir/src/main.cpp.o: CMakeFiles/autosar_checker.dir/flags.make
CMakeFiles/autosar_checker.dir/src/main.cpp.o: /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/main.cpp
CMakeFiles/autosar_checker.dir/src/main.cpp.o: CMakeFiles/autosar_checker.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/sahana/AUTOSAR_cpp14/autosar_checker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/autosar_checker.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/autosar_checker.dir/src/main.cpp.o -MF CMakeFiles/autosar_checker.dir/src/main.cpp.o.d -o CMakeFiles/autosar_checker.dir/src/main.cpp.o -c /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/main.cpp

CMakeFiles/autosar_checker.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/autosar_checker.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/main.cpp > CMakeFiles/autosar_checker.dir/src/main.cpp.i

CMakeFiles/autosar_checker.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/autosar_checker.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/main.cpp -o CMakeFiles/autosar_checker.dir/src/main.cpp.s

CMakeFiles/autosar_checker.dir/src/CastChecker.cpp.o: CMakeFiles/autosar_checker.dir/flags.make
CMakeFiles/autosar_checker.dir/src/CastChecker.cpp.o: /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/CastChecker.cpp
CMakeFiles/autosar_checker.dir/src/CastChecker.cpp.o: CMakeFiles/autosar_checker.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/sahana/AUTOSAR_cpp14/autosar_checker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/autosar_checker.dir/src/CastChecker.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/autosar_checker.dir/src/CastChecker.cpp.o -MF CMakeFiles/autosar_checker.dir/src/CastChecker.cpp.o.d -o CMakeFiles/autosar_checker.dir/src/CastChecker.cpp.o -c /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/CastChecker.cpp

CMakeFiles/autosar_checker.dir/src/CastChecker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/autosar_checker.dir/src/CastChecker.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/CastChecker.cpp > CMakeFiles/autosar_checker.dir/src/CastChecker.cpp.i

CMakeFiles/autosar_checker.dir/src/CastChecker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/autosar_checker.dir/src/CastChecker.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/CastChecker.cpp -o CMakeFiles/autosar_checker.dir/src/CastChecker.cpp.s

CMakeFiles/autosar_checker.dir/src/GlobalVarChecker.cpp.o: CMakeFiles/autosar_checker.dir/flags.make
CMakeFiles/autosar_checker.dir/src/GlobalVarChecker.cpp.o: /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/GlobalVarChecker.cpp
CMakeFiles/autosar_checker.dir/src/GlobalVarChecker.cpp.o: CMakeFiles/autosar_checker.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/sahana/AUTOSAR_cpp14/autosar_checker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/autosar_checker.dir/src/GlobalVarChecker.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/autosar_checker.dir/src/GlobalVarChecker.cpp.o -MF CMakeFiles/autosar_checker.dir/src/GlobalVarChecker.cpp.o.d -o CMakeFiles/autosar_checker.dir/src/GlobalVarChecker.cpp.o -c /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/GlobalVarChecker.cpp

CMakeFiles/autosar_checker.dir/src/GlobalVarChecker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/autosar_checker.dir/src/GlobalVarChecker.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/GlobalVarChecker.cpp > CMakeFiles/autosar_checker.dir/src/GlobalVarChecker.cpp.i

CMakeFiles/autosar_checker.dir/src/GlobalVarChecker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/autosar_checker.dir/src/GlobalVarChecker.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/GlobalVarChecker.cpp -o CMakeFiles/autosar_checker.dir/src/GlobalVarChecker.cpp.s

CMakeFiles/autosar_checker.dir/src/ConstructorChecker.cpp.o: CMakeFiles/autosar_checker.dir/flags.make
CMakeFiles/autosar_checker.dir/src/ConstructorChecker.cpp.o: /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/ConstructorChecker.cpp
CMakeFiles/autosar_checker.dir/src/ConstructorChecker.cpp.o: CMakeFiles/autosar_checker.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/sahana/AUTOSAR_cpp14/autosar_checker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/autosar_checker.dir/src/ConstructorChecker.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/autosar_checker.dir/src/ConstructorChecker.cpp.o -MF CMakeFiles/autosar_checker.dir/src/ConstructorChecker.cpp.o.d -o CMakeFiles/autosar_checker.dir/src/ConstructorChecker.cpp.o -c /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/ConstructorChecker.cpp

CMakeFiles/autosar_checker.dir/src/ConstructorChecker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/autosar_checker.dir/src/ConstructorChecker.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/ConstructorChecker.cpp > CMakeFiles/autosar_checker.dir/src/ConstructorChecker.cpp.i

CMakeFiles/autosar_checker.dir/src/ConstructorChecker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/autosar_checker.dir/src/ConstructorChecker.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/ConstructorChecker.cpp -o CMakeFiles/autosar_checker.dir/src/ConstructorChecker.cpp.s

CMakeFiles/autosar_checker.dir/src/ReportGenerator.cpp.o: CMakeFiles/autosar_checker.dir/flags.make
CMakeFiles/autosar_checker.dir/src/ReportGenerator.cpp.o: /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/ReportGenerator.cpp
CMakeFiles/autosar_checker.dir/src/ReportGenerator.cpp.o: CMakeFiles/autosar_checker.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/sahana/AUTOSAR_cpp14/autosar_checker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/autosar_checker.dir/src/ReportGenerator.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/autosar_checker.dir/src/ReportGenerator.cpp.o -MF CMakeFiles/autosar_checker.dir/src/ReportGenerator.cpp.o.d -o CMakeFiles/autosar_checker.dir/src/ReportGenerator.cpp.o -c /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/ReportGenerator.cpp

CMakeFiles/autosar_checker.dir/src/ReportGenerator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/autosar_checker.dir/src/ReportGenerator.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/ReportGenerator.cpp > CMakeFiles/autosar_checker.dir/src/ReportGenerator.cpp.i

CMakeFiles/autosar_checker.dir/src/ReportGenerator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/autosar_checker.dir/src/ReportGenerator.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/ReportGenerator.cpp -o CMakeFiles/autosar_checker.dir/src/ReportGenerator.cpp.s

CMakeFiles/autosar_checker.dir/src/UnusedParamChecker.cpp.o: CMakeFiles/autosar_checker.dir/flags.make
CMakeFiles/autosar_checker.dir/src/UnusedParamChecker.cpp.o: /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/UnusedParamChecker.cpp
CMakeFiles/autosar_checker.dir/src/UnusedParamChecker.cpp.o: CMakeFiles/autosar_checker.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/sahana/AUTOSAR_cpp14/autosar_checker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/autosar_checker.dir/src/UnusedParamChecker.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/autosar_checker.dir/src/UnusedParamChecker.cpp.o -MF CMakeFiles/autosar_checker.dir/src/UnusedParamChecker.cpp.o.d -o CMakeFiles/autosar_checker.dir/src/UnusedParamChecker.cpp.o -c /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/UnusedParamChecker.cpp

CMakeFiles/autosar_checker.dir/src/UnusedParamChecker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/autosar_checker.dir/src/UnusedParamChecker.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/UnusedParamChecker.cpp > CMakeFiles/autosar_checker.dir/src/UnusedParamChecker.cpp.i

CMakeFiles/autosar_checker.dir/src/UnusedParamChecker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/autosar_checker.dir/src/UnusedParamChecker.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sahana/AUTOSAR_cpp14/autosar_checker/src/UnusedParamChecker.cpp -o CMakeFiles/autosar_checker.dir/src/UnusedParamChecker.cpp.s

# Object files for target autosar_checker
autosar_checker_OBJECTS = \
"CMakeFiles/autosar_checker.dir/src/main.cpp.o" \
"CMakeFiles/autosar_checker.dir/src/CastChecker.cpp.o" \
"CMakeFiles/autosar_checker.dir/src/GlobalVarChecker.cpp.o" \
"CMakeFiles/autosar_checker.dir/src/ConstructorChecker.cpp.o" \
"CMakeFiles/autosar_checker.dir/src/ReportGenerator.cpp.o" \
"CMakeFiles/autosar_checker.dir/src/UnusedParamChecker.cpp.o"

# External object files for target autosar_checker
autosar_checker_EXTERNAL_OBJECTS =

autosar_checker: CMakeFiles/autosar_checker.dir/src/main.cpp.o
autosar_checker: CMakeFiles/autosar_checker.dir/src/CastChecker.cpp.o
autosar_checker: CMakeFiles/autosar_checker.dir/src/GlobalVarChecker.cpp.o
autosar_checker: CMakeFiles/autosar_checker.dir/src/ConstructorChecker.cpp.o
autosar_checker: CMakeFiles/autosar_checker.dir/src/ReportGenerator.cpp.o
autosar_checker: CMakeFiles/autosar_checker.dir/src/UnusedParamChecker.cpp.o
autosar_checker: CMakeFiles/autosar_checker.dir/build.make
autosar_checker: /opt/homebrew/opt/llvm/lib/libclangTooling.a
autosar_checker: /opt/homebrew/opt/llvm/lib/libclangFrontend.a
autosar_checker: /opt/homebrew/opt/llvm/lib/libclangASTMatchers.a
autosar_checker: /opt/homebrew/opt/llvm/lib/libclangBasic.a
autosar_checker: /opt/homebrew/opt/llvm/lib/libclangAST.a
autosar_checker: /opt/homebrew/opt/llvm/lib/libclangParse.a
autosar_checker: /opt/homebrew/opt/llvm/lib/libclangDriver.a
autosar_checker: /opt/homebrew/opt/llvm/lib/libclangFormat.a
autosar_checker: /opt/homebrew/opt/llvm/lib/libclangToolingInclusions.a
autosar_checker: /opt/homebrew/opt/llvm/lib/libclangSerialization.a
autosar_checker: /opt/homebrew/opt/llvm/lib/libclangSema.a
autosar_checker: /opt/homebrew/opt/llvm/lib/libclangAPINotes.a
autosar_checker: /opt/homebrew/opt/llvm/lib/libclangEdit.a
autosar_checker: /opt/homebrew/opt/llvm/lib/libclangAnalysis.a
autosar_checker: /opt/homebrew/opt/llvm/lib/libclangASTMatchers.a
autosar_checker: /opt/homebrew/opt/llvm/lib/libclangAST.a
autosar_checker: /opt/homebrew/opt/llvm/lib/libclangSupport.a
autosar_checker: /opt/homebrew/opt/llvm/lib/libclangToolingCore.a
autosar_checker: /opt/homebrew/opt/llvm/lib/libclangRewrite.a
autosar_checker: /opt/homebrew/opt/llvm/lib/libclangLex.a
autosar_checker: /opt/homebrew/opt/llvm/lib/libclangBasic.a
autosar_checker: /opt/homebrew/opt/llvm/lib/libLLVM.dylib
autosar_checker: CMakeFiles/autosar_checker.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/sahana/AUTOSAR_cpp14/autosar_checker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable autosar_checker"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/autosar_checker.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/autosar_checker.dir/build: autosar_checker
.PHONY : CMakeFiles/autosar_checker.dir/build

CMakeFiles/autosar_checker.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/autosar_checker.dir/cmake_clean.cmake
.PHONY : CMakeFiles/autosar_checker.dir/clean

CMakeFiles/autosar_checker.dir/depend:
	cd /Users/sahana/AUTOSAR_cpp14/autosar_checker/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/sahana/AUTOSAR_cpp14/autosar_checker /Users/sahana/AUTOSAR_cpp14/autosar_checker /Users/sahana/AUTOSAR_cpp14/autosar_checker/build /Users/sahana/AUTOSAR_cpp14/autosar_checker/build /Users/sahana/AUTOSAR_cpp14/autosar_checker/build/CMakeFiles/autosar_checker.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/autosar_checker.dir/depend

