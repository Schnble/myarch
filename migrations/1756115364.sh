echo "Replace buggy native Zoom client with webapp"

if myarch-pkg-present zoom; then
  myarch-pkg-drop zoom
  myarch-webapp-install "Zoom" https://app.zoom.us/wc/home https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/zoom.png
fi
