echo "Change to myarch-nvim package"
myarch-pkg-drop myarch-lazyvim
myarch-pkg-add myarch-nvim

# Will trigger to overwrite configs or not to pickup new hot-reload themes
myarch-nvim-setup
