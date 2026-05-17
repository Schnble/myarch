echo "Fix display backlight on supported ASUS Panther Lake laptops"

EXPERTBOOK_DROP_IN="/etc/limine-entry-tool.d/asus-expertbook-b9406-display.conf"

if myarch-hw-asus-expertbook-b9406 || myarch-hw-asus-zenbook-ux5406aa; then
  if [[ -f $EXPERTBOOK_DROP_IN ]]; then
    sudo sed -i '/xe\.enable_dpcd_backlight/d' "$EXPERTBOOK_DROP_IN"
  fi

  source "$MYARCH_PATH/install/config/hardware/asus/fix-asus-ptl-display-backlight.sh"

  if myarch-cmd-present limine-update; then
    sudo limine-update
  fi
fi
