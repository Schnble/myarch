echo "Add Catppuccin Latte light theme"

if [[ ! -L $HOME/.config/myarch/themes/catppuccin-latte ]]; then
  ln -snf ~/.local/share/myarch/themes/catppuccin-latte ~/.config/myarch/themes/
fi
