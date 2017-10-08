# 256-color support
export TERM=xterm-256color

# command history
if [ -z "${HISTFILE}" ]; then
    HISTFILE="${HOME}/.zsh_history"
fi
HISTSIZE=10000
SAVEHIST=10000
case "${HIST_STAMPS}" in
  "mm/dd/yyyy") alias history='fc -fl 1' ;;
  "dd.mm.yyyy") alias history='fc -El 1' ;;
  "yyyy-mm-dd") alias history='fc -il 1' ;;
  *) alias history='fc -l 1' ;;
esac
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY 

# base16 shell
BASE16_SHELL="${HOME}/.config/base16-shell/"
[ -n "${PS1}" ] && [ -s "${BASE16_SHELL}/profile_helper.sh" ] && eval "$(${BASE16_SHELL}/profile_helper.sh)"
base16_default-dark

# homebrew
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1

# Prezto
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
