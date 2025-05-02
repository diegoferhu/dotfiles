export DOTFILES_PATH="/Users/diegohurtado/.dotfiles"
export DOTLY_PATH="$DOTFILES_PATH/modules/dotly"
export DOTLY_THEME="codely"
export ZIM_HOME="$DOTFILES_PATH/shell/zsh/.zim"
# Import private zsh environment
[[ -f "$HOME/.zshenv.work.private" ]] && source "$HOME/.zshenv.work.private"
