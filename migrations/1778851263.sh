echo "Set BROWSER to Myarch browser launcher for detached terminal URL opens"

if [[ -f ~/.config/uwsm/default ]]; then
  if grep -q '^export BROWSER=' ~/.config/uwsm/default; then
    sed -i 's|^export BROWSER=.*|export BROWSER=myarch-launch-browser|' ~/.config/uwsm/default
  else
    printf '\n# Used by terminal programs (like gh) to open URLs detached from the terminal process tree\nexport BROWSER=myarch-launch-browser\n' >> ~/.config/uwsm/default
  fi
else
  myarch-refresh-config uwsm/default
fi
