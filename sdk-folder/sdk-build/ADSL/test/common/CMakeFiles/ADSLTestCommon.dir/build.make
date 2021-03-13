# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/sdk-folder/sdk-source/avs-device-sdk

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/sdk-folder/sdk-build

# Include any dependencies generated for this target.
include ADSL/test/common/CMakeFiles/ADSLTestCommon.dir/depend.make

# Include the progress variables for this target.
include ADSL/test/common/CMakeFiles/ADSLTestCommon.dir/progress.make

# Include the compile flags for this target's objects.
include ADSL/test/common/CMakeFiles/ADSLTestCommon.dir/flags.make

ADSL/test/common/CMakeFiles/ADSLTestCommon.dir/MockDirectiveHandler.cpp.o: ADSL/test/common/CMakeFiles/ADSLTestCommon.dir/flags.make
ADSL/test/common/CMakeFiles/ADSLTestCommon.dir/MockDirectiveHandler.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/ADSL/test/common/MockDirectiveHandler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ADSL/test/common/CMakeFiles/ADSLTestCommon.dir/MockDirectiveHandler.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/ADSL/test/common && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ADSLTestCommon.dir/MockDirectiveHandler.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/ADSL/test/common/MockDirectiveHandler.cpp

ADSL/test/common/CMakeFiles/ADSLTestCommon.dir/MockDirectiveHandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ADSLTestCommon.dir/MockDirectiveHandler.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/ADSL/test/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/ADSL/test/common/MockDirectiveHandler.cpp > CMakeFiles/ADSLTestCommon.dir/MockDirectiveHandler.cpp.i

ADSL/test/common/CMakeFiles/ADSLTestCommon.dir/MockDirectiveHandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ADSLTestCommon.dir/MockDirectiveHandler.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/ADSL/test/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/ADSL/test/common/MockDirectiveHandler.cpp -o CMakeFiles/ADSLTestCommon.dir/MockDirectiveHandler.cpp.s

# Object files for target ADSLTestCommon
ADSLTestCommon_OBJECTS = \
"CMakeFiles/ADSLTestCommon.dir/MockDirectiveHandler.cpp.o"

# External object files for target ADSLTestCommon
ADSLTestCommon_EXTERNAL_OBJECTS =

ADSL/test/common/libADSLTestCommon.a: ADSL/test/common/CMakeFiles/ADSLTestCommon.dir/MockDirectiveHandler.cpp.o
ADSL/test/common/libADSLTestCommon.a: ADSL/test/common/CMakeFiles/ADSLTestCommon.dir/build.make
ADSL/test/common/libADSLTestCommon.a: ADSL/test/common/CMakeFiles/ADSLTestCommon.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libADSLTestCommon.a"
	cd /home/pi/sdk-folder/sdk-build/ADSL/test/common && $(CMAKE_COMMAND) -P CMakeFiles/ADSLTestCommon.dir/cmake_clean_target.cmake
	cd /home/pi/sdk-folder/sdk-build/ADSL/test/common && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ADSLTestCommon.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ADSL/test/common/CMakeFiles/ADSLTestCommon.dir/build: ADSL/test/common/libADSLTestCommon.a

.PHONY : ADSL/test/common/CMakeFiles/ADSLTestCommon.dir/build

ADSL/test/common/CMakeFiles/ADSLTestCommon.dir/clean:
	cd /home/pi/sdk-folder/sdk-build/ADSL/test/common && $(CMAKE_COMMAND) -P CMakeFiles/ADSLTestCommon.dir/cmake_clean.cmake
.PHONY : ADSL/test/common/CMakeFiles/ADSLTestCommon.dir/clean

ADSL/test/common/CMakeFiles/ADSLTestCommon.dir/depend:
	cd /home/pi/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/sdk-folder/sdk-source/avs-device-sdk /home/pi/sdk-folder/sdk-source/avs-device-sdk/ADSL/test/common /home/pi/sdk-folder/sdk-build /home/pi/sdk-folder/sdk-build/ADSL/test/common /home/pi/sdk-folder/sdk-build/ADSL/test/common/CMakeFiles/ADSLTestCommon.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ADSL/test/common/CMakeFiles/ADSLTestCommon.dir/depend

