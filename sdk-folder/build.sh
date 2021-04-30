#rm -rf ./sdk-build
mkdir sdk-build
cd sdk-build

cmake /home/pi/DecibelDisplay/sdk-folder/sdk-source/avs-device-sdk \
 -DSENSORY_KEY_WORD_DETECTOR=OFF \
 -DKITTAI_KEY_WORD_DETECTOR=ON \
 -DKITTAI_KEY_WORD_DETECTOR_LIB_PATH=/home/pi/DecibelDisplay/sdk-folder/third-party/snowboy/lib/aarch64-ubuntu1604/libsnowboy-detect.a \
 -DKITTAI_KEY_WORD_DETECTOR_INCLUDE_DIR=/home/pi/DecibelDisplay/sdk-folder/third-party/snowboy/include \
 -DGSTREAMER_MEDIA_PLAYER=ON \
 -DBLUETOOTH_BLUEZ=ON \
 -DPORTAUDIO=ON \
 -DPORTAUDIO_LIB_PATH=/home/pi/DecibelDisplay/sdk-folder/third-party/portaudio/lib/.libs/libportaudio.a \
 -DPORTAUDIO_INCLUDE_DIR=/home/pi/DecibelDisplay/sdk-folder/third-party/portaudio/include

make SampleApp -j2
