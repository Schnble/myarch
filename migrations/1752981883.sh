echo "Replace wofi with walker as the default launcher"

if myarch-cmd-missing walker; then
  myarch-pkg-add walker-bin libqalculate

  myarch-pkg-drop wofi
  rm -rf ~/.config/wofi

  mkdir -p ~/.config/walker
  cp -r ~/.local/share/myarch/config/walker/* ~/.config/walker/
fi
