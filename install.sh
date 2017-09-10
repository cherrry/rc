#!/usr/bin/env bash

DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

# dependencies
git submodule update --init --recursive
git submodule update --remote --recursive

# vim
mkdir -p "${HOME}/.vim/bundle"
[ ! -L "${HOME}/.vim/bundle/Vundle.vim" ] && \
  ln -s "${DIR}/vim/bundle/Vundle.vim" "${HOME}/.vim/bundle/Vundle.vim"
ln -sF "${DIR}/vimrc" "${HOME}/.vimrc"

# zsh
[ ! -L "${HOME}/.zprezto" ] && \
  ln -s "${DIR}/zsh/prezto" "${HOME}/.zprezto"
ln -sF "${DIR}/zshrc" "${HOME}/.zshrc"
