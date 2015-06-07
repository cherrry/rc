#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# install pathogen
mkdir -p $DIR/vim/autoload $DIR/vim/bundle
curl -LSso $DIR/vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# compile modules
git submodule update --init --recursive
./vim/bundle/YouCompleteMe/install.sh --clang-completer --gocode-completer
cd ./vim/bundle/vimproc.vim && make

# link scripts
ln -s $DIR/vim ~/.vim
ln -s $DIR/vimrc ~/.vimrc
ln -s $DIR/gitconfig ~/.gitconfig
ln -s $DIR/gitignore ~/.gitignore
