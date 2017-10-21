# 256-color support
export TERM=xterm-256color

# base16 shell
BASE16_SHELL="${HOME}/.config/base16-shell/"
[ -n "${PS1}" ] && [ -s "${BASE16_SHELL}/profile_helper.sh" ] && eval "$(${BASE16_SHELL}/profile_helper.sh)"
base16_default-dark

# homebrew
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1

# Prezto
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# Directories
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'
