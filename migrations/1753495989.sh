echo "Allow updating of timezone by right-clicking on the clock (or running myarch-cmd-tzupdate)"

if myarch-cmd-missing tzupdate; then
  bash "$MYARCH_PATH/install/config/timezones.sh"
  myarch-refresh-waybar
fi
