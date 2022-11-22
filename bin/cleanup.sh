#!/bin/bash

#removes vimrc if it exists
if [ -f ~/.vimrc ]
then
	rm -f ~/.vimrc
fi

#deletes source command from bashrc
FILE='source ∼/.dotfiles/bashrc custom'
sed '/$FILE/d' ~/.bashrc
#removes trash
rm -rf ~/.TRASH

