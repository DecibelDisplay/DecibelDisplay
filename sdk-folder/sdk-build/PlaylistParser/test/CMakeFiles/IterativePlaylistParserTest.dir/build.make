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
include PlaylistParser/test/CMakeFiles/IterativePlaylistParserTest.dir/depend.make

# Include the progress variables for this target.
include PlaylistParser/test/CMakeFiles/IterativePlaylistParserTest.dir/progress.make

# Include the compile flags for this target's objects.
include PlaylistParser/test/CMakeFiles/IterativePlaylistParserTest.dir/flags.make

PlaylistParser/test/CMakeFiles/IterativePlaylistParserTest.dir/IterativePlaylistParserTest.cpp.o: PlaylistParser/test/CMakeFiles/IterativePlaylistParserTest.dir/flags.make
PlaylistParser/test/CMakeFiles/IterativePlaylistParserTest.dir/IterativePlaylistParserTest.cpp.o: /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/PlaylistParser/test/IterativePlaylistParserTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object PlaylistParser/test/CMakeFiles/IterativePlaylistParserTest.dir/IterativePlaylistParserTest.cpp.o"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/PlaylistParser/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/IterativePlaylistParserTest.dir/IterativePlaylistParserTest.cpp.o -c /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/PlaylistParser/test/IterativePlaylistParserTest.cpp

PlaylistParser/test/CMakeFiles/IterativePlaylistParserTest.dir/IterativePlaylistParserTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/IterativePlaylistParserTest.dir/IterativePlaylistParserTest.cpp.i"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/PlaylistParser/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/PlaylistParser/test/IterativePlaylistParserTest.cpp > CMakeFiles/IterativePlaylistParserTest.dir/IterativePlaylistParserTest.cpp.i

PlaylistParser/test/CMakeFiles/IterativePlaylistParserTest.dir/IterativePlaylistParserTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/IterativePlaylistParserTest.dir/IterativePlaylistParserTest.cpp.s"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/PlaylistParser/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/PlaylistParser/test/IterativePlaylistParserTest.cpp -o CMakeFiles/IterativePlaylistParserTest.dir/IterativePlaylistParserTest.cpp.s

# Object files for target IterativePlaylistParserTest
IterativePlaylistParserTest_OBJECTS = \
"CMakeFiles/IterativePlaylistParserTest.dir/IterativePlaylistParserTest.cpp.o"

# External object files for target IterativePlaylistParserTest
IterativePlaylistParserTest_EXTERNAL_OBJECTS =

PlaylistParser/test/IterativePlaylistParserTest: PlaylistParser/test/CMakeFiles/IterativePlaylistParserTest.dir/IterativePlaylistParserTest.cpp.o
PlaylistParser/test/IterativePlaylistParserTest: PlaylistParser/test/CMakeFiles/IterativePlaylistParserTest.dir/build.make
PlaylistParser/test/IterativePlaylistParserTest: PlaylistParser/src/libPlaylistParser.so
PlaylistParser/test/IterativePlaylistParserTest: ThirdParty/googletest-release-1.8.0/googlemock/libgmock_main.a
PlaylistParser/test/IterativePlaylistParserTest: AVSCommon/libAVSCommon.so
PlaylistParser/test/IterativePlaylistParserTest: /usr/lib/arm-linux-gnueabihf/libcurl.so
PlaylistParser/test/IterativePlaylistParserTest: PlaylistParser/test/CMakeFiles/IterativePlaylistParserTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable IterativePlaylistParserTest"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/PlaylistParser/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/IterativePlaylistParserTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
PlaylistParser/test/CMakeFiles/IterativePlaylistParserTest.dir/build: PlaylistParser/test/IterativePlaylistParserTest

.PHONY : PlaylistParser/test/CMakeFiles/IterativePlaylistParserTest.dir/build

PlaylistParser/test/CMakeFiles/IterativePlaylistParserTest.dir/clean:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/PlaylistParser/test && $(CMAKE_COMMAND) -P CMakeFiles/IterativePlaylistParserTest.dir/cmake_clean.cmake
.PHONY : PlaylistParser/test/CMakeFiles/IterativePlaylistParserTest.dir/clean

PlaylistParser/test/CMakeFiles/IterativePlaylistParserTest.dir/depend:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/PlaylistParser/test /home/pi/SmartMusicDisplay/sdk-folder/sdk-build /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/PlaylistParser/test /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/PlaylistParser/test/CMakeFiles/IterativePlaylistParserTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : PlaylistParser/test/CMakeFiles/IterativePlaylistParserTest.dir/depend

