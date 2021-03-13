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
include AVSCommon/Utils/test/CMakeFiles/EndianTest.dir/depend.make

# Include the progress variables for this target.
include AVSCommon/Utils/test/CMakeFiles/EndianTest.dir/progress.make

# Include the compile flags for this target's objects.
include AVSCommon/Utils/test/CMakeFiles/EndianTest.dir/flags.make

AVSCommon/Utils/test/CMakeFiles/EndianTest.dir/EndianTest.cpp.o: AVSCommon/Utils/test/CMakeFiles/EndianTest.dir/flags.make
AVSCommon/Utils/test/CMakeFiles/EndianTest.dir/EndianTest.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/AVSCommon/Utils/test/EndianTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object AVSCommon/Utils/test/CMakeFiles/EndianTest.dir/EndianTest.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/AVSCommon/Utils/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/EndianTest.dir/EndianTest.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/AVSCommon/Utils/test/EndianTest.cpp

AVSCommon/Utils/test/CMakeFiles/EndianTest.dir/EndianTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/EndianTest.dir/EndianTest.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/AVSCommon/Utils/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/AVSCommon/Utils/test/EndianTest.cpp > CMakeFiles/EndianTest.dir/EndianTest.cpp.i

AVSCommon/Utils/test/CMakeFiles/EndianTest.dir/EndianTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/EndianTest.dir/EndianTest.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/AVSCommon/Utils/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/AVSCommon/Utils/test/EndianTest.cpp -o CMakeFiles/EndianTest.dir/EndianTest.cpp.s

# Object files for target EndianTest
EndianTest_OBJECTS = \
"CMakeFiles/EndianTest.dir/EndianTest.cpp.o"

# External object files for target EndianTest
EndianTest_EXTERNAL_OBJECTS =

AVSCommon/Utils/test/EndianTest: AVSCommon/Utils/test/CMakeFiles/EndianTest.dir/EndianTest.cpp.o
AVSCommon/Utils/test/EndianTest: AVSCommon/Utils/test/CMakeFiles/EndianTest.dir/build.make
AVSCommon/Utils/test/EndianTest: AVSCommon/Utils/test/Common/libUtilsCommonTestLib.a
AVSCommon/Utils/test/EndianTest: AVSCommon/SDKInterfaces/test/libSDKInterfacesTests.a
AVSCommon/Utils/test/EndianTest: ThirdParty/googletest-release-1.8.0/googlemock/libgmock_main.a
AVSCommon/Utils/test/EndianTest: ThirdParty/googletest-release-1.8.0/googlemock/gtest/libgtest_main.a
AVSCommon/Utils/test/EndianTest: ThirdParty/googletest-release-1.8.0/googlemock/gtest/libgtest.a
AVSCommon/Utils/test/EndianTest: AVSCommon/libAVSCommon.so
AVSCommon/Utils/test/EndianTest: /usr/lib/arm-linux-gnueabihf/libcurl.so
AVSCommon/Utils/test/EndianTest: AVSCommon/Utils/test/CMakeFiles/EndianTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable EndianTest"
	cd /home/pi/sdk-folder/sdk-build/AVSCommon/Utils/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/EndianTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
AVSCommon/Utils/test/CMakeFiles/EndianTest.dir/build: AVSCommon/Utils/test/EndianTest

.PHONY : AVSCommon/Utils/test/CMakeFiles/EndianTest.dir/build

AVSCommon/Utils/test/CMakeFiles/EndianTest.dir/clean:
	cd /home/pi/sdk-folder/sdk-build/AVSCommon/Utils/test && $(CMAKE_COMMAND) -P CMakeFiles/EndianTest.dir/cmake_clean.cmake
.PHONY : AVSCommon/Utils/test/CMakeFiles/EndianTest.dir/clean

AVSCommon/Utils/test/CMakeFiles/EndianTest.dir/depend:
	cd /home/pi/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/sdk-folder/sdk-source/avs-device-sdk /home/pi/sdk-folder/sdk-source/avs-device-sdk/AVSCommon/Utils/test /home/pi/sdk-folder/sdk-build /home/pi/sdk-folder/sdk-build/AVSCommon/Utils/test /home/pi/sdk-folder/sdk-build/AVSCommon/Utils/test/CMakeFiles/EndianTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : AVSCommon/Utils/test/CMakeFiles/EndianTest.dir/depend

