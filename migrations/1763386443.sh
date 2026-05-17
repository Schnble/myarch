echo "Uniquely identify terminal apps with custom app-ids using myarch-launch-tui"

# Replace terminal -e calls with myarch-launch-tui in bindings
sed -i 's/\$terminal -e \([^ ]*\)/myarch-launch-tui \1/g' ~/.config/hypr/bindings.conf

# Update waybar to use myarch-launch-or-focus with myarch-launch-tui for TUI apps
sed -i 's|xdg-terminal-exec btop|myarch-launch-or-focus-tui btop|' ~/.config/waybar/config.jsonc
sed -i 's|xdg-terminal-exec --app-id=com\.myarch\.Wiremix -e wiremix|myarch-launch-or-focus-tui wiremix|' ~/.config/waybar/config.jsonc
