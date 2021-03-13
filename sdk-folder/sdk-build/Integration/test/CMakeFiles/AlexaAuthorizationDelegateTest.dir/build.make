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
include Integration/test/CMakeFiles/AlexaAuthorizationDelegateTest.dir/depend.make

# Include the progress variables for this target.
include Integration/test/CMakeFiles/AlexaAuthorizationDelegateTest.dir/progress.make

# Include the compile flags for this target's objects.
include Integration/test/CMakeFiles/AlexaAuthorizationDelegateTest.dir/flags.make

Integration/test/CMakeFiles/AlexaAuthorizationDelegateTest.dir/AlexaAuthorizationDelegateTest.cpp.o: Integration/test/CMakeFiles/AlexaAuthorizationDelegateTest.dir/flags.make
Integration/test/CMakeFiles/AlexaAuthorizationDelegateTest.dir/AlexaAuthorizationDelegateTest.cpp.o: /home/pi/sdk-folder/sdk-source/avs-device-sdk/Integration/test/AlexaAuthorizationDelegateTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Integration/test/CMakeFiles/AlexaAuthorizationDelegateTest.dir/AlexaAuthorizationDelegateTest.cpp.o"
	cd /home/pi/sdk-folder/sdk-build/Integration/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AlexaAuthorizationDelegateTest.dir/AlexaAuthorizationDelegateTest.cpp.o -c /home/pi/sdk-folder/sdk-source/avs-device-sdk/Integration/test/AlexaAuthorizationDelegateTest.cpp

Integration/test/CMakeFiles/AlexaAuthorizationDelegateTest.dir/AlexaAuthorizationDelegateTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AlexaAuthorizationDelegateTest.dir/AlexaAuthorizationDelegateTest.cpp.i"
	cd /home/pi/sdk-folder/sdk-build/Integration/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/sdk-folder/sdk-source/avs-device-sdk/Integration/test/AlexaAuthorizationDelegateTest.cpp > CMakeFiles/AlexaAuthorizationDelegateTest.dir/AlexaAuthorizationDelegateTest.cpp.i

Integration/test/CMakeFiles/AlexaAuthorizationDelegateTest.dir/AlexaAuthorizationDelegateTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AlexaAuthorizationDelegateTest.dir/AlexaAuthorizationDelegateTest.cpp.s"
	cd /home/pi/sdk-folder/sdk-build/Integration/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/sdk-folder/sdk-source/avs-device-sdk/Integration/test/AlexaAuthorizationDelegateTest.cpp -o CMakeFiles/AlexaAuthorizationDelegateTest.dir/AlexaAuthorizationDelegateTest.cpp.s

# Object files for target AlexaAuthorizationDelegateTest
AlexaAuthorizationDelegateTest_OBJECTS = \
"CMakeFiles/AlexaAuthorizationDelegateTest.dir/AlexaAuthorizationDelegateTest.cpp.o"

# External object files for target AlexaAuthorizationDelegateTest
AlexaAuthorizationDelegateTest_EXTERNAL_OBJECTS =

