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
include EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/depend.make

# Include the progress variables for this target.
include EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/progress.make

# Include the compile flags for this target's objects.
include EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/flags.make

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Renderer/Renderer.cpp.o: EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/flags.make
EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Renderer/Renderer.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Renderer/Renderer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Renderer/Renderer.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/acsdkAlerts.dir/Renderer/Renderer.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Renderer/Renderer.cpp

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Renderer/Renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/acsdkAlerts.dir/Renderer/Renderer.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Renderer/Renderer.cpp > CMakeFiles/acsdkAlerts.dir/Renderer/Renderer.cpp.i

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Renderer/Renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/acsdkAlerts.dir/Renderer/Renderer.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Renderer/Renderer.cpp -o CMakeFiles/acsdkAlerts.dir/Renderer/Renderer.cpp.s

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Storage/SQLiteAlertStorage.cpp.o: EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/flags.make
EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Storage/SQLiteAlertStorage.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Storage/SQLiteAlertStorage.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Storage/SQLiteAlertStorage.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/acsdkAlerts.dir/Storage/SQLiteAlertStorage.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Storage/SQLiteAlertStorage.cpp

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Storage/SQLiteAlertStorage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/acsdkAlerts.dir/Storage/SQLiteAlertStorage.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Storage/SQLiteAlertStorage.cpp > CMakeFiles/acsdkAlerts.dir/Storage/SQLiteAlertStorage.cpp.i

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Storage/SQLiteAlertStorage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/acsdkAlerts.dir/Storage/SQLiteAlertStorage.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Storage/SQLiteAlertStorage.cpp -o CMakeFiles/acsdkAlerts.dir/Storage/SQLiteAlertStorage.cpp.s

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Alarm.cpp.o: EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/flags.make
EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Alarm.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Alarm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Alarm.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/acsdkAlerts.dir/Alarm.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Alarm.cpp

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Alarm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/acsdkAlerts.dir/Alarm.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Alarm.cpp > CMakeFiles/acsdkAlerts.dir/Alarm.cpp.i

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Alarm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/acsdkAlerts.dir/Alarm.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Alarm.cpp -o CMakeFiles/acsdkAlerts.dir/Alarm.cpp.s

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Alert.cpp.o: EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/flags.make
EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Alert.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Alert.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Alert.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/acsdkAlerts.dir/Alert.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Alert.cpp

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Alert.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/acsdkAlerts.dir/Alert.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Alert.cpp > CMakeFiles/acsdkAlerts.dir/Alert.cpp.i

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Alert.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/acsdkAlerts.dir/Alert.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Alert.cpp -o CMakeFiles/acsdkAlerts.dir/Alert.cpp.s

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/AlertsCapabilityAgent.cpp.o: EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/flags.make
EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/AlertsCapabilityAgent.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/AlertsCapabilityAgent.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/AlertsCapabilityAgent.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/acsdkAlerts.dir/AlertsCapabilityAgent.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/AlertsCapabilityAgent.cpp

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/AlertsCapabilityAgent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/acsdkAlerts.dir/AlertsCapabilityAgent.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/AlertsCapabilityAgent.cpp > CMakeFiles/acsdkAlerts.dir/AlertsCapabilityAgent.cpp.i

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/AlertsCapabilityAgent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/acsdkAlerts.dir/AlertsCapabilityAgent.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/AlertsCapabilityAgent.cpp -o CMakeFiles/acsdkAlerts.dir/AlertsCapabilityAgent.cpp.s

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/AlertsComponent.cpp.o: EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/flags.make
EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/AlertsComponent.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/AlertsComponent.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/AlertsComponent.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/acsdkAlerts.dir/AlertsComponent.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/AlertsComponent.cpp

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/AlertsComponent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/acsdkAlerts.dir/AlertsComponent.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/AlertsComponent.cpp > CMakeFiles/acsdkAlerts.dir/AlertsComponent.cpp.i

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/AlertsComponent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/acsdkAlerts.dir/AlertsComponent.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/AlertsComponent.cpp -o CMakeFiles/acsdkAlerts.dir/AlertsComponent.cpp.s

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/AlertScheduler.cpp.o: EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/flags.make
EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/AlertScheduler.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/AlertScheduler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/AlertScheduler.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/acsdkAlerts.dir/AlertScheduler.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/AlertScheduler.cpp

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/AlertScheduler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/acsdkAlerts.dir/AlertScheduler.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/AlertScheduler.cpp > CMakeFiles/acsdkAlerts.dir/AlertScheduler.cpp.i

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/AlertScheduler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/acsdkAlerts.dir/AlertScheduler.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/AlertScheduler.cpp -o CMakeFiles/acsdkAlerts.dir/AlertScheduler.cpp.s

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Reminder.cpp.o: EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/flags.make
EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Reminder.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Reminder.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Reminder.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/acsdkAlerts.dir/Reminder.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Reminder.cpp

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Reminder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/acsdkAlerts.dir/Reminder.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Reminder.cpp > CMakeFiles/acsdkAlerts.dir/Reminder.cpp.i

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Reminder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/acsdkAlerts.dir/Reminder.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Reminder.cpp -o CMakeFiles/acsdkAlerts.dir/Reminder.cpp.s

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Timer.cpp.o: EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/flags.make
EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Timer.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Timer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Timer.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/acsdkAlerts.dir/Timer.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Timer.cpp

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/acsdkAlerts.dir/Timer.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Timer.cpp > CMakeFiles/acsdkAlerts.dir/Timer.cpp.i

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/acsdkAlerts.dir/Timer.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src/Timer.cpp -o CMakeFiles/acsdkAlerts.dir/Timer.cpp.s

