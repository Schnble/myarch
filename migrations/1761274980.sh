echo "Migrate to proper packages for localsend and asdcontrol"

if myarch-pkg-present localsend-bin; then
  myarch-pkg-drop localsend-bin
  myarch-pkg-add localsend
fi

if myarch-pkg-present asdcontrol-git; then
  myarch-pkg-drop asdcontrol-git
  myarch-pkg-add asdcontrol
fi
