echo "Change to openai-codex instead of openai-codex-bin"

if myarch-pkg-present openai-codex-bin; then
    myarch-pkg-drop openai-codex-bin
    myarch-pkg-add openai-codex
fi
