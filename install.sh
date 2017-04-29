#!/usr/bin/env bash

DIR=$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)

# install ensime
pip install websocket-client sexpdata
mkdir -p ~/.sbt/0.13/plugins
[ ! -L ~/.sbt/0.13/plugins/plugins.sbt ] && ln -s $DIR/sbt/plugins.sbt ~/.sbt/0.13/plugins/plugins.sbt

# compile modules
git submodule update --init --recursive
git submodule update --remote --recursive

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

# install xcode color scheme
if [ `uname` == 'Darwin' ]; then
    mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes
    cp $DIR/xcode/* ~/Library/Developer/Xcode/UserData/FontAndColorThemes
fi
