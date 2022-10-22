# Docker
 alias dsa="docker kill $(docker ps -q)"
 alias dps="docker ps -a"
 alias dra="docker system prune -a --volumes"
 alias dev="sh bin/dev"
 alias sac="docker kill $(docker ps -q)"


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

edit_roadrunner_reverse_proxy() {
  ssh root@dev.api.roadrunner.codelitt.dev ./update_roadrunner_reverse_proxy.sh $1
}

edit_notifications_reverse_proxy() {
  ssh root@dev.api.roadrunner.codelitt.dev ./update_notifications_reverse_proxy.sh $1
}

## Speedster
alias goss="goworkspace && cd speedster-bot"

# Dotfiles
alias godot="goworkspace && cd dotfiles"
alias showalias="cat $WORKSPACE_PATH/dotfiles/.alias.sh"
alias editalias="vim $WORKSPACE_PATH/dotfiles/.alias.sh && godot && git pull && source .alias.sh"

# Slack
alias ksk="pkill -x Slack"

## projects

alias start="sh bin/dev"

## machine

alias upgrade="brew update && brew upgrade && sudo softwareupdate -i -a && godot && git pull && source .alias.sh"
