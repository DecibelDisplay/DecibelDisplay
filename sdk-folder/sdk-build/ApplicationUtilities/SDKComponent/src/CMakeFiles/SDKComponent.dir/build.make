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
include ApplicationUtilities/SDKComponent/src/CMakeFiles/SDKComponent.dir/depend.make

# Include the progress variables for this target.
include ApplicationUtilities/SDKComponent/src/CMakeFiles/SDKComponent.dir/progress.make

# Include the compile flags for this target's objects.
include ApplicationUtilities/SDKComponent/src/CMakeFiles/SDKComponent.dir/flags.make

ApplicationUtilities/SDKComponent/src/CMakeFiles/SDKComponent.dir/SDKComponent.cpp.o: ApplicationUtilities/SDKComponent/src/CMakeFiles/SDKComponent.dir/flags.make
ApplicationUtilities/SDKComponent/src/CMakeFiles/SDKComponent.dir/SDKComponent.cpp.o: /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/ApplicationUtilities/SDKComponent/src/SDKComponent.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ApplicationUtilities/SDKComponent/src/CMakeFiles/SDKComponent.dir/SDKComponent.cpp.o"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/ApplicationUtilities/SDKComponent/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SDKComponent.dir/SDKComponent.cpp.o -c /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/ApplicationUtilities/SDKComponent/src/SDKComponent.cpp

ApplicationUtilities/SDKComponent/src/CMakeFiles/SDKComponent.dir/SDKComponent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SDKComponent.dir/SDKComponent.cpp.i"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/ApplicationUtilities/SDKComponent/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/ApplicationUtilities/SDKComponent/src/SDKComponent.cpp > CMakeFiles/SDKComponent.dir/SDKComponent.cpp.i

ApplicationUtilities/SDKComponent/src/CMakeFiles/SDKComponent.dir/SDKComponent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SDKComponent.dir/SDKComponent.cpp.s"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/ApplicationUtilities/SDKComponent/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/ApplicationUtilities/SDKComponent/src/SDKComponent.cpp -o CMakeFiles/SDKComponent.dir/SDKComponent.cpp.s

# Object files for target SDKComponent
SDKComponent_OBJECTS = \
"CMakeFiles/SDKComponent.dir/SDKComponent.cpp.o"

# External object files for target SDKComponent
SDKComponent_EXTERNAL_OBJECTS =

ApplicationUtilities/SDKComponent/src/libSDKComponent.so: ApplicationUtilities/SDKComponent/src/CMakeFiles/SDKComponent.dir/SDKComponent.cpp.o
ApplicationUtilities/SDKComponent/src/libSDKComponent.so: ApplicationUtilities/SDKComponent/src/CMakeFiles/SDKComponent.dir/build.make
ApplicationUtilities/SDKComponent/src/libSDKComponent.so: AVSCommon/libAVSCommon.so
ApplicationUtilities/SDKComponent/src/libSDKComponent.so: /usr/lib/arm-linux-gnueabihf/libcurl.so
ApplicationUtilities/SDKComponent/src/libSDKComponent.so: ApplicationUtilities/SDKComponent/src/CMakeFiles/SDKComponent.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libSDKComponent.so"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/ApplicationUtilities/SDKComponent/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SDKComponent.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ApplicationUtilities/SDKComponent/src/CMakeFiles/SDKComponent.dir/build: ApplicationUtilities/SDKComponent/src/libSDKComponent.so

.PHONY : ApplicationUtilities/SDKComponent/src/CMakeFiles/SDKComponent.dir/build

ApplicationUtilities/SDKComponent/src/CMakeFiles/SDKComponent.dir/clean:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/ApplicationUtilities/SDKComponent/src && $(CMAKE_COMMAND) -P CMakeFiles/SDKComponent.dir/cmake_clean.cmake
.PHONY : ApplicationUtilities/SDKComponent/src/CMakeFiles/SDKComponent.dir/clean

ApplicationUtilities/SDKComponent/src/CMakeFiles/SDKComponent.dir/depend:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/ApplicationUtilities/SDKComponent/src /home/pi/SmartMusicDisplay/sdk-folder/sdk-build /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/ApplicationUtilities/SDKComponent/src /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/ApplicationUtilities/SDKComponent/src/CMakeFiles/SDKComponent.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ApplicationUtilities/SDKComponent/src/CMakeFiles/SDKComponent.dir/depend

