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
include ApplicationUtilities/SystemSoundPlayer/test/CMakeFiles/SystemSoundPlayerTest.dir/depend.make

# Include the progress variables for this target.
include ApplicationUtilities/SystemSoundPlayer/test/CMakeFiles/SystemSoundPlayerTest.dir/progress.make

# Include the compile flags for this target's objects.
include ApplicationUtilities/SystemSoundPlayer/test/CMakeFiles/SystemSoundPlayerTest.dir/flags.make

ApplicationUtilities/SystemSoundPlayer/test/CMakeFiles/SystemSoundPlayerTest.dir/SystemSoundPlayerTest.cpp.o: ApplicationUtilities/SystemSoundPlayer/test/CMakeFiles/SystemSoundPlayerTest.dir/flags.make
ApplicationUtilities/SystemSoundPlayer/test/CMakeFiles/SystemSoundPlayerTest.dir/SystemSoundPlayerTest.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/ApplicationUtilities/SystemSoundPlayer/test/SystemSoundPlayerTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ApplicationUtilities/SystemSoundPlayer/test/CMakeFiles/SystemSoundPlayerTest.dir/SystemSoundPlayerTest.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/ApplicationUtilities/SystemSoundPlayer/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SystemSoundPlayerTest.dir/SystemSoundPlayerTest.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/ApplicationUtilities/SystemSoundPlayer/test/SystemSoundPlayerTest.cpp

ApplicationUtilities/SystemSoundPlayer/test/CMakeFiles/SystemSoundPlayerTest.dir/SystemSoundPlayerTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SystemSoundPlayerTest.dir/SystemSoundPlayerTest.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/ApplicationUtilities/SystemSoundPlayer/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/ApplicationUtilities/SystemSoundPlayer/test/SystemSoundPlayerTest.cpp > CMakeFiles/SystemSoundPlayerTest.dir/SystemSoundPlayerTest.cpp.i

ApplicationUtilities/SystemSoundPlayer/test/CMakeFiles/SystemSoundPlayerTest.dir/SystemSoundPlayerTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SystemSoundPlayerTest.dir/SystemSoundPlayerTest.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/ApplicationUtilities/SystemSoundPlayer/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/ApplicationUtilities/SystemSoundPlayer/test/SystemSoundPlayerTest.cpp -o CMakeFiles/SystemSoundPlayerTest.dir/SystemSoundPlayerTest.cpp.s

# Object files for target SystemSoundPlayerTest
SystemSoundPlayerTest_OBJECTS = \
"CMakeFiles/SystemSoundPlayerTest.dir/SystemSoundPlayerTest.cpp.o"

# External object files for target SystemSoundPlayerTest
SystemSoundPlayerTest_EXTERNAL_OBJECTS =

ApplicationUtilities/SystemSoundPlayer/test/SystemSoundPlayerTest: ApplicationUtilities/SystemSoundPlayer/test/CMakeFiles/SystemSoundPlayerTest.dir/SystemSoundPlayerTest.cpp.o
ApplicationUtilities/SystemSoundPlayer/test/SystemSoundPlayerTest: ApplicationUtilities/SystemSoundPlayer/test/CMakeFiles/SystemSoundPlayerTest.dir/build.make
ApplicationUtilities/SystemSoundPlayer/test/SystemSoundPlayerTest: ApplicationUtilities/SystemSoundPlayer/src/libSystemSoundPlayer.so
ApplicationUtilities/SystemSoundPlayer/test/SystemSoundPlayerTest: AVSCommon/Utils/test/Common/libUtilsCommonTestLib.a
ApplicationUtilities/SystemSoundPlayer/test/SystemSoundPlayerTest: AVSCommon/SDKInterfaces/test/libSDKInterfacesTests.a
ApplicationUtilities/SystemSoundPlayer/test/SystemSoundPlayerTest: ThirdParty/googletest-release-1.8.0/googlemock/libgmock_main.a
ApplicationUtilities/SystemSoundPlayer/test/SystemSoundPlayerTest: ThirdParty/googletest-release-1.8.0/googlemock/gtest/libgtest_main.a
ApplicationUtilities/SystemSoundPlayer/test/SystemSoundPlayerTest: ThirdParty/googletest-release-1.8.0/googlemock/gtest/libgtest.a
ApplicationUtilities/SystemSoundPlayer/test/SystemSoundPlayerTest: AVSCommon/libAVSCommon.so
ApplicationUtilities/SystemSoundPlayer/test/SystemSoundPlayerTest: /usr/lib/arm-linux-gnueabihf/libcurl.so
ApplicationUtilities/SystemSoundPlayer/test/SystemSoundPlayerTest: ApplicationUtilities/SystemSoundPlayer/test/CMakeFiles/SystemSoundPlayerTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable SystemSoundPlayerTest"
	cd /home/pi/sdk-folder/sdk-build/ApplicationUtilities/SystemSoundPlayer/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SystemSoundPlayerTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ApplicationUtilities/SystemSoundPlayer/test/CMakeFiles/SystemSoundPlayerTest.dir/build: ApplicationUtilities/SystemSoundPlayer/test/SystemSoundPlayerTest

.PHONY : ApplicationUtilities/SystemSoundPlayer/test/CMakeFiles/SystemSoundPlayerTest.dir/build

ApplicationUtilities/SystemSoundPlayer/test/CMakeFiles/SystemSoundPlayerTest.dir/clean:
	cd /home/pi/sdk-folder/sdk-build/ApplicationUtilities/SystemSoundPlayer/test && $(CMAKE_COMMAND) -P CMakeFiles/SystemSoundPlayerTest.dir/cmake_clean.cmake
.PHONY : ApplicationUtilities/SystemSoundPlayer/test/CMakeFiles/SystemSoundPlayerTest.dir/clean

ApplicationUtilities/SystemSoundPlayer/test/CMakeFiles/SystemSoundPlayerTest.dir/depend:
	cd /home/pi/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/sdk-folder/sdk-source/avs-device-sdk /home/pi/sdk-folder/sdk-source/avs-device-sdk/ApplicationUtilities/SystemSoundPlayer/test /home/pi/sdk-folder/sdk-build /home/pi/sdk-folder/sdk-build/ApplicationUtilities/SystemSoundPlayer/test /home/pi/sdk-folder/sdk-build/ApplicationUtilities/SystemSoundPlayer/test/CMakeFiles/SystemSoundPlayerTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ApplicationUtilities/SystemSoundPlayer/test/CMakeFiles/SystemSoundPlayerTest.dir/depend

