# CMake generated Testfile for 
# Source directory: /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/shared/acsdkNotifier/test
# Build directory: /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/shared/acsdkNotifier/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(NotifierTest.test_simplestNotification "/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/shared/acsdkNotifier/test/NotifierTest" "--gtest_filter=NotifierTest.test_simplestNotification" "AVSCommon")
set_tests_properties(NotifierTest.test_simplestNotification PROPERTIES  _BACKTRACE_TRIPLES "/usr/share/cmake-3.16/Modules/GoogleTest.cmake;353;add_test;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/tools/Testing.cmake;46;GTEST_ADD_TESTS;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/tools/Testing.cmake;36;configure_test_command;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/shared/acsdkNotifier/test/CMakeLists.txt;3;discover_unit_tests;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/shared/acsdkNotifier/test/CMakeLists.txt;0;")
add_test(NotifierTest.test_notificationOrder "/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/shared/acsdkNotifier/test/NotifierTest" "--gtest_filter=NotifierTest.test_notificationOrder" "AVSCommon")
set_tests_properties(NotifierTest.test_notificationOrder PROPERTIES  _BACKTRACE_TRIPLES "/usr/share/cmake-3.16/Modules/GoogleTest.cmake;353;add_test;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/tools/Testing.cmake;46;GTEST_ADD_TESTS;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/tools/Testing.cmake;36;configure_test_command;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/shared/acsdkNotifier/test/CMakeLists.txt;3;discover_unit_tests;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/shared/acsdkNotifier/test/CMakeLists.txt;0;")
add_test(NotifierTest.test_duplicateAdditions "/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/shared/acsdkNotifier/test/NotifierTest" "--gtest_filter=NotifierTest.test_duplicateAdditions" "AVSCommon")
set_tests_properties(NotifierTest.test_duplicateAdditions PROPERTIES  _BACKTRACE_TRIPLES "/usr/share/cmake-3.16/Modules/GoogleTest.cmake;353;add_test;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/tools/Testing.cmake;46;GTEST_ADD_TESTS;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/tools/Testing.cmake;36;configure_test_command;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/shared/acsdkNotifier/test/CMakeLists.txt;3;discover_unit_tests;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/shared/acsdkNotifier/test/CMakeLists.txt;0;")
add_test(NotifierTest.test_removingObservers "/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/shared/acsdkNotifier/test/NotifierTest" "--gtest_filter=NotifierTest.test_removingObservers" "AVSCommon")
set_tests_properties(NotifierTest.test_removingObservers PROPERTIES  _BACKTRACE_TRIPLES "/usr/share/cmake-3.16/Modules/GoogleTest.cmake;353;add_test;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/tools/Testing.cmake;46;GTEST_ADD_TESTS;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/tools/Testing.cmake;36;configure_test_command;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/shared/acsdkNotifier/test/CMakeLists.txt;3;discover_unit_tests;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/shared/acsdkNotifier/test/CMakeLists.txt;0;")
add_test(NotifierTest.test_notificationInReverseOrder "/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/shared/acsdkNotifier/test/NotifierTest" "--gtest_filter=NotifierTest.test_notificationInReverseOrder" "AVSCommon")
set_tests_properties(NotifierTest.test_notificationInReverseOrder PROPERTIES  _BACKTRACE_TRIPLES "/usr/share/cmake-3.16/Modules/GoogleTest.cmake;353;add_test;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/tools/Testing.cmake;46;GTEST_ADD_TESTS;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/tools/Testing.cmake;36;configure_test_command;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/shared/acsdkNotifier/test/CMakeLists.txt;3;discover_unit_tests;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/shared/acsdkNotifier/test/CMakeLists.txt;0;")
add_test(NotifierTest.test_removeWithinCallback "/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/shared/acsdkNotifier/test/NotifierTest" "--gtest_filter=NotifierTest.test_removeWithinCallback" "AVSCommon")
set_tests_properties(NotifierTest.test_removeWithinCallback PROPERTIES  _BACKTRACE_TRIPLES "/usr/share/cmake-3.16/Modules/GoogleTest.cmake;353;add_test;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/tools/Testing.cmake;46;GTEST_ADD_TESTS;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/tools/Testing.cmake;36;configure_test_command;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/shared/acsdkNotifier/test/CMakeLists.txt;3;discover_unit_tests;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/shared/acsdkNotifier/test/CMakeLists.txt;0;")
add_test(NotifierTest.test_removeAndAdditionWithinReverseOrderCallback "/home/pi/SmartMusicDisplay/sdk-folder/sdk-build/shared/acsdkNotifier/test/NotifierTest" "--gtest_filter=NotifierTest.test_removeAndAdditionWithinReverseOrderCallback" "AVSCommon")
set_tests_properties(NotifierTest.test_removeAndAdditionWithinReverseOrderCallback PROPERTIES  _BACKTRACE_TRIPLES "/usr/share/cmake-3.16/Modules/GoogleTest.cmake;353;add_test;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/tools/Testing.cmake;46;GTEST_ADD_TESTS;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/tools/Testing.cmake;36;configure_test_command;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/shared/acsdkNotifier/test/CMakeLists.txt;3;discover_unit_tests;/home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/shared/acsdkNotifier/test/CMakeLists.txt;0;")
