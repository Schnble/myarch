MYARCH_MIGRATIONS_STATE_PATH=~/.local/state/myarch/migrations
mkdir -p $MYARCH_MIGRATIONS_STATE_PATH

for file in ~/.local/share/myarch/migrations/*.sh; do
  touch "$MYARCH_MIGRATIONS_STATE_PATH/$(basename "$file")"
done
