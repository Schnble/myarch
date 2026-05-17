echo "Make ethereal available as new theme"

if [[ ! -L ~/.config/myarch/themes/ethereal ]]; then
  rm -rf ~/.config/myarch/themes/ethereal
  ln -nfs ~/.local/share/myarch/themes/ethereal ~/.config/myarch/themes/
fi
