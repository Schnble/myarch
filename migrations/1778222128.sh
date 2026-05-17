echo "Add sample post-boot hook"

mkdir -p ~/.config/myarch/hooks/post-boot.d

if [[ ! -f ~/.config/myarch/hooks/post-boot.d/weather.sample ]]; then
  cp "$MYARCH_PATH/config/myarch/hooks/post-boot.d/weather.sample" ~/.config/myarch/hooks/post-boot.d/weather.sample
fi
