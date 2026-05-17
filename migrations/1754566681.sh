echo "Make new Osaka Jade theme available as new default"

if [[ ! -L ~/.config/myarch/themes/osaka-jade ]]; then
  rm -rf ~/.config/myarch/themes/osaka-jade
  git -C ~/.local/share/myarch checkout -f themes/osaka-jade
  ln -nfs ~/.local/share/myarch/themes/osaka-jade ~/.config/myarch/themes/osaka-jade
fi
