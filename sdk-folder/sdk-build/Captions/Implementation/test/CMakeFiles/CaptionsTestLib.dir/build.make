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
include Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/depend.make

# Include the progress variables for this target.
include Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/progress.make

# Include the compile flags for this target's objects.
include Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/flags.make

Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/CaptionManagerTest.cpp.o: Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/flags.make
Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/CaptionManagerTest.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/Captions/Implementation/test/CaptionManagerTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/CaptionManagerTest.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/Captions/Implementation/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CaptionsTestLib.dir/CaptionManagerTest.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/Captions/Implementation/test/CaptionManagerTest.cpp

Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/CaptionManagerTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CaptionsTestLib.dir/CaptionManagerTest.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/Captions/Implementation/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/Captions/Implementation/test/CaptionManagerTest.cpp > CMakeFiles/CaptionsTestLib.dir/CaptionManagerTest.cpp.i

Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/CaptionManagerTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CaptionsTestLib.dir/CaptionManagerTest.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/Captions/Implementation/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/Captions/Implementation/test/CaptionManagerTest.cpp -o CMakeFiles/CaptionsTestLib.dir/CaptionManagerTest.cpp.s

Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/CaptionTimingAdapterTest.cpp.o: Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/flags.make
Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/CaptionTimingAdapterTest.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/Captions/Implementation/test/CaptionTimingAdapterTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/CaptionTimingAdapterTest.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/Captions/Implementation/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CaptionsTestLib.dir/CaptionTimingAdapterTest.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/Captions/Implementation/test/CaptionTimingAdapterTest.cpp

Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/CaptionTimingAdapterTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CaptionsTestLib.dir/CaptionTimingAdapterTest.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/Captions/Implementation/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/Captions/Implementation/test/CaptionTimingAdapterTest.cpp > CMakeFiles/CaptionsTestLib.dir/CaptionTimingAdapterTest.cpp.i

Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/CaptionTimingAdapterTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CaptionsTestLib.dir/CaptionTimingAdapterTest.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/Captions/Implementation/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/Captions/Implementation/test/CaptionTimingAdapterTest.cpp -o CMakeFiles/CaptionsTestLib.dir/CaptionTimingAdapterTest.cpp.s

# Object files for target CaptionsTestLib
CaptionsTestLib_OBJECTS = \
"CMakeFiles/CaptionsTestLib.dir/CaptionManagerTest.cpp.o" \
"CMakeFiles/CaptionsTestLib.dir/CaptionTimingAdapterTest.cpp.o"

# External object files for target CaptionsTestLib
CaptionsTestLib_EXTERNAL_OBJECTS =

Captions/Implementation/test/libCaptionsTestLib.a: Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/CaptionManagerTest.cpp.o
Captions/Implementation/test/libCaptionsTestLib.a: Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/CaptionTimingAdapterTest.cpp.o
Captions/Implementation/test/libCaptionsTestLib.a: Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/build.make
Captions/Implementation/test/libCaptionsTestLib.a: Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libCaptionsTestLib.a"
	cd /home/pi/sdk-folder/sdk-build/Captions/Implementation/test && $(CMAKE_COMMAND) -P CMakeFiles/CaptionsTestLib.dir/cmake_clean_target.cmake
	cd /home/pi/sdk-folder/sdk-build/Captions/Implementation/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CaptionsTestLib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/build: Captions/Implementation/test/libCaptionsTestLib.a

.PHONY : Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/build

Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/clean:
	cd /home/pi/sdk-folder/sdk-build/Captions/Implementation/test && $(CMAKE_COMMAND) -P CMakeFiles/CaptionsTestLib.dir/cmake_clean.cmake
.PHONY : Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/clean

Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/depend:
	cd /home/pi/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/sdk-folder/sdk-source/avs-device-sdk /home/pi/sdk-folder/sdk-source/avs-device-sdk/Captions/Implementation/test /home/pi/sdk-folder/sdk-build /home/pi/sdk-folder/sdk-build/Captions/Implementation/test /home/pi/sdk-folder/sdk-build/Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Captions/Implementation/test/CMakeFiles/CaptionsTestLib.dir/depend

