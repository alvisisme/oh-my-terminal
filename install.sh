#!/bin/bash

# zsh
ln -s -f ~/.oh-my-terminal/zsh ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

# tmux
ln -s -f ~/.oh-my-terminal/tmux/.tmux.conf ~/.tmux.conf
ln -s -f ~/.oh-my-terminal/tmux/.tmux.conf.local ~/.tmux.conf.local

# vim
mkdir -p ~/.oh-my-terminal/vim/plugged
ln -s -f ~/.oh-my-terminal/vim ~/.vim_runtime
sh ~/.vim_runtime/install_super_vimrc.sh
