if [[ $(plymouth-set-default-theme) != "myarch" ]]; then
  sudo cp -r "$HOME/.local/share/myarch/default/plymouth" /usr/share/plymouth/themes/myarch/
  sudo plymouth-set-default-theme myarch
fi
