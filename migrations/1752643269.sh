echo "Add new matte black theme"

if [[ ! -L $HOME/.config/myarch/themes/matte-black ]]; then
  ln -snf ~/.local/share/myarch/themes/matte-black ~/.config/myarch/themes/
fi
