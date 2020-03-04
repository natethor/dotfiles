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

if [ -f ~/.sh_aliases ]; then
    mv ~/.sh_aliases ~/backup_dotfiles/
fi

if [ -f ~/.bash_exports ]; then
    mv ~/.bash_exports ~/backup_dotfiles/
fi

if [ -f ~/.dircolors ]; then
    mv ~/.dircolors ~/backup_dotfiles/
fi

# create symbolic links
ln -s ~/repos/dotfiles/.bashrc ~/
ln -s ~/repos/dotfiles/.bash_profile ~/
ln -s ~/repos/dotfiles/.sh_aliases ~/
ln -s ~/repos/dotfiles/.bash_exports ~/
ln -s ~/repos/dotfiles/.dircolors ~/
ln -s ~/repos/dotfiles/.zshrc ~/
