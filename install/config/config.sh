# Copy over Myarch configs
mkdir -p ~/.config
cp -R ~/.local/share/myarch/config/* ~/.config/

# Use default bashrc from Myarch
cp ~/.local/share/myarch/default/bashrc ~/.bashrc
