#!/bin/bash

# make backup directory
if [ ! -d ~/backup_dotfiles ]; then
    mkdir ~/backup_dotfiles
    chmod 770 ~/backup_dotfiles
fi

# backup old dotfiles
if [ -f ~/.bashrc ]; then
    mv ~/.bashrc ~/backup_dotfiles/
fi

if [ -f ~/.bash_profile ]; then
    mv ~/.bash_profile ~/backup_dotfiles/
fi

if [ -f ~/.bash_aliases ]; then
    mv ~/.bash_aliases ~/backup_dotfiles/
fi

if [ -f ~/.bash_exports ]; then
    mv ~/.bash_exports ~/backup_dotfiles/
fi

if [ -f ~/.dircolors ]; then
    mv ~/.dircolors ~/backup_dotfiles/
fi

# create symbolic links
ln -s ~/dotfiles/.bashrc ~/
ln -s ~/dotfiles/.bash_profile ~/
ln -s ~/dotfiles/.bash_aliases ~/
ln -s ~/dotfiles/.bash_exports ~/
ln -s ~/dotfiles/.dircolors ~/
