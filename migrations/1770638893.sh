echo "Add Tmux as an option with themed styling"

myarch-pkg-add tmux

if [[ ! -f ~/.config/tmux/tmux.conf ]]; then
  mkdir -p ~/.config/tmux
  cp $MYARCH_PATH/config/tmux/tmux.conf ~/.config/tmux/tmux.conf
  myarch-theme-refresh
fi
