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
include applications/acsdkCBLAuthorizationDelegate/src/CMakeFiles/acsdkCBLAuthorizationDelegate.dir/depend.make

# Include the progress variables for this target.
include applications/acsdkCBLAuthorizationDelegate/src/CMakeFiles/acsdkCBLAuthorizationDelegate.dir/progress.make

# Include the compile flags for this target's objects.
include applications/acsdkCBLAuthorizationDelegate/src/CMakeFiles/acsdkCBLAuthorizationDelegate.dir/flags.make

applications/acsdkCBLAuthorizationDelegate/src/CMakeFiles/acsdkCBLAuthorizationDelegate.dir/AuthorizationDelegateComponent.cpp.o: applications/acsdkCBLAuthorizationDelegate/src/CMakeFiles/acsdkCBLAuthorizationDelegate.dir/flags.make
applications/acsdkCBLAuthorizationDelegate/src/CMakeFiles/acsdkCBLAuthorizationDelegate.dir/AuthorizationDelegateComponent.cpp.o: /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/applications/acsdkCBLAuthorizationDelegate/src/AuthorizationDelegateComponent.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object applications/acsdkCBLAuthorizationDelegate/src/CMakeFiles/acsdkCBLAuthorizationDelegate.dir/AuthorizationDelegateComponent.cpp.o"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/applications/acsdkCBLAuthorizationDelegate/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/acsdkCBLAuthorizationDelegate.dir/AuthorizationDelegateComponent.cpp.o -c /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/applications/acsdkCBLAuthorizationDelegate/src/AuthorizationDelegateComponent.cpp

applications/acsdkCBLAuthorizationDelegate/src/CMakeFiles/acsdkCBLAuthorizationDelegate.dir/AuthorizationDelegateComponent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/acsdkCBLAuthorizationDelegate.dir/AuthorizationDelegateComponent.cpp.i"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/applications/acsdkCBLAuthorizationDelegate/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/applications/acsdkCBLAuthorizationDelegate/src/AuthorizationDelegateComponent.cpp > CMakeFiles/acsdkCBLAuthorizationDelegate.dir/AuthorizationDelegateComponent.cpp.i

applications/acsdkCBLAuthorizationDelegate/src/CMakeFiles/acsdkCBLAuthorizationDelegate.dir/AuthorizationDelegateComponent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/acsdkCBLAuthorizationDelegate.dir/AuthorizationDelegateComponent.cpp.s"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/applications/acsdkCBLAuthorizationDelegate/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/applications/acsdkCBLAuthorizationDelegate/src/AuthorizationDelegateComponent.cpp -o CMakeFiles/acsdkCBLAuthorizationDelegate.dir/AuthorizationDelegateComponent.cpp.s

# Object files for target acsdkCBLAuthorizationDelegate
acsdkCBLAuthorizationDelegate_OBJECTS = \
"CMakeFiles/acsdkCBLAuthorizationDelegate.dir/AuthorizationDelegateComponent.cpp.o"

# External object files for target acsdkCBLAuthorizationDelegate
acsdkCBLAuthorizationDelegate_EXTERNAL_OBJECTS =

applications/acsdkCBLAuthorizationDelegate/src/libacsdkCBLAuthorizationDelegate.so: applications/acsdkCBLAuthorizationDelegate/src/CMakeFiles/acsdkCBLAuthorizationDelegate.dir/AuthorizationDelegateComponent.cpp.o
applications/acsdkCBLAuthorizationDelegate/src/libacsdkCBLAuthorizationDelegate.so: applications/acsdkCBLAuthorizationDelegate/src/CMakeFiles/acsdkCBLAuthorizationDelegate.dir/build.make
applications/acsdkCBLAuthorizationDelegate/src/libacsdkCBLAuthorizationDelegate.so: shared/acsdkManufactory/src/libacsdkManufactory.so
applications/acsdkCBLAuthorizationDelegate/src/libacsdkCBLAuthorizationDelegate.so: SampleApp/Authorization/CBLAuthDelegate/src/libCBLAuthDelegate.so
applications/acsdkCBLAuthorizationDelegate/src/libacsdkCBLAuthorizationDelegate.so: RegistrationManager/src/libRegistrationManager.so
applications/acsdkCBLAuthorizationDelegate/src/libacsdkCBLAuthorizationDelegate.so: Storage/SQLiteStorage/src/libSQLiteStorage.so
applications/acsdkCBLAuthorizationDelegate/src/libacsdkCBLAuthorizationDelegate.so: AVSCommon/libAVSCommon.so
applications/acsdkCBLAuthorizationDelegate/src/libacsdkCBLAuthorizationDelegate.so: /usr/lib/arm-linux-gnueabihf/libcurl.so
applications/acsdkCBLAuthorizationDelegate/src/libacsdkCBLAuthorizationDelegate.so: applications/acsdkCBLAuthorizationDelegate/src/CMakeFiles/acsdkCBLAuthorizationDelegate.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libacsdkCBLAuthorizationDelegate.so"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/applications/acsdkCBLAuthorizationDelegate/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/acsdkCBLAuthorizationDelegate.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
applications/acsdkCBLAuthorizationDelegate/src/CMakeFiles/acsdkCBLAuthorizationDelegate.dir/build: applications/acsdkCBLAuthorizationDelegate/src/libacsdkCBLAuthorizationDelegate.so

.PHONY : applications/acsdkCBLAuthorizationDelegate/src/CMakeFiles/acsdkCBLAuthorizationDelegate.dir/build

applications/acsdkCBLAuthorizationDelegate/src/CMakeFiles/acsdkCBLAuthorizationDelegate.dir/clean:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/applications/acsdkCBLAuthorizationDelegate/src && $(CMAKE_COMMAND) -P CMakeFiles/acsdkCBLAuthorizationDelegate.dir/cmake_clean.cmake
.PHONY : applications/acsdkCBLAuthorizationDelegate/src/CMakeFiles/acsdkCBLAuthorizationDelegate.dir/clean

applications/acsdkCBLAuthorizationDelegate/src/CMakeFiles/acsdkCBLAuthorizationDelegate.dir/depend:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/applications/acsdkCBLAuthorizationDelegate/src /home/pi/SmartMusicDisplay/sdk-folder/sdk-build /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/applications/acsdkCBLAuthorizationDelegate/src /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/applications/acsdkCBLAuthorizationDelegate/src/CMakeFiles/acsdkCBLAuthorizationDelegate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : applications/acsdkCBLAuthorizationDelegate/src/CMakeFiles/acsdkCBLAuthorizationDelegate.dir/depend

