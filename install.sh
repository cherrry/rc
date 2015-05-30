#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# compile modules
git submodule update --init --recursive
./.vim/bundle/YouCompleteMe/install.sh --clang-completer --gocode-completer

# link scripts
ln -s $DIR/.vim ~/.vim
ln -s $DIR/.vimrc ~/.vimrc
