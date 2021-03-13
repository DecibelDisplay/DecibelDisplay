# CMake generated Testfile for 
# Source directory: /home/pi/sdk-folder/sdk-source/avs-device-sdk/SpeechEncoder/test
# Build directory: /home/pi/sdk-folder/sdk-build/SpeechEncoder/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(SpeechEncoderTest.testTimer_startEncoding "/home/pi/sdk-folder/sdk-build/SpeechEncoder/test/SpeechEncoderTest" "--gtest_filter=SpeechEncoderTest.testTimer_startEncoding")
set_tests_properties(SpeechEncoderTest.testTimer_startEncoding PROPERTIES  LABELS "timertest" _BACKTRACE_TRIPLES "/usr/share/cmake-3.16/Modules/GoogleTest.cmake;353;add_test;/home/pi/sdk-folder/sdk-source/avs-device-sdk/tools/Testing.cmake;46;GTEST_ADD_TESTS;/home/pi/sdk-folder/sdk-source/avs-device-sdk/tools/Testing.cmake;36;configure_test_command;/home/pi/sdk-folder/sdk-source/avs-device-sdk/SpeechEncoder/test/CMakeLists.txt;1;discover_unit_tests;/home/pi/sdk-folder/sdk-source/avs-device-sdk/SpeechEncoder/test/CMakeLists.txt;0;")
add_test(SpeechEncoderTest.test_shutdownOnBlockingWrite "/home/pi/sdk-folder/sdk-build/SpeechEncoder/test/SpeechEncoderTest" "--gtest_filter=SpeechEncoderTest.test_shutdownOnBlockingWrite")
set_tests_properties(SpeechEncoderTest.test_shutdownOnBlockingWrite PROPERTIES  _BACKTRACE_TRIPLES "/usr/share/cmake-3.16/Modules/GoogleTest.cmake;353;add_test;/home/pi/sdk-folder/sdk-source/avs-device-sdk/tools/Testing.cmake;46;GTEST_ADD_TESTS;/home/pi/sdk-folder/sdk-source/avs-device-sdk/tools/Testing.cmake;36;configure_test_command;/home/pi/sdk-folder/sdk-source/avs-device-sdk/SpeechEncoder/test/CMakeLists.txt;1;discover_unit_tests;/home/pi/sdk-folder/sdk-source/avs-device-sdk/SpeechEncoder/test/CMakeLists.txt;0;")
