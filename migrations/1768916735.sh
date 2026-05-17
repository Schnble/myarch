echo "Fix microphone gain and audio mixing on Asus ROG laptops"

source "$MYARCH_PATH/install/config/hardware/asus/fix-mic.sh"
source "$MYARCH_PATH/install/config/hardware/asus/fix-audio-mixer.sh"

if myarch-hw-asus-rog; then
  myarch-restart-pipewire
fi
