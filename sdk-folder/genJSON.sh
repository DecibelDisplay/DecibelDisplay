cd /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk/tools/Install
bash genConfig.sh config.json 12345 \
 /home/pi/SmartMusicDisplay/sdk-folder/db \
 /home/pi/SmartMusicDisplay/sdk-folder/sdk-source/avs-device-sdk \
 /home/pi/SmartMusicDisplay/sdk-folder/sdk-build/Integration/AlexaClientSDKConfig.json \
 -DSDK_CONFIG_MANUFACTURER_NAME="raspberrypi" \
 -DSDK_CONFIG_DEVICE_DESCRIPTION="raspberrypi"

