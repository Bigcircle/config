#!/bin/sh
# curl -#O https://raw.github.com/Bigcircle/config/master/server/install_config.sh
# chmod u+x install_config.sh
# ./install_config.sh

# 该脚本用于导入.bash_profile和.vimrc文件到服务器上
[ -f ~/.bash_profile ] && mv ~/.bash_profile ~/.bash_profile.save
curl -#O https://raw.github.com/Bigcircle/config/master/server/.bash_profile
. ~/.bash_profile

[ -f ~/.vimrc ] && rm -f ~/.vimrc
cd ~/ && curl -#O https://raw.github.com/Bigcircle/config/master/server/.vimrc
mkdir -p ~/.vim && mkdir -p ~/.vim/colors
cd ~/.vim/colors && curl -#O https://raw.github.com/Bigcircle/config/master/vim/colors/molokai.vim

