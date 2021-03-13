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
include AVSCommon/SDKInterfaces/test/CMakeFiles/SDKInterfacesTests.dir/depend.make

# Include the progress variables for this target.
include AVSCommon/SDKInterfaces/test/CMakeFiles/SDKInterfacesTests.dir/progress.make

# Include the compile flags for this target's objects.
include AVSCommon/SDKInterfaces/test/CMakeFiles/SDKInterfacesTests.dir/flags.make

AVSCommon/SDKInterfaces/test/CMakeFiles/SDKInterfacesTests.dir/src/StubMiscStorage.cpp.o: AVSCommon/SDKInterfaces/test/CMakeFiles/SDKInterfacesTests.dir/flags.make
AVSCommon/SDKInterfaces/test/CMakeFiles/SDKInterfacesTests.dir/src/StubMiscStorage.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/AVSCommon/SDKInterfaces/test/src/StubMiscStorage.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object AVSCommon/SDKInterfaces/test/CMakeFiles/SDKInterfacesTests.dir/src/StubMiscStorage.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/AVSCommon/SDKInterfaces/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SDKInterfacesTests.dir/src/StubMiscStorage.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/AVSCommon/SDKInterfaces/test/src/StubMiscStorage.cpp

AVSCommon/SDKInterfaces/test/CMakeFiles/SDKInterfacesTests.dir/src/StubMiscStorage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SDKInterfacesTests.dir/src/StubMiscStorage.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/AVSCommon/SDKInterfaces/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/AVSCommon/SDKInterfaces/test/src/StubMiscStorage.cpp > CMakeFiles/SDKInterfacesTests.dir/src/StubMiscStorage.cpp.i

AVSCommon/SDKInterfaces/test/CMakeFiles/SDKInterfacesTests.dir/src/StubMiscStorage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SDKInterfacesTests.dir/src/StubMiscStorage.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/AVSCommon/SDKInterfaces/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/AVSCommon/SDKInterfaces/test/src/StubMiscStorage.cpp -o CMakeFiles/SDKInterfacesTests.dir/src/StubMiscStorage.cpp.s

# Object files for target SDKInterfacesTests
SDKInterfacesTests_OBJECTS = \
"CMakeFiles/SDKInterfacesTests.dir/src/StubMiscStorage.cpp.o"

# External object files for target SDKInterfacesTests
SDKInterfacesTests_EXTERNAL_OBJECTS =

AVSCommon/SDKInterfaces/test/libSDKInterfacesTests.a: AVSCommon/SDKInterfaces/test/CMakeFiles/SDKInterfacesTests.dir/src/StubMiscStorage.cpp.o
AVSCommon/SDKInterfaces/test/libSDKInterfacesTests.a: AVSCommon/SDKInterfaces/test/CMakeFiles/SDKInterfacesTests.dir/build.make
AVSCommon/SDKInterfaces/test/libSDKInterfacesTests.a: AVSCommon/SDKInterfaces/test/CMakeFiles/SDKInterfacesTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libSDKInterfacesTests.a"
	cd /home/pi/sdk-folder/sdk-build/AVSCommon/SDKInterfaces/test && $(CMAKE_COMMAND) -P CMakeFiles/SDKInterfacesTests.dir/cmake_clean_target.cmake
	cd /home/pi/sdk-folder/sdk-build/AVSCommon/SDKInterfaces/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SDKInterfacesTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
AVSCommon/SDKInterfaces/test/CMakeFiles/SDKInterfacesTests.dir/build: AVSCommon/SDKInterfaces/test/libSDKInterfacesTests.a

.PHONY : AVSCommon/SDKInterfaces/test/CMakeFiles/SDKInterfacesTests.dir/build

AVSCommon/SDKInterfaces/test/CMakeFiles/SDKInterfacesTests.dir/clean:
	cd /home/pi/sdk-folder/sdk-build/AVSCommon/SDKInterfaces/test && $(CMAKE_COMMAND) -P CMakeFiles/SDKInterfacesTests.dir/cmake_clean.cmake
.PHONY : AVSCommon/SDKInterfaces/test/CMakeFiles/SDKInterfacesTests.dir/clean

AVSCommon/SDKInterfaces/test/CMakeFiles/SDKInterfacesTests.dir/depend:
	cd /home/pi/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/sdk-folder/sdk-source/avs-device-sdk /home/pi/sdk-folder/sdk-source/avs-device-sdk/AVSCommon/SDKInterfaces/test /home/pi/sdk-folder/sdk-build /home/pi/sdk-folder/sdk-build/AVSCommon/SDKInterfaces/test /home/pi/sdk-folder/sdk-build/AVSCommon/SDKInterfaces/test/CMakeFiles/SDKInterfacesTests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : AVSCommon/SDKInterfaces/test/CMakeFiles/SDKInterfacesTests.dir/depend

