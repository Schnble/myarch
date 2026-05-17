echo "Install Impala as new wifi selection TUI"

if myarch-cmd-missing impala; then
  myarch-pkg-add impala
  myarch-refresh-waybar
fi
