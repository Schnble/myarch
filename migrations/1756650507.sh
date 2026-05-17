echo "Fix JetBrains font setting"

if [[ $(myarch-font-current) == JetBrains* ]]; then
  myarch-font-set "JetBrainsMono Nerd Font"
fi
