#!/bin/bash

INSTALL_ROOT=~/.oh-my-terminal

# tmux
ln -s -f $INSTALL_ROOT/tmux/.tmux.conf ~/.tmux.conf
cp $INSTALL_ROOT/tmux/.tmux.conf.local ~/.tmux.conf.local

# vim
vim_config="~/.vimrc"
if [ -f $vim_config ]; then
  cp $vim_config "$vim_config".orig
fi
ln -s -f $INSTALL_ROOT/vim/basic.vim ~/.vimrc

# zsh
# 备份
zsh_config=~/.zshrc
if [ -f "$zsh_config" ]; then
  cp $zsh_config "$zsh_config".bak
fi

cp $INSTALL_ROOT/zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh
