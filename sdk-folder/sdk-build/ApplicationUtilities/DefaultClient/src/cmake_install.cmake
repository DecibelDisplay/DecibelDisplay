# Install script for directory: /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/ApplicationUtilities/DefaultClient/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/libDefaultClient.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/libDefaultClient.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/lib/libDefaultClient.so"
         RPATH "/usr/local/lib")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/libDefaultClient.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/lib" TYPE SHARED_LIBRARY FILES "/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/ApplicationUtilities/DefaultClient/src/libDefaultClient.so")
  if(EXISTS "$ENV{DESTDIR}/usr/local/lib/libDefaultClient.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/lib/libDefaultClient.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/lib/libDefaultClient.so"
         OLD_RPATH "/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/BluetoothImplementations/BlueZ/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/applications/acsdkDefaultDeviceSettingsManager/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/core/acsdkCore/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/shared/acsdkShared/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/AIP/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/ApiGateway/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/System/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/Captions/Component/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/DoNotDisturb/acsdkDoNotDisturb/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/InteractionModel/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Notifications/acsdkNotifications/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/PlaybackController/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/ApplicationUtilities/SDKComponent/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/SoftwareComponentReporter/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/SpeechSynthesizer/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/ApplicationUtilities/SystemSoundPlayer/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/TemplateRuntime/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Alerts/acsdkAlerts/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/AudioPlayer/acsdkAudioPlayer/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Bluetooth/acsdkBluetooth/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Equalizer/acsdkEqualizer/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/ExternalMediaPlayer/acsdkExternalMediaPlayer/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/ADSL/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/SpeechEncoder/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/ACL/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/Settings/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/SpeakerManager/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/AFML/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/InterruptModel/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/core/acsdkPostConnectOperationProviderRegistrar/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/shared/acsdkStartupManager/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/AVSGatewayManager/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilitiesDelegate/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/Endpoints/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CapabilityAgents/Alexa/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/shared/acsdkShutdownManager/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/SynchronizeStateSender/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/ApplicationUtilities/Resources/Audio/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/ContextManager/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/Captions/Interface/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/Equalizer/acsdkEqualizerImplementations/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/shared/acsdkManufactory/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/CertifiedSender/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/RegistrationManager/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/Storage/SQLiteStorage/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/EXTENSION/ExternalMediaPlayer/acsdkExternalMediaPlayerInterfaces/src:/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/AVSCommon:"
         NEW_RPATH "/usr/local/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/lib/libDefaultClient.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE DIRECTORY FILES "/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/ApplicationUtilities/DefaultClient/include")
endif()

