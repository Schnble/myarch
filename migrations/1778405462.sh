echo "Create Mako and Walker toggle configs"

mkdir -p ~/.local/state/myarch/toggles
[[ -f ~/.local/state/myarch/toggles/mako.ini ]] || touch ~/.local/state/myarch/toggles/mako.ini
[[ -f ~/.local/state/myarch/toggles/walker.css ]] || touch ~/.local/state/myarch/toggles/walker.css
