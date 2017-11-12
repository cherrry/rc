#!/usr/bin/env bash

DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

# dependencies
git submodule update --init --recursive
git submodule update --remote --recursive

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

# base editing
ln -sF "${DIR}/eslintrc" "${HOME}/.eslintrc"
