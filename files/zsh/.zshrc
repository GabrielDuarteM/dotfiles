#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

alias e.="explorer ."
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias ......="cd ../../../../../"
alias .......="cd ../../../../../../"
alias ........="cd ../../../../../../../"
alias ys="yarn start"
alias proj="cd C:/Users/gabriel/Projetos"
alias s="cd C:/Exact/SpotterGit/Exact.MVC/frontend"
alias bs="MSBuild.exe C:/Exact/SpotterGit"
alias yu="yarn upgrade-interactive --latest"
alias cls="clear"
alias yp="yarn plop"
alias yps="yarn plop component"
alias ypc="yarn plop container"
alias ga="git add --all"
alias gz="git cz"
