echo "Add the new Flexoki Light theme"

if [[ ! -L ~/.config/myarch/themes/flexoki-light ]]; then
  ln -nfs ~/.local/share/myarch/themes/flexoki-light ~/.config/myarch/themes/
fi
