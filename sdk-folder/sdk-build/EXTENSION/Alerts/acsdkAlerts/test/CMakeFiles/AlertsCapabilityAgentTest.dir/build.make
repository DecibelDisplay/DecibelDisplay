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
include EXTENSION/Alerts/acsdkAlerts/test/CMakeFiles/AlertsCapabilityAgentTest.dir/depend.make

# Include the progress variables for this target.
include EXTENSION/Alerts/acsdkAlerts/test/CMakeFiles/AlertsCapabilityAgentTest.dir/progress.make

# Include the compile flags for this target's objects.
include EXTENSION/Alerts/acsdkAlerts/test/CMakeFiles/AlertsCapabilityAgentTest.dir/flags.make

EXTENSION/Alerts/acsdkAlerts/test/CMakeFiles/AlertsCapabilityAgentTest.dir/AlertsCapabilityAgentTest.cpp.o: EXTENSION/Alerts/acsdkAlerts/test/CMakeFiles/AlertsCapabilityAgentTest.dir/flags.make
EXTENSION/Alerts/acsdkAlerts/test/CMakeFiles/AlertsCapabilityAgentTest.dir/AlertsCapabilityAgentTest.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/test/AlertsCapabilityAgentTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object EXTENSION/Alerts/acsdkAlerts/test/CMakeFiles/AlertsCapabilityAgentTest.dir/AlertsCapabilityAgentTest.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AlertsCapabilityAgentTest.dir/AlertsCapabilityAgentTest.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/test/AlertsCapabilityAgentTest.cpp

EXTENSION/Alerts/acsdkAlerts/test/CMakeFiles/AlertsCapabilityAgentTest.dir/AlertsCapabilityAgentTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AlertsCapabilityAgentTest.dir/AlertsCapabilityAgentTest.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/test/AlertsCapabilityAgentTest.cpp > CMakeFiles/AlertsCapabilityAgentTest.dir/AlertsCapabilityAgentTest.cpp.i

EXTENSION/Alerts/acsdkAlerts/test/CMakeFiles/AlertsCapabilityAgentTest.dir/AlertsCapabilityAgentTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AlertsCapabilityAgentTest.dir/AlertsCapabilityAgentTest.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/test/AlertsCapabilityAgentTest.cpp -o CMakeFiles/AlertsCapabilityAgentTest.dir/AlertsCapabilityAgentTest.cpp.s

# Object files for target AlertsCapabilityAgentTest
AlertsCapabilityAgentTest_OBJECTS = \
"CMakeFiles/AlertsCapabilityAgentTest.dir/AlertsCapabilityAgentTest.cpp.o"

# External object files for target AlertsCapabilityAgentTest
AlertsCapabilityAgentTest_EXTERNAL_OBJECTS =

EXTENSION/Alerts/acsdkAlerts/test/AlertsCapabilityAgentTest: EXTENSION/Alerts/acsdkAlerts/test/CMakeFiles/AlertsCapabilityAgentTest.dir/AlertsCapabilityAgentTest.cpp.o
EXTENSION/Alerts/acsdkAlerts/test/AlertsCapabilityAgentTest: EXTENSION/Alerts/acsdkAlerts/test/CMakeFiles/AlertsCapabilityAgentTest.dir/build.make
EXTENSION/Alerts/acsdkAlerts/test/AlertsCapabilityAgentTest: EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so
EXTENSION/Alerts/acsdkAlerts/test/AlertsCapabilityAgentTest: AVSCommon/Utils/test/Common/libUtilsCommonTestLib.a
EXTENSION/Alerts/acsdkAlerts/test/AlertsCapabilityAgentTest: AVSCommon/SDKInterfaces/test/libSDKInterfacesTests.a
EXTENSION/Alerts/acsdkAlerts/test/AlertsCapabilityAgentTest: ThirdParty/googletest-release-1.8.0/googlemock/libgmock_main.a
EXTENSION/Alerts/acsdkAlerts/test/AlertsCapabilityAgentTest: shared/acsdkManufactory/src/libacsdkManufactory.so
EXTENSION/Alerts/acsdkAlerts/test/AlertsCapabilityAgentTest: Settings/src/libDeviceSettings.so
EXTENSION/Alerts/acsdkAlerts/test/AlertsCapabilityAgentTest: CertifiedSender/src/libCertifiedSender.so
EXTENSION/Alerts/acsdkAlerts/test/AlertsCapabilityAgentTest: RegistrationManager/src/libRegistrationManager.so
EXTENSION/Alerts/acsdkAlerts/test/AlertsCapabilityAgentTest: Storage/SQLiteStorage/src/libSQLiteStorage.so
EXTENSION/Alerts/acsdkAlerts/test/AlertsCapabilityAgentTest: AVSCommon/libAVSCommon.so
EXTENSION/Alerts/acsdkAlerts/test/AlertsCapabilityAgentTest: /usr/lib/arm-linux-gnueabihf/libcurl.so
EXTENSION/Alerts/acsdkAlerts/test/AlertsCapabilityAgentTest: ThirdParty/googletest-release-1.8.0/googlemock/gtest/libgtest_main.a
EXTENSION/Alerts/acsdkAlerts/test/AlertsCapabilityAgentTest: ThirdParty/googletest-release-1.8.0/googlemock/gtest/libgtest.a
EXTENSION/Alerts/acsdkAlerts/test/AlertsCapabilityAgentTest: EXTENSION/Alerts/acsdkAlerts/test/CMakeFiles/AlertsCapabilityAgentTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable AlertsCapabilityAgentTest"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AlertsCapabilityAgentTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
EXTENSION/Alerts/acsdkAlerts/test/CMakeFiles/AlertsCapabilityAgentTest.dir/build: EXTENSION/Alerts/acsdkAlerts/test/AlertsCapabilityAgentTest

.PHONY : EXTENSION/Alerts/acsdkAlerts/test/CMakeFiles/AlertsCapabilityAgentTest.dir/build

EXTENSION/Alerts/acsdkAlerts/test/CMakeFiles/AlertsCapabilityAgentTest.dir/clean:
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/test && $(CMAKE_COMMAND) -P CMakeFiles/AlertsCapabilityAgentTest.dir/cmake_clean.cmake
.PHONY : EXTENSION/Alerts/acsdkAlerts/test/CMakeFiles/AlertsCapabilityAgentTest.dir/clean

EXTENSION/Alerts/acsdkAlerts/test/CMakeFiles/AlertsCapabilityAgentTest.dir/depend:
	cd /home/pi/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/sdk-folder/sdk-source/avs-device-sdk /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Alerts/acsdkAlerts/test /home/pi/sdk-folder/sdk-build /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/test /home/pi/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/test/CMakeFiles/AlertsCapabilityAgentTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : EXTENSION/Alerts/acsdkAlerts/test/CMakeFiles/AlertsCapabilityAgentTest.dir/depend

