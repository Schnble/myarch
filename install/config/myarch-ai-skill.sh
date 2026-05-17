# Place in each assistant's global skills directory so the Myarch skill is available on first install
mkdir -p ~/.agents/skills ~/.claude/skills ~/.codex/skills ~/.pi/agent/skills
ln -sfn "$MYARCH_PATH/default/myarch-skill" ~/.agents/skills/myarch
ln -sfn "$MYARCH_PATH/default/myarch-skill" ~/.claude/skills/myarch
ln -sfn "$MYARCH_PATH/default/myarch-skill" ~/.codex/skills/myarch
ln -sfn "$MYARCH_PATH/default/myarch-skill" ~/.pi/agent/skills/myarch
