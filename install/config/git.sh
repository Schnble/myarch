# Set identification from install inputs
if [[ -n ${MYARCH_USER_NAME//[[:space:]]/} ]]; then
  git config --global user.name "$MYARCH_USER_NAME"
fi

if [[ -n ${MYARCH_USER_EMAIL//[[:space:]]/} ]]; then
  git config --global user.email "$MYARCH_USER_EMAIL"
fi
