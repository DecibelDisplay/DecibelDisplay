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
include core/acsdkCore/src/CMakeFiles/acsdkCore.dir/depend.make

# Include the progress variables for this target.
include core/acsdkCore/src/CMakeFiles/acsdkCore.dir/progress.make

# Include the compile flags for this target's objects.
include core/acsdkCore/src/CMakeFiles/acsdkCore.dir/flags.make

core/acsdkCore/src/CMakeFiles/acsdkCore.dir/CoreComponent.cpp.o: core/acsdkCore/src/CMakeFiles/acsdkCore.dir/flags.make
core/acsdkCore/src/CMakeFiles/acsdkCore.dir/CoreComponent.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/core/acsdkCore/src/CoreComponent.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object core/acsdkCore/src/CMakeFiles/acsdkCore.dir/CoreComponent.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/core/acsdkCore/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/acsdkCore.dir/CoreComponent.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/core/acsdkCore/src/CoreComponent.cpp

core/acsdkCore/src/CMakeFiles/acsdkCore.dir/CoreComponent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/acsdkCore.dir/CoreComponent.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/core/acsdkCore/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/core/acsdkCore/src/CoreComponent.cpp > CMakeFiles/acsdkCore.dir/CoreComponent.cpp.i

core/acsdkCore/src/CMakeFiles/acsdkCore.dir/CoreComponent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/acsdkCore.dir/CoreComponent.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/core/acsdkCore/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/core/acsdkCore/src/CoreComponent.cpp -o CMakeFiles/acsdkCore.dir/CoreComponent.cpp.s

# Object files for target acsdkCore
acsdkCore_OBJECTS = \
"CMakeFiles/acsdkCore.dir/CoreComponent.cpp.o"

# External object files for target acsdkCore
acsdkCore_EXTERNAL_OBJECTS =

core/acsdkCore/src/libacsdkCore.so: core/acsdkCore/src/CMakeFiles/acsdkCore.dir/CoreComponent.cpp.o
core/acsdkCore/src/libacsdkCore.so: core/acsdkCore/src/CMakeFiles/acsdkCore.dir/build.make
core/acsdkCore/src/libacsdkCore.so: core/acsdkPostConnectOperationProviderRegistrar/src/libacsdkPostConnectOperationProviderRegistrar.so
core/acsdkCore/src/libacsdkCore.so: shared/acsdkShared/src/libacsdkShared.so
core/acsdkCore/src/libacsdkCore.so: AFML/src/libAFML.so
core/acsdkCore/src/libacsdkCore.so: AVSGatewayManager/src/libAVSGatewayManager.so
core/acsdkCore/src/libacsdkCore.so: CapabilitiesDelegate/src/libCapabilitiesDelegate.so
core/acsdkCore/src/libacsdkCore.so: ContextManager/src/libContextManager.so
core/acsdkCore/src/libacsdkCore.so: RegistrationManager/src/libRegistrationManager.so
core/acsdkCore/src/libacsdkCore.so: Storage/SQLiteStorage/src/libSQLiteStorage.so
core/acsdkCore/src/libacsdkCore.so: SynchronizeStateSender/src/libSynchronizeStateSender.so
core/acsdkCore/src/libacsdkCore.so: shared/acsdkStartupManager/src/libacsdkStartupManager.so
core/acsdkCore/src/libacsdkCore.so: InterruptModel/src/libInterruptModel.so
core/acsdkCore/src/libacsdkCore.so: shared/acsdkShutdownManager/src/libacsdkShutdownManager.so
core/acsdkCore/src/libacsdkCore.so: Endpoints/src/libEndpoints.so
core/acsdkCore/src/libacsdkCore.so: CapabilityAgents/Alexa/src/libAlexa.so
core/acsdkCore/src/libacsdkCore.so: shared/acsdkManufactory/src/libacsdkManufactory.so
core/acsdkCore/src/libacsdkCore.so: AVSCommon/libAVSCommon.so
core/acsdkCore/src/libacsdkCore.so: /usr/lib/arm-linux-gnueabihf/libcurl.so
core/acsdkCore/src/libacsdkCore.so: core/acsdkCore/src/CMakeFiles/acsdkCore.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libacsdkCore.so"
	cd /home/pi/sdk-folder/sdk-build/core/acsdkCore/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/acsdkCore.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
core/acsdkCore/src/CMakeFiles/acsdkCore.dir/build: core/acsdkCore/src/libacsdkCore.so

.PHONY : core/acsdkCore/src/CMakeFiles/acsdkCore.dir/build

core/acsdkCore/src/CMakeFiles/acsdkCore.dir/clean:
	cd /home/pi/sdk-folder/sdk-build/core/acsdkCore/src && $(CMAKE_COMMAND) -P CMakeFiles/acsdkCore.dir/cmake_clean.cmake
.PHONY : core/acsdkCore/src/CMakeFiles/acsdkCore.dir/clean

core/acsdkCore/src/CMakeFiles/acsdkCore.dir/depend:
	cd /home/pi/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/sdk-folder/sdk-source/avs-device-sdk /home/pi/sdk-folder/sdk-source/avs-device-sdk/core/acsdkCore/src /home/pi/sdk-folder/sdk-build /home/pi/sdk-folder/sdk-build/core/acsdkCore/src /home/pi/sdk-folder/sdk-build/core/acsdkCore/src/CMakeFiles/acsdkCore.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : core/acsdkCore/src/CMakeFiles/acsdkCore.dir/depend

