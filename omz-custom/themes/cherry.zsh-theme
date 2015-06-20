# vim:ft=zsh ts=2 sw=2 sts=2

rvm_current() {
  rvm current 2>/dev/null
}

rbenv_version() {
  rbenv version 2>/dev/null | awk '{print $1}'
}

PROMPT='
%{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%} $(git_prompt_info)
$ '

ZSH_THEME_GIT_PROMPT_PREFIX="on %{$fg[magenta]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" 😫"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" 😧"
ZSH_THEME_GIT_PROMPT_CLEAN=" 😍"

RPROMPT=' $(emoji-clock)  %{$fg_bold[red]%}$(date "+%H:%M:%S")%{$reset_color%}'
