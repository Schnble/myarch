echo "Use interactive background selector menu"

mkdir -p ~/.config/elephant/menus
ln -snf $MYARCH_PATH/default/elephant/myarch_background_selector.lua ~/.config/elephant/menus/myarch_background_selector.lua
myarch-restart-walker
