#!/usr/bin/env bash

# compile modules
git submodule update --init --recursive
./.vim/bundle/YouCompleteMe/install.sh --clang-completer --gocode-completer

# link scripts
ln -s ./.vim ~/.vim
ln -s ./.vimrc ~/.vimrc
