echo "Add emoji font fallback to fontconfig"
cp $MYARCH_PATH/config/fontconfig/fonts.conf ~/.config/fontconfig/fonts.conf
fc-cache -f