Integration/test/AlexaAuthorizationDelegateTest: Integration/test/CMakeFiles/AlexaAuthorizationDelegateTest.dir/AlexaAuthorizationDelegateTest.cpp.o
Integration/test/AlexaAuthorizationDelegateTest: Integration/test/CMakeFiles/AlexaAuthorizationDelegateTest.dir/build.make
Integration/test/AlexaAuthorizationDelegateTest: CapabilityAgents/AIP/src/libAIP.so
Integration/test/AlexaAuthorizationDelegateTest: CapabilityAgents/System/src/libAVSSystem.so
Integration/test/AlexaAuthorizationDelegateTest: Integration/src/libIntegration.a
Integration/test/AlexaAuthorizationDelegateTest: ThirdParty/googletest-release-1.8.0/googlemock/gtest/libgtest.a
Integration/test/AlexaAuthorizationDelegateTest: ThirdParty/googletest-release-1.8.0/googlemock/libgmock.a
Integration/test/AlexaAuthorizationDelegateTest: CapabilityAgents/PlaybackController/src/libPlaybackController.so
Integration/test/AlexaAuthorizationDelegateTest: CapabilityAgents/SpeechSynthesizer/src/libSpeechSynthesizer.so
Integration/test/AlexaAuthorizationDelegateTest: CapabilityAgents/InteractionModel/src/libInteractionModel.so
Integration/test/AlexaAuthorizationDelegateTest: AVSCommon/Utils/test/Common/libUtilsCommonTestLib.a
Integration/test/AlexaAuthorizationDelegateTest: AVSCommon/SDKInterfaces/test/libSDKInterfacesTests.a
Integration/test/AlexaAuthorizationDelegateTest: EXTENSION/Alerts/acsdkAlerts/src/libacsdkAlerts.so
Integration/test/AlexaAuthorizationDelegateTest: EXTENSION/AudioPlayer/acsdkAudioPlayer/src/libacsdkAudioPlayer.so
Integration/test/AlexaAuthorizationDelegateTest: KWD/Sensory/src/libSENSORY.so
Integration/test/AlexaAuthorizationDelegateTest: MediaPlayer/GStreamerMediaPlayer/src/libMediaPlayer.so
Integration/test/AlexaAuthorizationDelegateTest: ADSL/src/libADSL.so
Integration/test/AlexaAuthorizationDelegateTest: AFML/src/libAFML.so
Integration/test/AlexaAuthorizationDelegateTest: InterruptModel/src/libInterruptModel.so
Integration/test/AlexaAuthorizationDelegateTest: SpeechEncoder/src/libSpeechEncoder.so
Integration/test/AlexaAuthorizationDelegateTest: ApplicationUtilities/SystemSoundPlayer/src/libSystemSoundPlayer.so
Integration/test/AlexaAuthorizationDelegateTest: ACL/src/libACL.so
Integration/test/AlexaAuthorizationDelegateTest: SampleApp/Authorization/CBLAuthDelegate/src/libCBLAuthDelegate.so
Integration/test/AlexaAuthorizationDelegateTest: Settings/src/libDeviceSettings.so
Integration/test/AlexaAuthorizationDelegateTest: CertifiedSender/src/libCertifiedSender.so
Integration/test/AlexaAuthorizationDelegateTest: Storage/SQLiteStorage/src/libSQLiteStorage.so
Integration/test/AlexaAuthorizationDelegateTest: RegistrationManager/src/libRegistrationManager.so
Integration/test/AlexaAuthorizationDelegateTest: ApplicationUtilities/Resources/Audio/src/libAudioResources.so
Integration/test/AlexaAuthorizationDelegateTest: SynchronizeStateSender/src/libSynchronizeStateSender.so
Integration/test/AlexaAuthorizationDelegateTest: ContextManager/src/libContextManager.so
Integration/test/AlexaAuthorizationDelegateTest: ThirdParty/googletest-release-1.8.0/googlemock/gtest/libgtest_main.a
Integration/test/AlexaAuthorizationDelegateTest: ThirdParty/googletest-release-1.8.0/googlemock/gtest/libgtest.a
Integration/test/AlexaAuthorizationDelegateTest: ThirdParty/googletest-release-1.8.0/googlemock/libgmock_main.a
Integration/test/AlexaAuthorizationDelegateTest: shared/acsdkManufactory/src/libacsdkManufactory.so
Integration/test/AlexaAuthorizationDelegateTest: Captions/Interface/src/libCaptions.so
Integration/test/AlexaAuthorizationDelegateTest: KWD/src/libKWD.so
Integration/test/AlexaAuthorizationDelegateTest: /home/pi/sdk-folder/third-party/alexa-rpi/lib/libsnsr.a
Integration/test/AlexaAuthorizationDelegateTest: PlaylistParser/src/libPlaylistParser.so
Integration/test/AlexaAuthorizationDelegateTest: AVSCommon/libAVSCommon.so
Integration/test/AlexaAuthorizationDelegateTest: /usr/lib/arm-linux-gnueabihf/libcurl.so
Integration/test/AlexaAuthorizationDelegateTest: Integration/test/CMakeFiles/AlexaAuthorizationDelegateTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/sdk-folder/sdk-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable AlexaAuthorizationDelegateTest"
	cd /home/pi/sdk-folder/sdk-build/Integration/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AlexaAuthorizationDelegateTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Integration/test/CMakeFiles/AlexaAuthorizationDelegateTest.dir/build: Integration/test/AlexaAuthorizationDelegateTest

.PHONY : Integration/test/CMakeFiles/AlexaAuthorizationDelegateTest.dir/build

Integration/test/CMakeFiles/AlexaAuthorizationDelegateTest.dir/clean:
	cd /home/pi/sdk-folder/sdk-build/Integration/test && $(CMAKE_COMMAND) -P CMakeFiles/AlexaAuthorizationDelegateTest.dir/cmake_clean.cmake
.PHONY : Integration/test/CMakeFiles/AlexaAuthorizationDelegateTest.dir/clean

Integration/test/CMakeFiles/AlexaAuthorizationDelegateTest.dir/depend:
	cd /home/pi/sdk-folder/sdk-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/sdk-folder/sdk-source/avs-device-sdk /home/pi/sdk-folder/sdk-source/avs-device-sdk/Integration/test /home/pi/sdk-folder/sdk-build /home/pi/sdk-folder/sdk-build/Integration/test /home/pi/sdk-folder/sdk-build/Integration/test/CMakeFiles/AlexaAuthorizationDelegateTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Integration/test/CMakeFiles/AlexaAuthorizationDelegateTest.dir/depend

