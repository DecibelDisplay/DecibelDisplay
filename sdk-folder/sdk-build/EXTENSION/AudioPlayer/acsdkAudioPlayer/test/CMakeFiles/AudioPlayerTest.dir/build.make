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
include EXTENSION/AudioPlayer/acsdkAudioPlayer/test/CMakeFiles/AudioPlayerTest.dir/depend.make

# Include the progress variables for this target.
include EXTENSION/AudioPlayer/acsdkAudioPlayer/test/CMakeFiles/AudioPlayerTest.dir/progress.make

# Include the compile flags for this target's objects.
include EXTENSION/AudioPlayer/acsdkAudioPlayer/test/CMakeFiles/AudioPlayerTest.dir/flags.make

EXTENSION/AudioPlayer/acsdkAudioPlayer/test/CMakeFiles/AudioPlayerTest.dir/AudioPlayerTest.cpp.o: EXTENSION/AudioPlayer/acsdkAudioPlayer/test/CMakeFiles/AudioPlayerTest.dir/flags.make
EXTENSION/AudioPlayer/acsdkAudioPlayer/test/CMakeFiles/AudioPlayerTest.dir/AudioPlayerTest.cpp.o: /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/AudioPlayer/acsdkAudioPlayer/test/AudioPlayerTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object EXTENSION/AudioPlayer/acsdkAudioPlayer/test/CMakeFiles/AudioPlayerTest.dir/AudioPlayerTest.cpp.o"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/AudioPlayer/acsdkAudioPlayer/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AudioPlayerTest.dir/AudioPlayerTest.cpp.o -c /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/AudioPlayer/acsdkAudioPlayer/test/AudioPlayerTest.cpp

EXTENSION/AudioPlayer/acsdkAudioPlayer/test/CMakeFiles/AudioPlayerTest.dir/AudioPlayerTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AudioPlayerTest.dir/AudioPlayerTest.cpp.i"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/AudioPlayer/acsdkAudioPlayer/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/AudioPlayer/acsdkAudioPlayer/test/AudioPlayerTest.cpp > CMakeFiles/AudioPlayerTest.dir/AudioPlayerTest.cpp.i

EXTENSION/AudioPlayer/acsdkAudioPlayer/test/CMakeFiles/AudioPlayerTest.dir/AudioPlayerTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AudioPlayerTest.dir/AudioPlayerTest.cpp.s"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/AudioPlayer/acsdkAudioPlayer/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/AudioPlayer/acsdkAudioPlayer/test/AudioPlayerTest.cpp -o CMakeFiles/AudioPlayerTest.dir/AudioPlayerTest.cpp.s

# Object files for target AudioPlayerTest
AudioPlayerTest_OBJECTS = \
"CMakeFiles/AudioPlayerTest.dir/AudioPlayerTest.cpp.o"

# External object files for target AudioPlayerTest
AudioPlayerTest_EXTERNAL_OBJECTS =

EXTENSION/AudioPlayer/acsdkAudioPlayer/test/AudioPlayerTest: EXTENSION/AudioPlayer/acsdkAudioPlayer/test/CMakeFiles/AudioPlayerTest.dir/AudioPlayerTest.cpp.o
EXTENSION/AudioPlayer/acsdkAudioPlayer/test/AudioPlayerTest: EXTENSION/AudioPlayer/acsdkAudioPlayer/test/CMakeFiles/AudioPlayerTest.dir/build.make
EXTENSION/AudioPlayer/acsdkAudioPlayer/test/AudioPlayerTest: EXTENSION/AudioPlayer/acsdkAudioPlayer/src/libacsdkAudioPlayer.so
EXTENSION/AudioPlayer/acsdkAudioPlayer/test/AudioPlayerTest: Captions/Implementation/test/libCaptionsTestLib.a
EXTENSION/AudioPlayer/acsdkAudioPlayer/test/AudioPlayerTest: AVSCommon/Utils/test/Common/libUtilsCommonTestLib.a
EXTENSION/AudioPlayer/acsdkAudioPlayer/test/AudioPlayerTest: AVSCommon/SDKInterfaces/test/libSDKInterfacesTests.a
EXTENSION/AudioPlayer/acsdkAudioPlayer/test/AudioPlayerTest: ThirdParty/googletest-release-1.8.0/googlemock/libgmock_main.a
EXTENSION/AudioPlayer/acsdkAudioPlayer/test/AudioPlayerTest: shared/acsdkManufactory/src/libacsdkManufactory.so
EXTENSION/AudioPlayer/acsdkAudioPlayer/test/AudioPlayerTest: Captions/Implementation/src/libCaptionsLib.so
EXTENSION/AudioPlayer/acsdkAudioPlayer/test/AudioPlayerTest: Captions/Interface/src/libCaptions.so
EXTENSION/AudioPlayer/acsdkAudioPlayer/test/AudioPlayerTest: AVSCommon/libAVSCommon.so
EXTENSION/AudioPlayer/acsdkAudioPlayer/test/AudioPlayerTest: /usr/lib/arm-linux-gnueabihf/libcurl.so
EXTENSION/AudioPlayer/acsdkAudioPlayer/test/AudioPlayerTest: ThirdParty/googletest-release-1.8.0/googlemock/gtest/libgtest_main.a
EXTENSION/AudioPlayer/acsdkAudioPlayer/test/AudioPlayerTest: ThirdParty/googletest-release-1.8.0/googlemock/gtest/libgtest.a
EXTENSION/AudioPlayer/acsdkAudioPlayer/test/AudioPlayerTest: EXTENSION/AudioPlayer/acsdkAudioPlayer/test/CMakeFiles/AudioPlayerTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable AudioPlayerTest"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/AudioPlayer/acsdkAudioPlayer/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AudioPlayerTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
EXTENSION/AudioPlayer/acsdkAudioPlayer/test/CMakeFiles/AudioPlayerTest.dir/build: EXTENSION/AudioPlayer/acsdkAudioPlayer/test/AudioPlayerTest

.PHONY : EXTENSION/AudioPlayer/acsdkAudioPlayer/test/CMakeFiles/AudioPlayerTest.dir/build

EXTENSION/AudioPlayer/acsdkAudioPlayer/test/CMakeFiles/AudioPlayerTest.dir/clean:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/AudioPlayer/acsdkAudioPlayer/test && $(CMAKE_COMMAND) -P CMakeFiles/AudioPlayerTest.dir/cmake_clean.cmake
.PHONY : EXTENSION/AudioPlayer/acsdkAudioPlayer/test/CMakeFiles/AudioPlayerTest.dir/clean

EXTENSION/AudioPlayer/acsdkAudioPlayer/test/CMakeFiles/AudioPlayerTest.dir/depend:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/AudioPlayer/acsdkAudioPlayer/test /home/pi/SmartMusicDisplay/sdk-folder/sdk-build /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/AudioPlayer/acsdkAudioPlayer/test /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/AudioPlayer/acsdkAudioPlayer/test/CMakeFiles/AudioPlayerTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : EXTENSION/AudioPlayer/acsdkAudioPlayer/test/CMakeFiles/AudioPlayerTest.dir/depend

