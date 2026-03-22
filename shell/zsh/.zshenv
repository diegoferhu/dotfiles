# Import private zsh environment
[[ -f "$HOME/.zshenv.work.private" ]] && source "$HOME/.zshenv.work.private"

[[ -f "$HOME/aliases.sh" ]] && source "$HOME/aliases.sh"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
