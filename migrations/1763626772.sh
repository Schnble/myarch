echo "Make hackerman available as new theme"

if [[ ! -L ~/.config/myarch/themes/hackerman ]]; then
  rm -rf ~/.config/myarch/themes/hackerman
  ln -nfs ~/.local/share/myarch/themes/hackerman ~/.config/myarch/themes/
fi
