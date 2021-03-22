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
CMAKE_SOURCE_DIR = /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/SmartMusicDisplay/sdk-folder/sdk-build

# Include any dependencies generated for this target.
include InterruptModel/test/CMakeFiles/InterruptModelTest.dir/depend.make

# Include the progress variables for this target.
include InterruptModel/test/CMakeFiles/InterruptModelTest.dir/progress.make

# Include the compile flags for this target's objects.
include InterruptModel/test/CMakeFiles/InterruptModelTest.dir/flags.make

InterruptModel/test/CMakeFiles/InterruptModelTest.dir/InterruptModelTest.cpp.o: InterruptModel/test/CMakeFiles/InterruptModelTest.dir/flags.make
InterruptModel/test/CMakeFiles/InterruptModelTest.dir/InterruptModelTest.cpp.o: /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/InterruptModel/test/InterruptModelTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object InterruptModel/test/CMakeFiles/InterruptModelTest.dir/InterruptModelTest.cpp.o"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/InterruptModel/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/InterruptModelTest.dir/InterruptModelTest.cpp.o -c /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/InterruptModel/test/InterruptModelTest.cpp

InterruptModel/test/CMakeFiles/InterruptModelTest.dir/InterruptModelTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/InterruptModelTest.dir/InterruptModelTest.cpp.i"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/InterruptModel/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/InterruptModel/test/InterruptModelTest.cpp > CMakeFiles/InterruptModelTest.dir/InterruptModelTest.cpp.i

InterruptModel/test/CMakeFiles/InterruptModelTest.dir/InterruptModelTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/InterruptModelTest.dir/InterruptModelTest.cpp.s"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/InterruptModel/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/InterruptModel/test/InterruptModelTest.cpp -o CMakeFiles/InterruptModelTest.dir/InterruptModelTest.cpp.s

# Object files for target InterruptModelTest
InterruptModelTest_OBJECTS = \
"CMakeFiles/InterruptModelTest.dir/InterruptModelTest.cpp.o"

# External object files for target InterruptModelTest
InterruptModelTest_EXTERNAL_OBJECTS =

InterruptModel/test/InterruptModelTest: InterruptModel/test/CMakeFiles/InterruptModelTest.dir/InterruptModelTest.cpp.o
InterruptModel/test/InterruptModelTest: InterruptModel/test/CMakeFiles/InterruptModelTest.dir/build.make
InterruptModel/test/InterruptModelTest: InterruptModel/src/libInterruptModel.so
InterruptModel/test/InterruptModelTest: AVSCommon/SDKInterfaces/test/libSDKInterfacesTests.a
InterruptModel/test/InterruptModelTest: ThirdParty/googletest-release-1.8.0/googlemock/libgmock_main.a
InterruptModel/test/InterruptModelTest: AVSCommon/libAVSCommon.so
InterruptModel/test/InterruptModelTest: /usr/lib/arm-linux-gnueabihf/libcurl.so
InterruptModel/test/InterruptModelTest: InterruptModel/test/CMakeFiles/InterruptModelTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable InterruptModelTest"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/InterruptModel/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/InterruptModelTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
InterruptModel/test/CMakeFiles/InterruptModelTest.dir/build: InterruptModel/test/InterruptModelTest

.PHONY : InterruptModel/test/CMakeFiles/InterruptModelTest.dir/build

InterruptModel/test/CMakeFiles/InterruptModelTest.dir/clean:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/InterruptModel/test && $(CMAKE_COMMAND) -P CMakeFiles/InterruptModelTest.dir/cmake_clean.cmake
.PHONY : InterruptModel/test/CMakeFiles/InterruptModelTest.dir/clean

InterruptModel/test/CMakeFiles/InterruptModelTest.dir/depend:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/InterruptModel/test /home/pi/SmartMusicDisplay/sdk-folder/sdk-build /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/InterruptModel/test /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/InterruptModel/test/CMakeFiles/InterruptModelTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : InterruptModel/test/CMakeFiles/InterruptModelTest.dir/depend

