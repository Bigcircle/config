#/usr/bin/env bash
# curl

# 该脚本用于导入.bash_profile和.vimrc文件到服务器上
if [ -f ~/.bash_profile ]; then
  mv ~/.bash_profile ~/.bash_profile_backup
  wget https://raw.github.com/Bigcircle/config/master/server/.bash_profile
fi

if [ -f ~/.vimrc ]; then
  wget https://raw.github.com/Bigcircle/config/master/server/.vimrc
  mkdir ~/.vim
  mkdir -p ~/.vim/colors && cd ~/.vim/colors
  wget https://github.com/Bigcircle/config/blob/master/vim/colors/molokai.vim
fi

