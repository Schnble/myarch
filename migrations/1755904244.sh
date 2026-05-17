echo "Update fastfetch config with new Myarch logo"

myarch-refresh-config fastfetch/config.jsonc

mkdir -p ~/.config/myarch/branding
cp $MYARCH_PATH/icon.txt ~/.config/myarch/branding/about.txt
