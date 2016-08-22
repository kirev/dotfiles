#!/usr/bin/env bash
printf '\033[0;34m%s\033[0m\n' "Installing font for statusline..."
mkdir $HOME/.fonts
wget -O $HOME/.fonts/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
fc-cache -vf $HOME/.fonts
mkdir $HOME/.fonts.conf.d
wget -O $HOME/.fonts.conf.d/10-powerline-symbols.conf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
