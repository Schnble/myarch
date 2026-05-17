echo "Update Waybar for new Myarch menu"

if ! grep -q "" ~/.config/waybar/config.jsonc; then
  myarch-refresh-waybar
fi
