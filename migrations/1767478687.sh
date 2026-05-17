echo "Add opencode with system theming"

myarch-pkg-add opencode

# Add config using myarch theme by default
if [[ ! -f ~/.config/opencode/opencode.json ]]; then
  mkdir -p ~/.config/opencode
  cp $MYARCH_PATH/config/opencode/opencode.json ~/.config/opencode/opencode.json
fi
