# Enable aliases to be sudo’ed
alias sudo='sudo '

alias ..="cd .."
alias ...="cd ../.."
alias ll="ls -l"
alias la="ls -la"
alias ~="cd ~"
alias dotfiles='cd $DOTFILES_PATH'

# Git
alias gaa="git add -A"
alias gc='$DOTLY_PATH/bin/dot git commit'
alias gca="git add --all && git commit --amend --no-edit"
alias gco="git checkout"
alias gd='$DOTLY_PATH/bin/dot git pretty-diff'
alias gs="git status -sb"
alias gf="git fetch --all -p"
alias gps="git push"
alias gpsf="git push --force"
alias gpl="git pull --rebase --autostash"
alias gb="git branch"
alias gl='$DOTLY_PATH/bin/dot git pretty-log'

# Utils
alias k='kill -9'
alias i.='(idea $PWD &>/dev/null &)'
alias c.='(code $PWD &>/dev/null &)'
alias o.='open .'
alias up='dot package update_all'

# occiCarro
alias gofront='cd ~/Desktop/BOCC/vehiculos/front/bocc-occiauto-frontend-vehicles/'
alias goqa='cd ~/Desktop/BOCC/occiauto/qa/'
alias golambdas='cd ~/Desktop/BOCC/occiauto/lambdas/'
alias goutilities='cd ~/Desktop/BOCC/occiauto/utilities/'

alias initfront='cd ~/Desktop/BOCC/vehiculos/front/bocc-occiauto-frontend-vehicles/; npm start'
# alias aws_token="sed -i '' 's/aws_session_token = .*/aws_session_token = $1/' ~/.aws/config"
alias aws_token="sed -i 's/^aws_session_token = .*/aws_session_token = $1/' ~/.aws/config"
alias assign_var="sed -i 's/^var=.*/var=\"$1\"/' ~/archivo.txt"

