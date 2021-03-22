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
include CapabilityAgents/SoftwareComponentReporter/src/CMakeFiles/SoftwareComponentReporter.dir/depend.make

# Include the progress variables for this target.
include CapabilityAgents/SoftwareComponentReporter/src/CMakeFiles/SoftwareComponentReporter.dir/progress.make

# Include the compile flags for this target's objects.
include CapabilityAgents/SoftwareComponentReporter/src/CMakeFiles/SoftwareComponentReporter.dir/flags.make

CapabilityAgents/SoftwareComponentReporter/src/CMakeFiles/SoftwareComponentReporter.dir/SoftwareComponentReporterCapabilityAgent.cpp.o: CapabilityAgents/SoftwareComponentReporter/src/CMakeFiles/SoftwareComponentReporter.dir/flags.make
CapabilityAgents/SoftwareComponentReporter/src/CMakeFiles/SoftwareComponentReporter.dir/SoftwareComponentReporterCapabilityAgent.cpp.o: /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/CapabilityAgents/SoftwareComponentReporter/src/SoftwareComponentReporterCapabilityAgent.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CapabilityAgents/SoftwareComponentReporter/src/CMakeFiles/SoftwareComponentReporter.dir/SoftwareComponentReporterCapabilityAgent.cpp.o"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/SoftwareComponentReporter/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SoftwareComponentReporter.dir/SoftwareComponentReporterCapabilityAgent.cpp.o -c /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/CapabilityAgents/SoftwareComponentReporter/src/SoftwareComponentReporterCapabilityAgent.cpp

CapabilityAgents/SoftwareComponentReporter/src/CMakeFiles/SoftwareComponentReporter.dir/SoftwareComponentReporterCapabilityAgent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SoftwareComponentReporter.dir/SoftwareComponentReporterCapabilityAgent.cpp.i"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/SoftwareComponentReporter/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/CapabilityAgents/SoftwareComponentReporter/src/SoftwareComponentReporterCapabilityAgent.cpp > CMakeFiles/SoftwareComponentReporter.dir/SoftwareComponentReporterCapabilityAgent.cpp.i

CapabilityAgents/SoftwareComponentReporter/src/CMakeFiles/SoftwareComponentReporter.dir/SoftwareComponentReporterCapabilityAgent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SoftwareComponentReporter.dir/SoftwareComponentReporterCapabilityAgent.cpp.s"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/SoftwareComponentReporter/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/CapabilityAgents/SoftwareComponentReporter/src/SoftwareComponentReporterCapabilityAgent.cpp -o CMakeFiles/SoftwareComponentReporter.dir/SoftwareComponentReporterCapabilityAgent.cpp.s

# Object files for target SoftwareComponentReporter
SoftwareComponentReporter_OBJECTS = \
"CMakeFiles/SoftwareComponentReporter.dir/SoftwareComponentReporterCapabilityAgent.cpp.o"

# External object files for target SoftwareComponentReporter
SoftwareComponentReporter_EXTERNAL_OBJECTS =

CapabilityAgents/SoftwareComponentReporter/src/libSoftwareComponentReporter.so: CapabilityAgents/SoftwareComponentReporter/src/CMakeFiles/SoftwareComponentReporter.dir/SoftwareComponentReporterCapabilityAgent.cpp.o
CapabilityAgents/SoftwareComponentReporter/src/libSoftwareComponentReporter.so: CapabilityAgents/SoftwareComponentReporter/src/CMakeFiles/SoftwareComponentReporter.dir/build.make
CapabilityAgents/SoftwareComponentReporter/src/libSoftwareComponentReporter.so: AVSCommon/libAVSCommon.so
CapabilityAgents/SoftwareComponentReporter/src/libSoftwareComponentReporter.so: /usr/lib/arm-linux-gnueabihf/libcurl.so
CapabilityAgents/SoftwareComponentReporter/src/libSoftwareComponentReporter.so: CapabilityAgents/SoftwareComponentReporter/src/CMakeFiles/SoftwareComponentReporter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libSoftwareComponentReporter.so"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/SoftwareComponentReporter/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SoftwareComponentReporter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CapabilityAgents/SoftwareComponentReporter/src/CMakeFiles/SoftwareComponentReporter.dir/build: CapabilityAgents/SoftwareComponentReporter/src/libSoftwareComponentReporter.so

.PHONY : CapabilityAgents/SoftwareComponentReporter/src/CMakeFiles/SoftwareComponentReporter.dir/build

CapabilityAgents/SoftwareComponentReporter/src/CMakeFiles/SoftwareComponentReporter.dir/clean:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/SoftwareComponentReporter/src && $(CMAKE_COMMAND) -P CMakeFiles/SoftwareComponentReporter.dir/cmake_clean.cmake
.PHONY : CapabilityAgents/SoftwareComponentReporter/src/CMakeFiles/SoftwareComponentReporter.dir/clean

CapabilityAgents/SoftwareComponentReporter/src/CMakeFiles/SoftwareComponentReporter.dir/depend:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/CapabilityAgents/SoftwareComponentReporter/src /home/pi/SmartMusicDisplay/sdk-folder/sdk-build /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/SoftwareComponentReporter/src /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/SoftwareComponentReporter/src/CMakeFiles/SoftwareComponentReporter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CapabilityAgents/SoftwareComponentReporter/src/CMakeFiles/SoftwareComponentReporter.dir/depend

