echo "Use interactive unlock (Plymouth) selector menu"

mkdir -p ~/.config/elephant/menus
ln -snf $MYARCH_PATH/default/elephant/myarch_unlocks.lua ~/.config/elephant/menus/myarch_unlocks.lua
myarch-restart-walker
