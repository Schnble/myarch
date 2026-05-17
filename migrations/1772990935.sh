echo "Add sample low battery notification hook"

mkdir -p ~/.config/myarch/hooks/battery-low.d

if [[ ! -f ~/.config/myarch/hooks/battery-low.d/play-warning-sound.sample ]]; then
  cp "$MYARCH_PATH/config/myarch/hooks/battery-low.d/play-warning-sound.sample" ~/.config/myarch/hooks/battery-low.d/play-warning-sound.sample
fi
