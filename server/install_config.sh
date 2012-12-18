#!/bin/sh
# 直接执行即可 bash <(curl -s https://raw.github.com/Bigcircle/config/master/server/install_config.sh)

# 该脚本用于导入.bash_profile和.vimrc文件到服务器上
[ -f ~/.bashrc ] && mv ~/.bashrc ~/.bashrc.save
curl -#O https://raw.github.com/Bigcircle/config/master/server/.bashrc
source ~/.bashrc

[ -f ~/.vimrc ] && rm -f ~/.vimrc
cd ~/ && curl -#O https://raw.github.com/Bigcircle/config/master/server/.vimrc
mkdir -p ~/.vim && mkdir -p ~/.vim/colors
cd ~/.vim/colors && curl -#O https://raw.github.com/Bigcircle/config/master/vim/colors/molokai.vim

