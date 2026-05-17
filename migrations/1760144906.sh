echo "Change myarch-screenrecord to use gpu-screen-recorder"
myarch-pkg-drop wf-recorder wl-screenrec

# Add slurp in case it hadn't been picked up from an old migration
myarch-pkg-add slurp gpu-screen-recorder
