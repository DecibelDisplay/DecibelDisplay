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
include CertifiedSender/src/CMakeFiles/CertifiedSender.dir/depend.make

# Include the progress variables for this target.
include CertifiedSender/src/CMakeFiles/CertifiedSender.dir/progress.make

# Include the compile flags for this target's objects.
include CertifiedSender/src/CMakeFiles/CertifiedSender.dir/flags.make

CertifiedSender/src/CMakeFiles/CertifiedSender.dir/CertifiedSender.cpp.o: CertifiedSender/src/CMakeFiles/CertifiedSender.dir/flags.make
CertifiedSender/src/CMakeFiles/CertifiedSender.dir/CertifiedSender.cpp.o: /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/CertifiedSender/src/CertifiedSender.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CertifiedSender/src/CMakeFiles/CertifiedSender.dir/CertifiedSender.cpp.o"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CertifiedSender/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CertifiedSender.dir/CertifiedSender.cpp.o -c /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/CertifiedSender/src/CertifiedSender.cpp

CertifiedSender/src/CMakeFiles/CertifiedSender.dir/CertifiedSender.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CertifiedSender.dir/CertifiedSender.cpp.i"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CertifiedSender/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/CertifiedSender/src/CertifiedSender.cpp > CMakeFiles/CertifiedSender.dir/CertifiedSender.cpp.i

CertifiedSender/src/CMakeFiles/CertifiedSender.dir/CertifiedSender.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CertifiedSender.dir/CertifiedSender.cpp.s"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CertifiedSender/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/CertifiedSender/src/CertifiedSender.cpp -o CMakeFiles/CertifiedSender.dir/CertifiedSender.cpp.s

CertifiedSender/src/CMakeFiles/CertifiedSender.dir/SQLiteMessageStorage.cpp.o: CertifiedSender/src/CMakeFiles/CertifiedSender.dir/flags.make
CertifiedSender/src/CMakeFiles/CertifiedSender.dir/SQLiteMessageStorage.cpp.o: /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/CertifiedSender/src/SQLiteMessageStorage.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CertifiedSender/src/CMakeFiles/CertifiedSender.dir/SQLiteMessageStorage.cpp.o"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CertifiedSender/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CertifiedSender.dir/SQLiteMessageStorage.cpp.o -c /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/CertifiedSender/src/SQLiteMessageStorage.cpp

CertifiedSender/src/CMakeFiles/CertifiedSender.dir/SQLiteMessageStorage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CertifiedSender.dir/SQLiteMessageStorage.cpp.i"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CertifiedSender/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/CertifiedSender/src/SQLiteMessageStorage.cpp > CMakeFiles/CertifiedSender.dir/SQLiteMessageStorage.cpp.i

CertifiedSender/src/CMakeFiles/CertifiedSender.dir/SQLiteMessageStorage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CertifiedSender.dir/SQLiteMessageStorage.cpp.s"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CertifiedSender/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/CertifiedSender/src/SQLiteMessageStorage.cpp -o CMakeFiles/CertifiedSender.dir/SQLiteMessageStorage.cpp.s

# Object files for target CertifiedSender
CertifiedSender_OBJECTS = \
"CMakeFiles/CertifiedSender.dir/CertifiedSender.cpp.o" \
"CMakeFiles/CertifiedSender.dir/SQLiteMessageStorage.cpp.o"

# External object files for target CertifiedSender
CertifiedSender_EXTERNAL_OBJECTS =

CertifiedSender/src/libCertifiedSender.so: CertifiedSender/src/CMakeFiles/CertifiedSender.dir/CertifiedSender.cpp.o
CertifiedSender/src/libCertifiedSender.so: CertifiedSender/src/CMakeFiles/CertifiedSender.dir/SQLiteMessageStorage.cpp.o
CertifiedSender/src/libCertifiedSender.so: CertifiedSender/src/CMakeFiles/CertifiedSender.dir/build.make
CertifiedSender/src/libCertifiedSender.so: RegistrationManager/src/libRegistrationManager.so
CertifiedSender/src/libCertifiedSender.so: Storage/SQLiteStorage/src/libSQLiteStorage.so
CertifiedSender/src/libCertifiedSender.so: AVSCommon/libAVSCommon.so
CertifiedSender/src/libCertifiedSender.so: /usr/lib/arm-linux-gnueabihf/libcurl.so
CertifiedSender/src/libCertifiedSender.so: CertifiedSender/src/CMakeFiles/CertifiedSender.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libCertifiedSender.so"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CertifiedSender/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CertifiedSender.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CertifiedSender/src/CMakeFiles/CertifiedSender.dir/build: CertifiedSender/src/libCertifiedSender.so

.PHONY : CertifiedSender/src/CMakeFiles/CertifiedSender.dir/build

CertifiedSender/src/CMakeFiles/CertifiedSender.dir/clean:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CertifiedSender/src && $(CMAKE_COMMAND) -P CMakeFiles/CertifiedSender.dir/cmake_clean.cmake
.PHONY : CertifiedSender/src/CMakeFiles/CertifiedSender.dir/clean

CertifiedSender/src/CMakeFiles/CertifiedSender.dir/depend:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/CertifiedSender/src /home/pi/SmartMusicDisplay/sdk-folder/sdk-build /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CertifiedSender/src /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CertifiedSender/src/CMakeFiles/CertifiedSender.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CertifiedSender/src/CMakeFiles/CertifiedSender.dir/depend

