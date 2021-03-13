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
include EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/depend.make

# Include the progress variables for this target.
include EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/progress.make

# Include the compile flags for this target's objects.
include EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/flags.make

EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/AudioPlayer.cpp.o: EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/flags.make
EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/AudioPlayer.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/AudioPlayer/acsdkAudioPlayer/src/AudioPlayer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/AudioPlayer.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/AudioPlayer/acsdkAudioPlayer/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/acsdkAudioPlayer.dir/AudioPlayer.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/AudioPlayer/acsdkAudioPlayer/src/AudioPlayer.cpp

EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/AudioPlayer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/acsdkAudioPlayer.dir/AudioPlayer.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/AudioPlayer/acsdkAudioPlayer/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/AudioPlayer/acsdkAudioPlayer/src/AudioPlayer.cpp > CMakeFiles/acsdkAudioPlayer.dir/AudioPlayer.cpp.i

EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/AudioPlayer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/acsdkAudioPlayer.dir/AudioPlayer.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/AudioPlayer/acsdkAudioPlayer/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/AudioPlayer/acsdkAudioPlayer/src/AudioPlayer.cpp -o CMakeFiles/acsdkAudioPlayer.dir/AudioPlayer.cpp.s

EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/AudioPlayerComponent.cpp.o: EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/flags.make
EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/AudioPlayerComponent.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/AudioPlayer/acsdkAudioPlayer/src/AudioPlayerComponent.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/AudioPlayerComponent.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/AudioPlayer/acsdkAudioPlayer/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/acsdkAudioPlayer.dir/AudioPlayerComponent.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/AudioPlayer/acsdkAudioPlayer/src/AudioPlayerComponent.cpp

EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/AudioPlayerComponent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/acsdkAudioPlayer.dir/AudioPlayerComponent.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/AudioPlayer/acsdkAudioPlayer/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/AudioPlayer/acsdkAudioPlayer/src/AudioPlayerComponent.cpp > CMakeFiles/acsdkAudioPlayer.dir/AudioPlayerComponent.cpp.i

EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/AudioPlayerComponent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/acsdkAudioPlayer.dir/AudioPlayerComponent.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/AudioPlayer/acsdkAudioPlayer/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/AudioPlayer/acsdkAudioPlayer/src/AudioPlayerComponent.cpp -o CMakeFiles/acsdkAudioPlayer.dir/AudioPlayerComponent.cpp.s

EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/ProgressTimer.cpp.o: EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/flags.make
EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/ProgressTimer.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/AudioPlayer/acsdkAudioPlayer/src/ProgressTimer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/ProgressTimer.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/AudioPlayer/acsdkAudioPlayer/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/acsdkAudioPlayer.dir/ProgressTimer.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/AudioPlayer/acsdkAudioPlayer/src/ProgressTimer.cpp

EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/ProgressTimer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/acsdkAudioPlayer.dir/ProgressTimer.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/AudioPlayer/acsdkAudioPlayer/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/AudioPlayer/acsdkAudioPlayer/src/ProgressTimer.cpp > CMakeFiles/acsdkAudioPlayer.dir/ProgressTimer.cpp.i

EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/ProgressTimer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/acsdkAudioPlayer.dir/ProgressTimer.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/AudioPlayer/acsdkAudioPlayer/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/AudioPlayer/acsdkAudioPlayer/src/ProgressTimer.cpp -o CMakeFiles/acsdkAudioPlayer.dir/ProgressTimer.cpp.s

# Object files for target acsdkAudioPlayer
acsdkAudioPlayer_OBJECTS = \
"CMakeFiles/acsdkAudioPlayer.dir/AudioPlayer.cpp.o" \
"CMakeFiles/acsdkAudioPlayer.dir/AudioPlayerComponent.cpp.o" \
"CMakeFiles/acsdkAudioPlayer.dir/ProgressTimer.cpp.o"

# External object files for target acsdkAudioPlayer
acsdkAudioPlayer_EXTERNAL_OBJECTS =

EXTENSION/AudioPlayer/acsdkAudioPlayer/src/libacsdkAudioPlayer.so: EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/AudioPlayer.cpp.o
EXTENSION/AudioPlayer/acsdkAudioPlayer/src/libacsdkAudioPlayer.so: EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/AudioPlayerComponent.cpp.o
EXTENSION/AudioPlayer/acsdkAudioPlayer/src/libacsdkAudioPlayer.so: EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/ProgressTimer.cpp.o
EXTENSION/AudioPlayer/acsdkAudioPlayer/src/libacsdkAudioPlayer.so: EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/build.make
EXTENSION/AudioPlayer/acsdkAudioPlayer/src/libacsdkAudioPlayer.so: shared/acsdkManufactory/src/libacsdkManufactory.so
EXTENSION/AudioPlayer/acsdkAudioPlayer/src/libacsdkAudioPlayer.so: Captions/Interface/src/libCaptions.so
EXTENSION/AudioPlayer/acsdkAudioPlayer/src/libacsdkAudioPlayer.so: AVSCommon/libAVSCommon.so
EXTENSION/AudioPlayer/acsdkAudioPlayer/src/libacsdkAudioPlayer.so: /usr/lib/arm-linux-gnueabihf/libcurl.so
EXTENSION/AudioPlayer/acsdkAudioPlayer/src/libacsdkAudioPlayer.so: EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library libacsdkAudioPlayer.so"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/AudioPlayer/acsdkAudioPlayer/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/acsdkAudioPlayer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/build: EXTENSION/AudioPlayer/acsdkAudioPlayer/src/libacsdkAudioPlayer.so

.PHONY : EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/build

EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/clean:
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/AudioPlayer/acsdkAudioPlayer/src && $(CMAKE_COMMAND) -P CMakeFiles/acsdkAudioPlayer.dir/cmake_clean.cmake
.PHONY : EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/clean

EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/depend:
	cd /home/pi/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/sdk-folder/sdk-source/avs-device-sdk /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/AudioPlayer/acsdkAudioPlayer/src /home/pi/sdk-folder/sdk-build /home/pi/sdk-folder/sdk-build/EXTENSION/AudioPlayer/acsdkAudioPlayer/src /home/pi/sdk-folder/sdk-build/EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : EXTENSION/AudioPlayer/acsdkAudioPlayer/src/CMakeFiles/acsdkAudioPlayer.dir/depend

