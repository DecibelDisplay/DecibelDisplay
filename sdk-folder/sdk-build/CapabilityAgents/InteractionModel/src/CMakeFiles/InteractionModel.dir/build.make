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
include CapabilityAgents/InteractionModel/src/CMakeFiles/InteractionModel.dir/depend.make

# Include the progress variables for this target.
include CapabilityAgents/InteractionModel/src/CMakeFiles/InteractionModel.dir/progress.make

# Include the compile flags for this target's objects.
include CapabilityAgents/InteractionModel/src/CMakeFiles/InteractionModel.dir/flags.make

CapabilityAgents/InteractionModel/src/CMakeFiles/InteractionModel.dir/InteractionModelCapabilityAgent.cpp.o: CapabilityAgents/InteractionModel/src/CMakeFiles/InteractionModel.dir/flags.make
CapabilityAgents/InteractionModel/src/CMakeFiles/InteractionModel.dir/InteractionModelCapabilityAgent.cpp.o: /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/CapabilityAgents/InteractionModel/src/InteractionModelCapabilityAgent.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CapabilityAgents/InteractionModel/src/CMakeFiles/InteractionModel.dir/InteractionModelCapabilityAgent.cpp.o"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/InteractionModel/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/InteractionModel.dir/InteractionModelCapabilityAgent.cpp.o -c /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/CapabilityAgents/InteractionModel/src/InteractionModelCapabilityAgent.cpp

CapabilityAgents/InteractionModel/src/CMakeFiles/InteractionModel.dir/InteractionModelCapabilityAgent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/InteractionModel.dir/InteractionModelCapabilityAgent.cpp.i"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/InteractionModel/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/CapabilityAgents/InteractionModel/src/InteractionModelCapabilityAgent.cpp > CMakeFiles/InteractionModel.dir/InteractionModelCapabilityAgent.cpp.i

CapabilityAgents/InteractionModel/src/CMakeFiles/InteractionModel.dir/InteractionModelCapabilityAgent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/InteractionModel.dir/InteractionModelCapabilityAgent.cpp.s"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/InteractionModel/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/CapabilityAgents/InteractionModel/src/InteractionModelCapabilityAgent.cpp -o CMakeFiles/InteractionModel.dir/InteractionModelCapabilityAgent.cpp.s

# Object files for target InteractionModel
InteractionModel_OBJECTS = \
"CMakeFiles/InteractionModel.dir/InteractionModelCapabilityAgent.cpp.o"

# External object files for target InteractionModel
InteractionModel_EXTERNAL_OBJECTS =

CapabilityAgents/InteractionModel/src/libInteractionModel.so: CapabilityAgents/InteractionModel/src/CMakeFiles/InteractionModel.dir/InteractionModelCapabilityAgent.cpp.o
CapabilityAgents/InteractionModel/src/libInteractionModel.so: CapabilityAgents/InteractionModel/src/CMakeFiles/InteractionModel.dir/build.make
CapabilityAgents/InteractionModel/src/libInteractionModel.so: AVSCommon/libAVSCommon.so
CapabilityAgents/InteractionModel/src/libInteractionModel.so: /usr/lib/arm-linux-gnueabihf/libcurl.so
CapabilityAgents/InteractionModel/src/libInteractionModel.so: CapabilityAgents/InteractionModel/src/CMakeFiles/InteractionModel.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libInteractionModel.so"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/InteractionModel/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/InteractionModel.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CapabilityAgents/InteractionModel/src/CMakeFiles/InteractionModel.dir/build: CapabilityAgents/InteractionModel/src/libInteractionModel.so

.PHONY : CapabilityAgents/InteractionModel/src/CMakeFiles/InteractionModel.dir/build

CapabilityAgents/InteractionModel/src/CMakeFiles/InteractionModel.dir/clean:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/InteractionModel/src && $(CMAKE_COMMAND) -P CMakeFiles/InteractionModel.dir/cmake_clean.cmake
.PHONY : CapabilityAgents/InteractionModel/src/CMakeFiles/InteractionModel.dir/clean

CapabilityAgents/InteractionModel/src/CMakeFiles/InteractionModel.dir/depend:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/CapabilityAgents/InteractionModel/src /home/pi/SmartMusicDisplay/sdk-folder/sdk-build /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/InteractionModel/src /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/InteractionModel/src/CMakeFiles/InteractionModel.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CapabilityAgents/InteractionModel/src/CMakeFiles/InteractionModel.dir/depend

