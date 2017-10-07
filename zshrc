source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# base16 shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
base16_default-dark

# Theme
autoload -Uz promptinit
promptinit
prompt peepcode "$"
