# 256-color support
export TERM=xterm-256color

# base16-color theme
BASE16_SCHEME="default"
BASE16_SHELL="$HOME/.config/base16-shell/base16-$BASE16_SCHEME.dark.sh"
[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL

setopt HIST_IGNORE_DUPS

# Path to oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

# oh-my-zsh theme
ZSH_THEME="cherry"

# case-sensitive completion.
# CASE_SENSITIVE="true"

# disable auto-update checks
DISABLE_AUTO_UPDATE="true"

# auto update frequency
# export UPDATE_ZSH_DAYS=13

# disable colors in ls
# DISABLE_LS_COLORS="true"

# disable auto-setting terminal title
# DISABLE_AUTO_TITLE="true"

# disable command auto-correction
# DISABLE_CORRECTION="true"

# display red dots whilst waiting for completion
# COMPLETION_WAITING_DOTS="true"

# disable marking untracted files un VCS as dirty
# improve performance for large repository
DISABLE_UNTRACKED_FILES_DIRTY="true"

# command execution timestamp format
# HIST_STAMPS="mm/dd/yyyy"

# oh-my-zsh custom folder
ZSH_CUSTOM=~/.omz-custom

# oh-my-zsh plugins
plugins=(colored-man git emoji-clock)

# other configurations
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export EDITOR='vim'

# profit!
source $ZSH/oh-my-zsh.sh
