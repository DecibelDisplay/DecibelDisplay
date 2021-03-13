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
include ACL/test/CMakeFiles/PostConnectSequencerFactoryTest.dir/depend.make

# Include the progress variables for this target.
include ACL/test/CMakeFiles/PostConnectSequencerFactoryTest.dir/progress.make

# Include the compile flags for this target's objects.
include ACL/test/CMakeFiles/PostConnectSequencerFactoryTest.dir/flags.make

ACL/test/CMakeFiles/PostConnectSequencerFactoryTest.dir/Transport/PostConnectSequencerFactoryTest.cpp.o: ACL/test/CMakeFiles/PostConnectSequencerFactoryTest.dir/flags.make
ACL/test/CMakeFiles/PostConnectSequencerFactoryTest.dir/Transport/PostConnectSequencerFactoryTest.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/ACL/test/Transport/PostConnectSequencerFactoryTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ACL/test/CMakeFiles/PostConnectSequencerFactoryTest.dir/Transport/PostConnectSequencerFactoryTest.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/ACL/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PostConnectSequencerFactoryTest.dir/Transport/PostConnectSequencerFactoryTest.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/ACL/test/Transport/PostConnectSequencerFactoryTest.cpp

ACL/test/CMakeFiles/PostConnectSequencerFactoryTest.dir/Transport/PostConnectSequencerFactoryTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PostConnectSequencerFactoryTest.dir/Transport/PostConnectSequencerFactoryTest.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/ACL/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/ACL/test/Transport/PostConnectSequencerFactoryTest.cpp > CMakeFiles/PostConnectSequencerFactoryTest.dir/Transport/PostConnectSequencerFactoryTest.cpp.i

ACL/test/CMakeFiles/PostConnectSequencerFactoryTest.dir/Transport/PostConnectSequencerFactoryTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PostConnectSequencerFactoryTest.dir/Transport/PostConnectSequencerFactoryTest.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/ACL/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/ACL/test/Transport/PostConnectSequencerFactoryTest.cpp -o CMakeFiles/PostConnectSequencerFactoryTest.dir/Transport/PostConnectSequencerFactoryTest.cpp.s

# Object files for target PostConnectSequencerFactoryTest
PostConnectSequencerFactoryTest_OBJECTS = \
"CMakeFiles/PostConnectSequencerFactoryTest.dir/Transport/PostConnectSequencerFactoryTest.cpp.o"

# External object files for target PostConnectSequencerFactoryTest
PostConnectSequencerFactoryTest_EXTERNAL_OBJECTS =

ACL/test/PostConnectSequencerFactoryTest: ACL/test/CMakeFiles/PostConnectSequencerFactoryTest.dir/Transport/PostConnectSequencerFactoryTest.cpp.o
ACL/test/PostConnectSequencerFactoryTest: ACL/test/CMakeFiles/PostConnectSequencerFactoryTest.dir/build.make
ACL/test/PostConnectSequencerFactoryTest: ACL/src/libACL.so
ACL/test/PostConnectSequencerFactoryTest: ACL/test/Transport/Common/libACLTransportCommonTestLib.a
ACL/test/PostConnectSequencerFactoryTest: AVSCommon/SDKInterfaces/test/libSDKInterfacesTests.a
ACL/test/PostConnectSequencerFactoryTest: ThirdParty/googletest-release-1.8.0/googlemock/libgmock_main.a
ACL/test/PostConnectSequencerFactoryTest: ThirdParty/googletest-release-1.8.0/googlemock/gtest/libgtest_main.a
ACL/test/PostConnectSequencerFactoryTest: ThirdParty/googletest-release-1.8.0/googlemock/gtest/libgtest.a
ACL/test/PostConnectSequencerFactoryTest: AVSCommon/libAVSCommon.so
ACL/test/PostConnectSequencerFactoryTest: /usr/lib/arm-linux-gnueabihf/libcurl.so
ACL/test/PostConnectSequencerFactoryTest: ACL/test/CMakeFiles/PostConnectSequencerFactoryTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable PostConnectSequencerFactoryTest"
	cd /home/pi/sdk-folder/sdk-build/ACL/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PostConnectSequencerFactoryTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ACL/test/CMakeFiles/PostConnectSequencerFactoryTest.dir/build: ACL/test/PostConnectSequencerFactoryTest

.PHONY : ACL/test/CMakeFiles/PostConnectSequencerFactoryTest.dir/build

ACL/test/CMakeFiles/PostConnectSequencerFactoryTest.dir/clean:
	cd /home/pi/sdk-folder/sdk-build/ACL/test && $(CMAKE_COMMAND) -P CMakeFiles/PostConnectSequencerFactoryTest.dir/cmake_clean.cmake
.PHONY : ACL/test/CMakeFiles/PostConnectSequencerFactoryTest.dir/clean

ACL/test/CMakeFiles/PostConnectSequencerFactoryTest.dir/depend:
	cd /home/pi/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/sdk-folder/sdk-source/avs-device-sdk /home/pi/sdk-folder/sdk-source/avs-device-sdk/ACL/test /home/pi/sdk-folder/sdk-build /home/pi/sdk-folder/sdk-build/ACL/test /home/pi/sdk-folder/sdk-build/ACL/test/CMakeFiles/PostConnectSequencerFactoryTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ACL/test/CMakeFiles/PostConnectSequencerFactoryTest.dir/depend

