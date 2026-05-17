echo "Install swayOSD to show volume status"

if myarch-cmd-missing swayosd-server; then
  myarch-pkg-add swayosd
  setsid uwsm-app -- swayosd-server &>/dev/null &
fi
