#!/usr/bin/env bash

DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

# dependencies
git submodule update --init --recursive
git submodule update --remote --recursive

# rime
rime_dir="${HOME}/.config/ibus/rime"
if [ `uname` == 'Darwin' ]; then
  rime_dir="${HOME}/Library/Rime"
fi
mkdir -p "${rime_dir}"
ln -sF "${DIR}/rime/cangjie5.custom.yaml" "${rime_dir}"
ln -sF "${DIR}/rime/default.custom.yaml" "${rime_dir}"
ln -sF "${DIR}/rime/squirrel.custom.yaml" "${rime_dir}"
ln -sF "${DIR}/rime/rime-cangjie3-extension/cangjie5.cj3ext.dict.yaml" "${rime_dir}"

# true color
tic -x "${DIR}/terminfo/xterm-256color-italic.terminfo"

# base16 shell
mkdir -p "${HOME}/.config"
[ ! -L "${HOME}/.config/base16-shell" ] && \
  ln -s "${DIR}/base16-shell" "${HOME}/.config/base16-shell"

# git configs
ln -sF "${DIR}/gitconfig" "${HOME}/.gitconfig"
ln -sF "${DIR}/gitignore" "${HOME}/.gitignore"

# vim
mkdir -p "${HOME}/.vim/bundle"
[ ! -L "${HOME}/.vim/bundle/Vundle.vim" ] && \
  ln -s "${DIR}/vim/bundle/Vundle.vim" "${HOME}/.vim/bundle/Vundle.vim"
ln -sF "${DIR}/vimrc" "${HOME}/.vimrc"

# zsh
[ ! -L "${HOME}/.zprezto" ] && \
  ln -s "${DIR}/zsh/prezto" "${HOME}/.zprezto"
[ ! -L "${HOME}/.zcustom" ] && \
  ln -s "${DIR}/zsh/custom" "${HOME}/.zcustom"
ln -sF "${DIR}/zshrc" "${HOME}/.zshrc"
ln -sF "${DIR}/zpreztorc" "${HOME}/.zpreztorc"

# tmux
mkdir -p "${HOME}/.tmux/plugins"
[ ! -L "${HOME}/.vim/plugins/tpm" ] && \
  ln -sF "${DIR}/tmux/plugins/tpm" "${HOME}/.tmux/plugins/tpm"
ln -sF "${DIR}/tmux.conf" "${HOME}/.tmux.conf"

# base editing
ln -sF "${DIR}/eslintrc" "${HOME}/.eslintrc"

# mac specific
if [ `uname` == 'Darwin' ]; then
  # install xcode color scheme
  mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes
  cp -f "${DIR}/xcode/*" "${HOME}/Library/Developer/Xcode/UserData/FontAndColorThemes"
  # iterm2 shell integration
  curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash
  chmod +x "${HOME}/.iterm2_shell_integration.zsh"
fi