# Object files for target acsdkAlerts
acsdkAlerts_OBJECTS = \
"CMakeFiles/acsdkAlerts.dir/Renderer/Renderer.cpp.o" \
"CMakeFiles/acsdkAlerts.dir/Storage/SQLiteAlertStorage.cpp.o" \
"CMakeFiles/acsdkAlerts.dir/Alarm.cpp.o" \
"CMakeFiles/acsdkAlerts.dir/Alert.cpp.o" \
"CMakeFiles/acsdkAlerts.dir/AlertsCapabilityAgent.cpp.o" \
"CMakeFiles/acsdkAlerts.dir/AlertsComponent.cpp.o" \
"CMakeFiles/acsdkAlerts.dir/AlertScheduler.cpp.o" \
"CMakeFiles/acsdkAlerts.dir/Reminder.cpp.o" \
"CMakeFiles/acsdkAlerts.dir/Timer.cpp.o"

# External object files for target acsdkAlerts
acsdkAlerts_EXTERNAL_OBJECTS =

EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so: EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Renderer/Renderer.cpp.o
EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so: EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Storage/SQLiteAlertStorage.cpp.o
EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so: EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Alarm.cpp.o
EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so: EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Alert.cpp.o
EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so: EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/AlertsCapabilityAgent.cpp.o
EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so: EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/AlertsComponent.cpp.o
EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so: EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/AlertScheduler.cpp.o
EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so: EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Reminder.cpp.o
EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so: EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/Timer.cpp.o
EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so: EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/build.make
EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so: Settings/src/libDeviceSettings.so
EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so: ApplicationUtilities/Resources/Audio/src/libAudioResources.so
EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so: CertifiedSender/src/libCertifiedSender.so
EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so: Storage/SQLiteStorage/src/libSQLiteStorage.so
EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so: RegistrationManager/src/libRegistrationManager.so
EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so: CapabilityAgents/SpeakerManager/src/libSpeakerManager.so
EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so: Endpoints/src/libEndpoints.so
EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so: CapabilityAgents/Alexa/src/libAlexa.so
EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so: shared/acsdkManufactory/src/libacsdkManufactory.so
EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so: AVSCommon/libAVSCommon.so
EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so: /usr/lib/arm-linux-gnueabihf/libcurl.so
EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so: EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX shared library libacsdkAlerts.so"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/acsdkAlerts.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/build: EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so

.PHONY : EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/build

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/clean:
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src && $(CMAKE_COMMAND) -P CMakeFiles/acsdkAlerts.dir/cmake_clean.cmake
.PHONY : EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/clean

EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/depend:
	cd /home/pi/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/sdk-folder/sdk-source/avs-device-sdk /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/src /home/pi/sdk-folder/sdk-build /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : EXTENSION/Alerts/acsdkAlerts/src/CMakeFiles/acsdkAlerts.dir/depend

