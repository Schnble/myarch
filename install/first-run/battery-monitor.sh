if myarch-battery-present; then
  powerprofilesctl set balanced || true

  # Enable battery monitoring timer for low battery notifications
  systemctl --user enable --now myarch-battery-monitor.timer
else
  powerprofilesctl set performance || true
fi
