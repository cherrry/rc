#!/usr/bin/env bash

DIR=$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)

# install pathogen
mkdir -p $DIR/vim/autoload $DIR/vim/bundle
curl -LSso $DIR/vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# compile modules
git submodule update --init --recursive
$DIR/vim/bundle/YouCompleteMe/install.sh --clang-completer --gocode-completer
cd $DIR/vim/bundle/vimproc.vim && make

# create folders
mkdir -p ~/.config

# link folders
[ ! -L ~/.vim ] && ln -s $DIR/vim ~/.vim
[ ! -L ~/.config/base16-shell ] && ln -s $DIR/base16-shell ~/.config/base16-shell
[ ! -L ~/.oh-my-zsh ] && ln -s $DIR/oh-my-zsh ~/.oh-my-zsh
[ ! -L ~/.omz-custom ] && ln -s $DIR/omz-custom ~/.omz-custom

# link scripts
[ ! -L ~/.zshrc ] && ln -s $DIR/zshrc ~/.zshrc
[ ! -L ~/.vimrc ] && ln -s $DIR/vimrc ~/.vimrc
[ ! -L ~/.gitconfig ] && ln -s $DIR/gitconfig ~/.gitconfig
[ ! -L ~/.gitignore ] && ln -s $DIR/gitignore ~/.gitignore
