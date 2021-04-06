#rm -rf ./sdk-build
mkdir sdk-build
cd sdk-build

cmake /home/pi/DecibelDisplay/sdk-folder/sdk-source/avs-device-sdk \
 -DSENSORY_KEY_WORD_DETECTOR=ON \
 -DSENSORY_KEY_WORD_DETECTOR_LIB_PATH=/home/pi/DecibelDisplay/sdk-folder/third-party/alexa-rpi/lib/libsnsr.a \
 -DSENSORY_KEY_WORD_DETECTOR_INCLUDE_DIR=/home/pi/DecibelDisplay/sdk-folder/third-party/alexa-rpi/include \
 -DGSTREAMER_MEDIA_PLAYER=ON \
 -DBLUETOOTH_BLUEZ=ON \
 -DBLUETOOTH_BLUEZ_PULSEAUDIO_OVERRIDE_ENDPOINTS=ON \
 -DPORTAUDIO=ON \
 -DCMAKE_BUILD_TYPE=DEBUG \
 -DPORTAUDIO_LIB_PATH=/home/pi/DecibelDisplay/sdk-folder/third-party/portaudio/lib/.libs/libportaudio.a \
 -DPORTAUDIO_INCLUDE_DIR=/home/pi/DecibelDisplay/sdk-folder/third-party/portaudio/include

make SampleApp -j4
