eval "$(/opt/homebrew/bin/brew shellenv)"

# Import private zsh environment
if [ -f "$HOME/.zprofile.work.private" ]; then
    source "$HOME/.zprofile.work.private"
fi
