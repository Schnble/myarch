echo "Rename screen recording command"

WAYBAR_CONFIG="$HOME/.config/waybar/config.jsonc"

if [[ -f $WAYBAR_CONFIG ]] && grep -q 'myarch-capture-screencording' "$WAYBAR_CONFIG"; then
  sed -i 's/myarch-capture-screencording/myarch-capture-screenrecording/g' "$WAYBAR_CONFIG"
  myarch-restart-waybar
fi
