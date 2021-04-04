cd /home/pi/DecibelDisplay/sdk-folder/sdk-source/avs-device-sdk/tools/Install
bash genConfig.sh config.json 12345 \
 /home/pi/DecibelDisplay/sdk-folder/db \
 /home/pi/DecibelDisplay/sdk-folder/sdk-source/avs-device-sdk \
 /home/pi/DecibelDisplay/sdk-folder/sdk-build/Integration/AlexaClientSDKConfig.json \
 -DSDK_CONFIG_MANUFACTURER_NAME="raspberrypi" \
 -DSDK_CONFIG_DEVICE_DESCRIPTION="raspberrypi"

