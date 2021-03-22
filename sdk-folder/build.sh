rm -rf ./sdk-build
mkdir sdk-build
cd sdk-build

cmake /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk \
 -DSENSORY_KEY_WORD_DETECTOR=ON \
 -DSENSORY_KEY_WORD_DETECTOR_LIB_PATH=/home/pi/SmartMusicDisplay/sdk-folder/third-party/alexa-rpi/lib/libsnsr.a \
 -DSENSORY_KEY_WORD_DETECTOR_INCLUDE_DIR=/home/pi/SmartMusicDisplay/sdk-folder/third-party/alexa-rpi/include \
 -DGSTREAMER_MEDIA_PLAYER=ON \
 -DBLUETOOTH_BLUEZ=ON \
 -DBLUETOOTH_BLUEZ_PULSEAUDIO_OVERRIDE_ENDPOINTS=ON \
 -DPORTAUDIO=ON \
 -DPORTAUDIO_LIB_PATH=/home/pi/SmartMusicDisplay/sdk-folder/third-party/portaudio/lib/.libs/libportaudio.a \
 -DPORTAUDIO_INCLUDE_DIR=/home/pi/SmartMusicDisplay/sdk-folder/third-party/portaudio/include

make SampleApp

