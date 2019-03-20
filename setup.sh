#!/bin/bash

# zsh
cp -r ~/.oh-my-terminal/zsh ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

# tmux
ln -s -f ~/.oh-my-terminal/tmux/.tmux.conf ~/.tmux.conf
ln -s -f ~/.oh-my-terminal/tmux/.tmux.conf.local ~/.tmux.conf.local

# vim
cp -r ~/.oh-my-terminal/vim ~/.vim_runtime
sh ~/.vim_runtime/install_vimrc.sh

# 切换当前用户默认shell，重新进入终端后生效
chsh -s $(which zsh)