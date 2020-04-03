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

# Makes every folder inside "Projects" available when executing "cd"
CDPATH=.:$HOME:$HOME/Projects

source ~/.profile
source ~/.aliases

if [[ -s ~/.local/.zshrc.local.zsh ]]; then
  source ~/.local/.zshrc.local.zsh
fi

# enable z
. `which brew | sed 's/bin\/brew/etc\/profile.d\/z.sh/'`

# ******************************************************************
# reboot directly to windows 
#   Inspired by http://askubuntu.com/questions/18170/how-to-reboot-into-windows-from-ubuntu
# ******************************************************************
function reboot_to_windows {
  WINDOWS_TITLE=`grep -i 'windows' /boot/grub/grub.cfg|cut -d"'" -f2`
  sudo grub-reboot "$WINDOWS_TITLE"
  sudo reboot
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Make z work with fzf
# https://github.com/junegunn/fzf/wiki/examples#z
unalias z 2> /dev/null
z() {
  [ $# -gt 0 ] && _z "$*" && return
  cd "$(_z -l 2>&1 | fzf --height 40% --nth 2.. --reverse --inline-info +s --tac --query "${*##-* }" | sed 's/^[0-9,.]* *//')"
}

# has to be also here (not only on profile),
# so that kitty and zsh vi-mode can use it.
export VISUAL=nvim
export EDITOR="$VISUAL"

# VI mode configs

export KEYTIMEOUT=1 # kills the lag when switching modes

# ******************************************************************
# Make up and down history search work on kitty+tmux
#   Inspired by https://github.com/zimfw/zimfw/issues/293#issuecomment-422118904
# ******************************************************************
bindkey "^[OA" history-substring-search-up
bindkey "^[OB" history-substring-search-down
bindkey -M vicmd "^[OA" history-substring-search-up
bindkey -M vicmd "^[OB" history-substring-search-down
# Make it also work with j and k on normal mode
bindkey -M vicmd "k" history-substring-search-up
bindkey -M vicmd "j" history-substring-search-down

# open command in vim
bindkey -M vicmd "^V" edit-command-line

# enables vi-mode indication using spaceship
spaceship_vi_mode_enable

# disable autocompletion set by prezto's utility module
unsetopt CORRECT