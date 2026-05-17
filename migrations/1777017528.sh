echo "Show battery status notification on right-click of the waybar battery icon"

if ! grep -q 'myarch-battery-status' ~/.config/waybar/config.jsonc; then
  sed -i '/"on-click": "myarch-menu power",/a\    "on-click-right": "notify-send -u low \\"$(myarch-battery-status)\\"",' ~/.config/waybar/config.jsonc
  myarch-restart-waybar
fi
