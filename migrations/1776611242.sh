echo "Install socat so we can reactivate internal display when external display is removed"

myarch-pkg-add socat
uwsm-app -- myarch-hyprland-monitor-watch &
