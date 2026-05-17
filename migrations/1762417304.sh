echo "Replace bluetooth GUI with TUI"

myarch-pkg-add bluetui
myarch-pkg-drop blueberry

if ! grep -q "myarch-launch-bluetooth" ~/.config/waybar/config.jsonc; then
  sed -i 's/blueberry/myarch-launch-bluetooth/' ~/.config/waybar/config.jsonc
fi
