echo "6Ghz Wi-Fi + Intel graphics acceleration for existing installations"

bash "$MYARCH_PATH/install/config/hardware/set-wireless-regdom.sh"
bash "$MYARCH_PATH/install/config/hardware/intel/video-acceleration.sh"
