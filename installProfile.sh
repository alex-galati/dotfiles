#!/bin/bash

if [[ -z "$1" ]]; then
	mkdir .dotfiles
	cd .dotfiles
	curl -o install.sh https://raw.githubusercontent.com/alex-galati/dotfiles/refs/heads/master/install.sh
	chmod 700 install.sh
	./install.sh
elif [[ -n "$1" && "$1" == "link" ]]; then
	cd ~
	git clone https://github.com/alex-galati/dotfiles .dotfiles
	cd .dotfiles
	./install.sh link
fi
