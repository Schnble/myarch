echo "Update Waybar screen recording command"

WAYBAR_CONFIG="$HOME/.config/waybar/config.jsonc"

if [[ -f $WAYBAR_CONFIG ]] && grep -q 'myarch-cmd-screenrecord' "$WAYBAR_CONFIG"; then
  sed -i 's/myarch-cmd-screenrecord/myarch-capture-screenrecording/g' "$WAYBAR_CONFIG"
  myarch-restart-waybar
fi
