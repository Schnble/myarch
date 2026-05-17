echo "Add the new ristretto theme as an option"

if [[ ! -L ~/.config/myarch/themes/ristretto ]]; then
  ln -nfs ~/.local/share/myarch/themes/ristretto ~/.config/myarch/themes/
fi
