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
include applications/acsdkGstreamerApplicationAudioPipelineFactory/src/CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/depend.make

# Include the progress variables for this target.
include applications/acsdkGstreamerApplicationAudioPipelineFactory/src/CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/progress.make

# Include the compile flags for this target's objects.
include applications/acsdkGstreamerApplicationAudioPipelineFactory/src/CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/flags.make

applications/acsdkGstreamerApplicationAudioPipelineFactory/src/CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/GstreamerApplicationAudioPipelineFactory.cpp.o: applications/acsdkGstreamerApplicationAudioPipelineFactory/src/CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/flags.make
applications/acsdkGstreamerApplicationAudioPipelineFactory/src/CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/GstreamerApplicationAudioPipelineFactory.cpp.o: /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/applications/acsdkGstreamerApplicationAudioPipelineFactory/src/GstreamerApplicationAudioPipelineFactory.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object applications/acsdkGstreamerApplicationAudioPipelineFactory/src/CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/GstreamerApplicationAudioPipelineFactory.cpp.o"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/applications/acsdkGstreamerApplicationAudioPipelineFactory/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/GstreamerApplicationAudioPipelineFactory.cpp.o -c /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/applications/acsdkGstreamerApplicationAudioPipelineFactory/src/GstreamerApplicationAudioPipelineFactory.cpp

applications/acsdkGstreamerApplicationAudioPipelineFactory/src/CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/GstreamerApplicationAudioPipelineFactory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/GstreamerApplicationAudioPipelineFactory.cpp.i"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/applications/acsdkGstreamerApplicationAudioPipelineFactory/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/applications/acsdkGstreamerApplicationAudioPipelineFactory/src/GstreamerApplicationAudioPipelineFactory.cpp > CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/GstreamerApplicationAudioPipelineFactory.cpp.i

applications/acsdkGstreamerApplicationAudioPipelineFactory/src/CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/GstreamerApplicationAudioPipelineFactory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/GstreamerApplicationAudioPipelineFactory.cpp.s"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/applications/acsdkGstreamerApplicationAudioPipelineFactory/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/applications/acsdkGstreamerApplicationAudioPipelineFactory/src/GstreamerApplicationAudioPipelineFactory.cpp -o CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/GstreamerApplicationAudioPipelineFactory.cpp.s

# Object files for target acsdkGstreamerApplicationAudioPipelineFactory
acsdkGstreamerApplicationAudioPipelineFactory_OBJECTS = \
"CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/GstreamerApplicationAudioPipelineFactory.cpp.o"

# External object files for target acsdkGstreamerApplicationAudioPipelineFactory
acsdkGstreamerApplicationAudioPipelineFactory_EXTERNAL_OBJECTS =

applications/acsdkGstreamerApplicationAudioPipelineFactory/src/libacsdkGstreamerApplicationAudioPipelineFactory.so: applications/acsdkGstreamerApplicationAudioPipelineFactory/src/CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/GstreamerApplicationAudioPipelineFactory.cpp.o
applications/acsdkGstreamerApplicationAudioPipelineFactory/src/libacsdkGstreamerApplicationAudioPipelineFactory.so: applications/acsdkGstreamerApplicationAudioPipelineFactory/src/CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/build.make
applications/acsdkGstreamerApplicationAudioPipelineFactory/src/libacsdkGstreamerApplicationAudioPipelineFactory.so: Captions/Interface/src/libCaptions.so
applications/acsdkGstreamerApplicationAudioPipelineFactory/src/libacsdkGstreamerApplicationAudioPipelineFactory.so: MediaPlayer/GStreamerMediaPlayer/src/libMediaPlayer.so
applications/acsdkGstreamerApplicationAudioPipelineFactory/src/libacsdkGstreamerApplicationAudioPipelineFactory.so: PlaylistParser/src/libPlaylistParser.so
applications/acsdkGstreamerApplicationAudioPipelineFactory/src/libacsdkGstreamerApplicationAudioPipelineFactory.so: AVSCommon/libAVSCommon.so
applications/acsdkGstreamerApplicationAudioPipelineFactory/src/libacsdkGstreamerApplicationAudioPipelineFactory.so: /usr/lib/arm-linux-gnueabihf/libcurl.so
applications/acsdkGstreamerApplicationAudioPipelineFactory/src/libacsdkGstreamerApplicationAudioPipelineFactory.so: applications/acsdkGstreamerApplicationAudioPipelineFactory/src/CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libacsdkGstreamerApplicationAudioPipelineFactory.so"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/applications/acsdkGstreamerApplicationAudioPipelineFactory/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
applications/acsdkGstreamerApplicationAudioPipelineFactory/src/CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/build: applications/acsdkGstreamerApplicationAudioPipelineFactory/src/libacsdkGstreamerApplicationAudioPipelineFactory.so

.PHONY : applications/acsdkGstreamerApplicationAudioPipelineFactory/src/CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/build

applications/acsdkGstreamerApplicationAudioPipelineFactory/src/CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/clean:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/applications/acsdkGstreamerApplicationAudioPipelineFactory/src && $(CMAKE_COMMAND) -P CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/cmake_clean.cmake
.PHONY : applications/acsdkGstreamerApplicationAudioPipelineFactory/src/CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/clean

applications/acsdkGstreamerApplicationAudioPipelineFactory/src/CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/depend:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/applications/acsdkGstreamerApplicationAudioPipelineFactory/src /home/pi/SmartMusicDisplay/sdk-folder/sdk-build /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/applications/acsdkGstreamerApplicationAudioPipelineFactory/src /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/applications/acsdkGstreamerApplicationAudioPipelineFactory/src/CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : applications/acsdkGstreamerApplicationAudioPipelineFactory/src/CMakeFiles/acsdkGstreamerApplicationAudioPipelineFactory.dir/depend

