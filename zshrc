# 256-color support
export TERM=xterm-256color

# zsh configs
setopt HIST_IGNORE_DUPS

# base16 shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
base16_default-dark

# git alias
alias gst="git status"
alias gdc="git diff --cached"

# Prezto
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# Theme
autoload -Uz promptinit
promptinit
prompt peepcode
