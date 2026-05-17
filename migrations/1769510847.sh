echo "Switch back to mainline chromium now that it supports full live theming"

if myarch-pkg-present myarch-chromium; then
  if gum confirm "Ready to switch to mainstream chromium? (Will close Chromium + reset settings)"; then
    pkill -x chromium
    myarch-pkg-drop myarch-chromium
    myarch-pkg-add chromium
    myarch-theme-set-browser
  fi
fi
