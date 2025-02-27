#!/bin/bash
if [[ -z "$1" ]]; then
    wget https://raw.githubusercontent.com/alex-galati/dotfiles/refs/heads/master/.profile
    wget https://raw.githubusercontent.com/alex-galati/dotfiles/refs/heads/master/.vimrc
elif [[ -n "$1" && "$1" == "link" ]]; then
    rm -f ~/.vimrc
    ln -s ~/.dotfiles/.vimrc ~/.vimrc

    rm -f ~/.profile
    ln -s ~/.dotfiles/.profile ~/.profile
fi
