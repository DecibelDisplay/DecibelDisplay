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
include EXTENSION/Bluetooth/acsdkBluetooth/test/CMakeFiles/SQLiteBluetoothStorageTest.dir/depend.make

# Include the progress variables for this target.
include EXTENSION/Bluetooth/acsdkBluetooth/test/CMakeFiles/SQLiteBluetoothStorageTest.dir/progress.make

# Include the compile flags for this target's objects.
include EXTENSION/Bluetooth/acsdkBluetooth/test/CMakeFiles/SQLiteBluetoothStorageTest.dir/flags.make

EXTENSION/Bluetooth/acsdkBluetooth/test/CMakeFiles/SQLiteBluetoothStorageTest.dir/SQLiteBluetoothStorageTest.cpp.o: EXTENSION/Bluetooth/acsdkBluetooth/test/CMakeFiles/SQLiteBluetoothStorageTest.dir/flags.make
EXTENSION/Bluetooth/acsdkBluetooth/test/CMakeFiles/SQLiteBluetoothStorageTest.dir/SQLiteBluetoothStorageTest.cpp.o: /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/Bluetooth/acsdkBluetooth/test/SQLiteBluetoothStorageTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object EXTENSION/Bluetooth/acsdkBluetooth/test/CMakeFiles/SQLiteBluetoothStorageTest.dir/SQLiteBluetoothStorageTest.cpp.o"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Bluetooth/acsdkBluetooth/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SQLiteBluetoothStorageTest.dir/SQLiteBluetoothStorageTest.cpp.o -c /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/Bluetooth/acsdkBluetooth/test/SQLiteBluetoothStorageTest.cpp

EXTENSION/Bluetooth/acsdkBluetooth/test/CMakeFiles/SQLiteBluetoothStorageTest.dir/SQLiteBluetoothStorageTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SQLiteBluetoothStorageTest.dir/SQLiteBluetoothStorageTest.cpp.i"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Bluetooth/acsdkBluetooth/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/Bluetooth/acsdkBluetooth/test/SQLiteBluetoothStorageTest.cpp > CMakeFiles/SQLiteBluetoothStorageTest.dir/SQLiteBluetoothStorageTest.cpp.i

EXTENSION/Bluetooth/acsdkBluetooth/test/CMakeFiles/SQLiteBluetoothStorageTest.dir/SQLiteBluetoothStorageTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SQLiteBluetoothStorageTest.dir/SQLiteBluetoothStorageTest.cpp.s"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Bluetooth/acsdkBluetooth/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/Bluetooth/acsdkBluetooth/test/SQLiteBluetoothStorageTest.cpp -o CMakeFiles/SQLiteBluetoothStorageTest.dir/SQLiteBluetoothStorageTest.cpp.s

# Object files for target SQLiteBluetoothStorageTest
SQLiteBluetoothStorageTest_OBJECTS = \
"CMakeFiles/SQLiteBluetoothStorageTest.dir/SQLiteBluetoothStorageTest.cpp.o"

# External object files for target SQLiteBluetoothStorageTest
SQLiteBluetoothStorageTest_EXTERNAL_OBJECTS =

EXTENSION/Bluetooth/acsdkBluetooth/test/SQLiteBluetoothStorageTest: EXTENSION/Bluetooth/acsdkBluetooth/test/CMakeFiles/SQLiteBluetoothStorageTest.dir/SQLiteBluetoothStorageTest.cpp.o
EXTENSION/Bluetooth/acsdkBluetooth/test/SQLiteBluetoothStorageTest: EXTENSION/Bluetooth/acsdkBluetooth/test/CMakeFiles/SQLiteBluetoothStorageTest.dir/build.make
EXTENSION/Bluetooth/acsdkBluetooth/test/SQLiteBluetoothStorageTest: EXTENSION/Bluetooth/acsdkBluetooth/src/libacsdkBluetooth.so
EXTENSION/Bluetooth/acsdkBluetooth/test/SQLiteBluetoothStorageTest: AVSCommon/AVS/test/Attachment/Common/libAttachmentCommonTestLib.a
EXTENSION/Bluetooth/acsdkBluetooth/test/SQLiteBluetoothStorageTest: AVSCommon/Utils/test/Common/libUtilsCommonTestLib.a
EXTENSION/Bluetooth/acsdkBluetooth/test/SQLiteBluetoothStorageTest: AVSCommon/SDKInterfaces/test/libSDKInterfacesTests.a
EXTENSION/Bluetooth/acsdkBluetooth/test/SQLiteBluetoothStorageTest: ThirdParty/googletest-release-1.8.0/googlemock/libgmock_main.a
EXTENSION/Bluetooth/acsdkBluetooth/test/SQLiteBluetoothStorageTest: RegistrationManager/src/libRegistrationManager.so
EXTENSION/Bluetooth/acsdkBluetooth/test/SQLiteBluetoothStorageTest: Storage/SQLiteStorage/src/libSQLiteStorage.so
EXTENSION/Bluetooth/acsdkBluetooth/test/SQLiteBluetoothStorageTest: ThirdParty/googletest-release-1.8.0/googlemock/gtest/libgtest_main.a
EXTENSION/Bluetooth/acsdkBluetooth/test/SQLiteBluetoothStorageTest: ThirdParty/googletest-release-1.8.0/googlemock/gtest/libgtest.a
EXTENSION/Bluetooth/acsdkBluetooth/test/SQLiteBluetoothStorageTest: AVSCommon/libAVSCommon.so
EXTENSION/Bluetooth/acsdkBluetooth/test/SQLiteBluetoothStorageTest: /usr/lib/arm-linux-gnueabihf/libcurl.so
EXTENSION/Bluetooth/acsdkBluetooth/test/SQLiteBluetoothStorageTest: EXTENSION/Bluetooth/acsdkBluetooth/test/CMakeFiles/SQLiteBluetoothStorageTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable SQLiteBluetoothStorageTest"
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Bluetooth/acsdkBluetooth/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SQLiteBluetoothStorageTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
EXTENSION/Bluetooth/acsdkBluetooth/test/CMakeFiles/SQLiteBluetoothStorageTest.dir/build: EXTENSION/Bluetooth/acsdkBluetooth/test/SQLiteBluetoothStorageTest

.PHONY : EXTENSION/Bluetooth/acsdkBluetooth/test/CMakeFiles/SQLiteBluetoothStorageTest.dir/build

EXTENSION/Bluetooth/acsdkBluetooth/test/CMakeFiles/SQLiteBluetoothStorageTest.dir/clean:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Bluetooth/acsdkBluetooth/test && $(CMAKE_COMMAND) -P CMakeFiles/SQLiteBluetoothStorageTest.dir/cmake_clean.cmake
.PHONY : EXTENSION/Bluetooth/acsdkBluetooth/test/CMakeFiles/SQLiteBluetoothStorageTest.dir/clean

EXTENSION/Bluetooth/acsdkBluetooth/test/CMakeFiles/SQLiteBluetoothStorageTest.dir/depend:
	cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/capabilities/Bluetooth/acsdkBluetooth/test /home/pi/SmartMusicDisplay/sdk-folder/sdk-build /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Bluetooth/acsdkBluetooth/test /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Bluetooth/acsdkBluetooth/test/CMakeFiles/SQLiteBluetoothStorageTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : EXTENSION/Bluetooth/acsdkBluetooth/test/CMakeFiles/SQLiteBluetoothStorageTest.dir/depend

