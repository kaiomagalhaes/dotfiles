# Docker
 alias dsa="docker kill $(docker ps -q)"
 alias dps="docker ps -a"
 alias dra="docker system prune -a --volumes"

# Git
alias gst="git status"
alias gfo="git push --force"
alias gpl="git pull origin master --rebase"
alias gam="git commit --amend && gfo"
alias gcm="git checkout master"

# Projects
alias goworkspace="cd $WORKSPACE_PATH"

## ADS
alias goads="goworkspace && cd agnostic-design-system"

## TM
alias gotm="cd $WORKSPACE_PATH/team-maker"

## Rolli
alias gorolli="cd $WORKSPACE_PATH/rolli"

## Roadrunner
alias gorr="goworkspace && cd roadrunner"

## Speedster
alias goss="goworkspace && cd speedster-bot"

# Dotfiles
alias godot="goworkspace && cd dotfiles"
alias showalias="cat $WORKSPACE_PATH/dotfiles/.alias.sh"
alias editalias="vim $WORKSPACE_PATH/dotfiles/.alias.sh"

# Slack
alias ksk="pkill -x Slack"

## projects

alias start="sh bin/dev"
