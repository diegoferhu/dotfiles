# Enable aliases to be sudo’ed
alias sudo='sudo '

alias ..="cd .."
alias ...="cd ../.."
alias ll="ls -l"
alias la="ls -la"
alias ~="cd ~"

# Git
alias gaa="git add -A"
alias gca="git add --all && git commit --amend --no-edit"
alias gco="git checkout"
alias gs="git status -sb"
alias gf="git fetch --all -p"
alias gps="git push"
alias gpsf="git push --force"
alias gpl="git pull --rebase --autostash"
alias gb="git branch"
alias gm="git merge ´branch to pull´ -m :twisted_rightwards_arrows: OD-branch: Sync with branch to pull"

# Utils
alias k='kill -9'
alias i.='(idea $PWD &>/dev/null &)'
alias c.='(code $PWD &>/dev/null &)'
alias o.='open .'

# occiCarro
alias gofront='cd ~/Desktop/BOCC/vehiculos/front/bocc-occiauto-frontend-vehicles/'
alias goqa='cd ~/Desktop/BOCC/occiauto/qa/'
alias golambdas='cd ~/Desktop/BOCC/occiauto/lambdas/'
alias goutilities='cd ~/Desktop/BOCC/occiauto/utilities/'
alias gomicros='cd ~/Desktop/BOCC/vehiculos/front/micros/'

alias initfront='cd ~/Desktop/BOCC/vehiculos/front/bocc-occiauto-frontend-vehicles/; npm start'
# alias aws_token="sed -i '' 's/aws_session_token = .*/aws_session_token = $1/' ~/.aws/config"
# alias aws_token="sed -i 's/^aws_session_token = .*/aws_session_token = $1/' ~/.aws/config"
# alias assign_var="sed -i 's/^var=.*/var=\"$1\"/' ~/archivo.txt"
