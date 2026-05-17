echo "Add right-click terminal action to waybar myarch menu icon"

WAYBAR_CONFIG="$HOME/.config/waybar/config.jsonc"

if [[ -f $WAYBAR_CONFIG ]] && ! grep -A5 '"custom/myarch"' "$WAYBAR_CONFIG" | grep -q '"on-click-right"'; then
  sed -i '/"on-click": "myarch-menu",/a\    "on-click-right": "myarch-launch-terminal",' "$WAYBAR_CONFIG"
fi
