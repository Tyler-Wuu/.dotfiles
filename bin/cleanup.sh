#!/bin/bash
#shebang
rm ~/.nanorc
#Remove the .nanorc file
sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc
#Remove the line "source ∼/.dotfiles/etc/bashrc custom" from .bashrc
rm -r ~/.TRASH
#Remove the .TRASH directory


