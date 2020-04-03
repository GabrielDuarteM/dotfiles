# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export VISUAL=nvim
export EDITOR="$VISUAL"

# set PATH so it includes user's local private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set PATH so it includes brew
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
else
    export PATH=$(brew --prefix)/bin:$(brew --prefix)/sbin:$PATH
fi

export PATH="$PATH:/snap/bin"
export PATH="$(brew --prefix ruby)/bin:$PATH"
export PATH="$(gem env gemdir)/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/n/bin:$PATH"
export PATH="$(printf "%s" "$PATH" | awk -v RS=':' '!a[$1]++ { if (NR > 1) printf RS; printf $1 }')" # Fix duplicate entries on path
export PROJECTS_FOLDER=~/Projects
export WORK_FOLDER=~/quantilope
export CHEZMOI_FOLDER=~/.local/share/chezmoi

export N_PREFIX="$HOME/n";

export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git/*"'
export TERM=xterm-256color
export LC_ALL="en_US.UTF-8"
export REVIEW_BASE="origin/master"

# Spaceship configs

SPACESHIP_PROMPT_ORDER=(
  # time          # Time stamps section (Disabled)
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  # hg            # Mercurial section (hg_branch  + hg_status)
  # package       # Package version (Disabled)
  # node          # Node.js section
  # ruby          # Ruby section
  # elm           # Elm section.
  # elixir        # Elixir section
  # xcode         # Xcode section (Disabled)
  # swift         # Swift section
  # golang        # Go section
  # php           # PHP section
  # rust          # Rust section
  # haskell       # Haskell Stack section
  # julia         # Julia section (Disabled)
  # docker        # Docker section (Disabled)
  # aws           # Amazon Web Services section
  # venv          # virtualenv section
  # conda         # conda virtualenv section
  # pyenv         # Pyenv section
  # dotnet        # .NET section
  # ember         # Ember.js section (Disabled)
  # kubecontext   # Kubectl context section
  # terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator (Disabled)
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
