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
include EXTENSION/Notifications/acsdkNotifications/test/CMakeFiles/NotificationRendererTest.dir/depend.make

# Include the progress variables for this target.
include EXTENSION/Notifications/acsdkNotifications/test/CMakeFiles/NotificationRendererTest.dir/progress.make

# Include the compile flags for this target's objects.
include EXTENSION/Notifications/acsdkNotifications/test/CMakeFiles/NotificationRendererTest.dir/flags.make

EXTENSION/Notifications/acsdkNotifications/test/CMakeFiles/NotificationRendererTest.dir/NotificationRendererTest.cpp.o: EXTENSION/Notifications/acsdkNotifications/test/CMakeFiles/NotificationRendererTest.dir/flags.make
EXTENSION/Notifications/acsdkNotifications/test/CMakeFiles/NotificationRendererTest.dir/NotificationRendererTest.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Notifications/acsdkNotifications/test/NotificationRendererTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object EXTENSION/Notifications/acsdkNotifications/test/CMakeFiles/NotificationRendererTest.dir/NotificationRendererTest.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NotificationRendererTest.dir/NotificationRendererTest.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Notifications/acsdkNotifications/test/NotificationRendererTest.cpp

EXTENSION/Notifications/acsdkNotifications/test/CMakeFiles/NotificationRendererTest.dir/NotificationRendererTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NotificationRendererTest.dir/NotificationRendererTest.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Notifications/acsdkNotifications/test/NotificationRendererTest.cpp > CMakeFiles/NotificationRendererTest.dir/NotificationRendererTest.cpp.i

EXTENSION/Notifications/acsdkNotifications/test/CMakeFiles/NotificationRendererTest.dir/NotificationRendererTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NotificationRendererTest.dir/NotificationRendererTest.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Notifications/acsdkNotifications/test/NotificationRendererTest.cpp -o CMakeFiles/NotificationRendererTest.dir/NotificationRendererTest.cpp.s

# Object files for target NotificationRendererTest
NotificationRendererTest_OBJECTS = \
"CMakeFiles/NotificationRendererTest.dir/NotificationRendererTest.cpp.o"

# External object files for target NotificationRendererTest
NotificationRendererTest_EXTERNAL_OBJECTS =

EXTENSION/Notifications/acsdkNotifications/test/NotificationRendererTest: EXTENSION/Notifications/acsdkNotifications/test/CMakeFiles/NotificationRendererTest.dir/NotificationRendererTest.cpp.o
EXTENSION/Notifications/acsdkNotifications/test/NotificationRendererTest: EXTENSION/Notifications/acsdkNotifications/test/CMakeFiles/NotificationRendererTest.dir/build.make
EXTENSION/Notifications/acsdkNotifications/test/NotificationRendererTest: AVSCommon/AVS/test/Attachment/Common/libAttachmentCommonTestLib.a
EXTENSION/Notifications/acsdkNotifications/test/NotificationRendererTest: EXTENSION/Notifications/acsdkNotifications/src/libacsdkNotifications.so
EXTENSION/Notifications/acsdkNotifications/test/NotificationRendererTest: AVSCommon/Utils/test/Common/libUtilsCommonTestLib.a
EXTENSION/Notifications/acsdkNotifications/test/NotificationRendererTest: AVSCommon/SDKInterfaces/test/libSDKInterfacesTests.a
EXTENSION/Notifications/acsdkNotifications/test/NotificationRendererTest: ThirdParty/googletest-release-1.8.0/googlemock/libgmock_main.a
EXTENSION/Notifications/acsdkNotifications/test/NotificationRendererTest: ApplicationUtilities/Resources/Audio/src/libAudioResources.so
EXTENSION/Notifications/acsdkNotifications/test/NotificationRendererTest: Storage/SQLiteStorage/src/libSQLiteStorage.so
EXTENSION/Notifications/acsdkNotifications/test/NotificationRendererTest: RegistrationManager/src/libRegistrationManager.so
EXTENSION/Notifications/acsdkNotifications/test/NotificationRendererTest: ThirdParty/googletest-release-1.8.0/googlemock/gtest/libgtest_main.a
EXTENSION/Notifications/acsdkNotifications/test/NotificationRendererTest: ThirdParty/googletest-release-1.8.0/googlemock/gtest/libgtest.a
EXTENSION/Notifications/acsdkNotifications/test/NotificationRendererTest: AVSCommon/SDKInterfaces/test/libSDKInterfacesTests.a
EXTENSION/Notifications/acsdkNotifications/test/NotificationRendererTest: ThirdParty/googletest-release-1.8.0/googlemock/libgmock_main.a
EXTENSION/Notifications/acsdkNotifications/test/NotificationRendererTest: AVSCommon/libAVSCommon.so
EXTENSION/Notifications/acsdkNotifications/test/NotificationRendererTest: /usr/lib/arm-linux-gnueabihf/libcurl.so
EXTENSION/Notifications/acsdkNotifications/test/NotificationRendererTest: EXTENSION/Notifications/acsdkNotifications/test/CMakeFiles/NotificationRendererTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable NotificationRendererTest"
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/NotificationRendererTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
EXTENSION/Notifications/acsdkNotifications/test/CMakeFiles/NotificationRendererTest.dir/build: EXTENSION/Notifications/acsdkNotifications/test/NotificationRendererTest

.PHONY : EXTENSION/Notifications/acsdkNotifications/test/CMakeFiles/NotificationRendererTest.dir/build

EXTENSION/Notifications/acsdkNotifications/test/CMakeFiles/NotificationRendererTest.dir/clean:
	cd /home/pi/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/test && $(CMAKE_COMMAND) -P CMakeFiles/NotificationRendererTest.dir/cmake_clean.cmake
.PHONY : EXTENSION/Notifications/acsdkNotifications/test/CMakeFiles/NotificationRendererTest.dir/clean

EXTENSION/Notifications/acsdkNotifications/test/CMakeFiles/NotificationRendererTest.dir/depend:
	cd /home/pi/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/sdk-folder/sdk-source/avs-device-sdk /home/pi/sdk-folder/sdk-source/avs-device-sdk/capabilities/Notifications/acsdkNotifications/test /home/pi/sdk-folder/sdk-build /home/pi/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/test /home/pi/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/test/CMakeFiles/NotificationRendererTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : EXTENSION/Notifications/acsdkNotifications/test/CMakeFiles/NotificationRendererTest.dir/depend

