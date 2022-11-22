#!/bin/bash


if ( uname != 'Linux' )
then
	echo "Error: linux OS not found" >> linuxsetup.log
	exit
fi
## Checks the Operating System
## makes trash directory
mkdir -p ~/.TRASH
## rids old vimrc
if [ -f ~/.vimrc ]
then
	mv ~/.vimrc ~/.bup_vimrc
	echo "The current vimrc file has been changed to .bup_vimrc" >> linuxsetup.log
fi
#new vimrc and bashrc addition
cp ./etc/vimrc ~/.vimrc
echo 'source ~/.dotfiles/etc/bashrc_custom' >> ~/.bashrc

