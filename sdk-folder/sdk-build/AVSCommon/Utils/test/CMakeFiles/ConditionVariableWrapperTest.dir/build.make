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
include AVSCommon/Utils/test/CMakeFiles/ConditionVariableWrapperTest.dir/depend.make

# Include the progress variables for this target.
include AVSCommon/Utils/test/CMakeFiles/ConditionVariableWrapperTest.dir/progress.make

# Include the compile flags for this target's objects.
include AVSCommon/Utils/test/CMakeFiles/ConditionVariableWrapperTest.dir/flags.make

AVSCommon/Utils/test/CMakeFiles/ConditionVariableWrapperTest.dir/AVSCommon/Utils/Threading/ConditionVariableWrapperTest.cpp.o: AVSCommon/Utils/test/CMakeFiles/ConditionVariableWrapperTest.dir/flags.make
AVSCommon/Utils/test/CMakeFiles/ConditionVariableWrapperTest.dir/AVSCommon/Utils/Threading/ConditionVariableWrapperTest.cpp.o: /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/AVSCommon/Utils/test/AVSCommon/Utils/Threading/ConditionVariableWrapperTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object AVSCommon/Utils/test/CMakeFiles/ConditionVariableWrapperTest.dir/AVSCommon/Utils/Threading/ConditionVariableWrapperTest.cpp.o"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/AVSCommon/Utils/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ConditionVariableWrapperTest.dir/AVSCommon/Utils/Threading/ConditionVariableWrapperTest.cpp.o -c /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/AVSCommon/Utils/test/AVSCommon/Utils/Threading/ConditionVariableWrapperTest.cpp

AVSCommon/Utils/test/CMakeFiles/ConditionVariableWrapperTest.dir/AVSCommon/Utils/Threading/ConditionVariableWrapperTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ConditionVariableWrapperTest.dir/AVSCommon/Utils/Threading/ConditionVariableWrapperTest.cpp.i"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/AVSCommon/Utils/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/AVSCommon/Utils/test/AVSCommon/Utils/Threading/ConditionVariableWrapperTest.cpp > CMakeFiles/ConditionVariableWrapperTest.dir/AVSCommon/Utils/Threading/ConditionVariableWrapperTest.cpp.i

AVSCommon/Utils/test/CMakeFiles/ConditionVariableWrapperTest.dir/AVSCommon/Utils/Threading/ConditionVariableWrapperTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ConditionVariableWrapperTest.dir/AVSCommon/Utils/Threading/ConditionVariableWrapperTest.cpp.s"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/AVSCommon/Utils/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/AVSCommon/Utils/test/AVSCommon/Utils/Threading/ConditionVariableWrapperTest.cpp -o CMakeFiles/ConditionVariableWrapperTest.dir/AVSCommon/Utils/Threading/ConditionVariableWrapperTest.cpp.s

# Object files for target ConditionVariableWrapperTest
ConditionVariableWrapperTest_OBJECTS = \
"CMakeFiles/ConditionVariableWrapperTest.dir/AVSCommon/Utils/Threading/ConditionVariableWrapperTest.cpp.o"

# External object files for target ConditionVariableWrapperTest
ConditionVariableWrapperTest_EXTERNAL_OBJECTS =

AVSCommon/Utils/test/ConditionVariableWrapperTest: AVSCommon/Utils/test/CMakeFiles/ConditionVariableWrapperTest.dir/AVSCommon/Utils/Threading/ConditionVariableWrapperTest.cpp.o
AVSCommon/Utils/test/ConditionVariableWrapperTest: AVSCommon/Utils/test/CMakeFiles/ConditionVariableWrapperTest.dir/build.make
AVSCommon/Utils/test/ConditionVariableWrapperTest: AVSCommon/Utils/test/Common/libUtilsCommonTestLib.a
AVSCommon/Utils/test/ConditionVariableWrapperTest: AVSCommon/SDKInterfaces/test/libSDKInterfacesTests.a
AVSCommon/Utils/test/ConditionVariableWrapperTest: ThirdParty/googletest-release-1.8.0/googlemock/libgmock_main.a
AVSCommon/Utils/test/ConditionVariableWrapperTest: ThirdParty/googletest-release-1.8.0/googlemock/gtest/libgtest_main.a
AVSCommon/Utils/test/ConditionVariableWrapperTest: ThirdParty/googletest-release-1.8.0/googlemock/gtest/libgtest.a
AVSCommon/Utils/test/ConditionVariableWrapperTest: AVSCommon/libAVSCommon.so
AVSCommon/Utils/test/ConditionVariableWrapperTest: /usr/lib/arm-linux-gnueabihf/libcurl.so
AVSCommon/Utils/test/ConditionVariableWrapperTest: AVSCommon/Utils/test/CMakeFiles/ConditionVariableWrapperTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ConditionVariableWrapperTest"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/AVSCommon/Utils/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ConditionVariableWrapperTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
AVSCommon/Utils/test/CMakeFiles/ConditionVariableWrapperTest.dir/build: AVSCommon/Utils/test/ConditionVariableWrapperTest

.PHONY : AVSCommon/Utils/test/CMakeFiles/ConditionVariableWrapperTest.dir/build

AVSCommon/Utils/test/CMakeFiles/ConditionVariableWrapperTest.dir/clean:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/AVSCommon/Utils/test && $(CMAKE_COMMAND) -P CMakeFiles/ConditionVariableWrapperTest.dir/cmake_clean.cmake
.PHONY : AVSCommon/Utils/test/CMakeFiles/ConditionVariableWrapperTest.dir/clean

AVSCommon/Utils/test/CMakeFiles/ConditionVariableWrapperTest.dir/depend:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/AVSCommon/Utils/test /home/pi/SmartMusicDisplay/sdk-folder/sdk-build /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/AVSCommon/Utils/test /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/AVSCommon/Utils/test/CMakeFiles/ConditionVariableWrapperTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : AVSCommon/Utils/test/CMakeFiles/ConditionVariableWrapperTest.dir/depend

