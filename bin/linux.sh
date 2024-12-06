#!/bin/bash
#shebang
UserName=$(uname)
#create variable store the system type
if [ $UserName != "Linux" ]; then
	exit
	echo $(date) >> linuxsetup.log
	echo "Errror: Operate System Type is Not Linux" >> linuxsetup.log
else
	echo
fi
#check if the system type is Linux, if not then exit the script
mkdir -p ~/.TRASH
#make directory in home named .TRASH
if [ -f ~/.nanorc ]; then
	mv ~/.nanorc ~/.dup_nanorc
	echo $(date) >> linuxsetup.log
	echo "Current .nanorc file exist, file change to .dup_nanorc" >> linuxsetup.log
else
	echo
fi
#check if the file .nanorc exist, if so change the name to .dup_nanorc
cp ~/.dotfiles/etc/nanorc ~/.nanorc
#overwrite the current .nanorc file
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
#add statement source ~/.dotfiles/etc/bashrc custom to the end of the .bashrc in the home directory
