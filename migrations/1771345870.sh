echo "Switch lmstudio -> lmstudio-bin"

if pacman -Q lmstudio &>/dev/null; then
  myarch-pkg-drop lmstudio
  myarch-pkg-add lmstudio-bin
fi
