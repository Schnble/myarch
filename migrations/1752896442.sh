echo "Replace volume control GUI with a TUI"

if myarch-cmd-missing wiremix; then
  myarch-pkg-add wiremix
  myarch-pkg-drop pavucontrol
  myarch-refresh-applications
  myarch-refresh-waybar
fi
