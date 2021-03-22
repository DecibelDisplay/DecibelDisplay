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
include EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/depend.make

# Include the progress variables for this target.
include EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/progress.make

# Include the compile flags for this target's objects.
include EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/flags.make

EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/NotificationIndicator.cpp.o: EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/flags.make
EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/NotificationIndicator.cpp.o: /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/Notifications/acsdkNotifications/src/NotificationIndicator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/NotificationIndicator.cpp.o"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/acsdkNotifications.dir/NotificationIndicator.cpp.o -c /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/Notifications/acsdkNotifications/src/NotificationIndicator.cpp

EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/NotificationIndicator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/acsdkNotifications.dir/NotificationIndicator.cpp.i"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/Notifications/acsdkNotifications/src/NotificationIndicator.cpp > CMakeFiles/acsdkNotifications.dir/NotificationIndicator.cpp.i

EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/NotificationIndicator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/acsdkNotifications.dir/NotificationIndicator.cpp.s"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/Notifications/acsdkNotifications/src/NotificationIndicator.cpp -o CMakeFiles/acsdkNotifications.dir/NotificationIndicator.cpp.s

EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/NotificationRenderer.cpp.o: EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/flags.make
EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/NotificationRenderer.cpp.o: /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/Notifications/acsdkNotifications/src/NotificationRenderer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/NotificationRenderer.cpp.o"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/acsdkNotifications.dir/NotificationRenderer.cpp.o -c /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/Notifications/acsdkNotifications/src/NotificationRenderer.cpp

EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/NotificationRenderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/acsdkNotifications.dir/NotificationRenderer.cpp.i"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/Notifications/acsdkNotifications/src/NotificationRenderer.cpp > CMakeFiles/acsdkNotifications.dir/NotificationRenderer.cpp.i

EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/NotificationRenderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/acsdkNotifications.dir/NotificationRenderer.cpp.s"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/Notifications/acsdkNotifications/src/NotificationRenderer.cpp -o CMakeFiles/acsdkNotifications.dir/NotificationRenderer.cpp.s

EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/NotificationsCapabilityAgent.cpp.o: EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/flags.make
EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/NotificationsCapabilityAgent.cpp.o: /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/Notifications/acsdkNotifications/src/NotificationsCapabilityAgent.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/NotificationsCapabilityAgent.cpp.o"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/acsdkNotifications.dir/NotificationsCapabilityAgent.cpp.o -c /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/Notifications/acsdkNotifications/src/NotificationsCapabilityAgent.cpp

EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/NotificationsCapabilityAgent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/acsdkNotifications.dir/NotificationsCapabilityAgent.cpp.i"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/Notifications/acsdkNotifications/src/NotificationsCapabilityAgent.cpp > CMakeFiles/acsdkNotifications.dir/NotificationsCapabilityAgent.cpp.i

EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/NotificationsCapabilityAgent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/acsdkNotifications.dir/NotificationsCapabilityAgent.cpp.s"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/Notifications/acsdkNotifications/src/NotificationsCapabilityAgent.cpp -o CMakeFiles/acsdkNotifications.dir/NotificationsCapabilityAgent.cpp.s

EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/SQLiteNotificationsStorage.cpp.o: EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/flags.make
EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/SQLiteNotificationsStorage.cpp.o: /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/Notifications/acsdkNotifications/src/SQLiteNotificationsStorage.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/SQLiteNotificationsStorage.cpp.o"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/acsdkNotifications.dir/SQLiteNotificationsStorage.cpp.o -c /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/Notifications/acsdkNotifications/src/SQLiteNotificationsStorage.cpp

EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/SQLiteNotificationsStorage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/acsdkNotifications.dir/SQLiteNotificationsStorage.cpp.i"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/Notifications/acsdkNotifications/src/SQLiteNotificationsStorage.cpp > CMakeFiles/acsdkNotifications.dir/SQLiteNotificationsStorage.cpp.i

EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/SQLiteNotificationsStorage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/acsdkNotifications.dir/SQLiteNotificationsStorage.cpp.s"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/Notifications/acsdkNotifications/src/SQLiteNotificationsStorage.cpp -o CMakeFiles/acsdkNotifications.dir/SQLiteNotificationsStorage.cpp.s

# Object files for target acsdkNotifications
acsdkNotifications_OBJECTS = \
"CMakeFiles/acsdkNotifications.dir/NotificationIndicator.cpp.o" \
"CMakeFiles/acsdkNotifications.dir/NotificationRenderer.cpp.o" \
"CMakeFiles/acsdkNotifications.dir/NotificationsCapabilityAgent.cpp.o" \
"CMakeFiles/acsdkNotifications.dir/SQLiteNotificationsStorage.cpp.o"

# External object files for target acsdkNotifications
acsdkNotifications_EXTERNAL_OBJECTS =

EXTENSION/Notifications/acsdkNotifications/src/libacsdkNotifications.so: EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/NotificationIndicator.cpp.o
EXTENSION/Notifications/acsdkNotifications/src/libacsdkNotifications.so: EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/NotificationRenderer.cpp.o
EXTENSION/Notifications/acsdkNotifications/src/libacsdkNotifications.so: EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/NotificationsCapabilityAgent.cpp.o
EXTENSION/Notifications/acsdkNotifications/src/libacsdkNotifications.so: EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/SQLiteNotificationsStorage.cpp.o
EXTENSION/Notifications/acsdkNotifications/src/libacsdkNotifications.so: EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/build.make
EXTENSION/Notifications/acsdkNotifications/src/libacsdkNotifications.so: ApplicationUtilities/Resources/Audio/src/libAudioResources.so
EXTENSION/Notifications/acsdkNotifications/src/libacsdkNotifications.so: Storage/SQLiteStorage/src/libSQLiteStorage.so
EXTENSION/Notifications/acsdkNotifications/src/libacsdkNotifications.so: RegistrationManager/src/libRegistrationManager.so
EXTENSION/Notifications/acsdkNotifications/src/libacsdkNotifications.so: AVSCommon/libAVSCommon.so
EXTENSION/Notifications/acsdkNotifications/src/libacsdkNotifications.so: /usr/lib/arm-linux-gnueabihf/libcurl.so
EXTENSION/Notifications/acsdkNotifications/src/libacsdkNotifications.so: EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared library libacsdkNotifications.so"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/acsdkNotifications.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/build: EXTENSION/Notifications/acsdkNotifications/src/libacsdkNotifications.so

.PHONY : EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/build

EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/clean:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/src && $(CMAKE_COMMAND) -P CMakeFiles/acsdkNotifications.dir/cmake_clean.cmake
.PHONY : EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/clean

EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/depend:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/Notifications/acsdkNotifications/src /home/pi/SmartMusicDisplay/sdk-folder/sdk-build /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/src /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : EXTENSION/Notifications/acsdkNotifications/src/CMakeFiles/acsdkNotifications.dir/depend

