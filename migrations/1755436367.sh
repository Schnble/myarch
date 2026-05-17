echo "Add minimal starship prompt to terminal"

if myarch-cmd-missing starship; then
  myarch-pkg-add starship
  cp $MYARCH_PATH/config/starship.toml ~/.config/starship.toml
fi
