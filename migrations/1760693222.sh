echo "Use explicit timezone selector when right-clicking on clock"

sed -i 's/myarch-cmd-tzupdate/myarch-launch-floating-terminal-with-presentation myarch-tz-select/g' ~/.config/waybar/config.jsonc
