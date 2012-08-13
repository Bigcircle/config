#!/bin/sh

# vim
cp -r ~/.vim ~/config
cp ~/.vimrc ~/.gvimrc ~/config

# zshrc
cp ~/.zshrc ~/.oh-my-zsh/themes/my.zsh-theme ~/config/zsh

# sublime text 2
sub_pkg="$HOME/Library/Application Support/Sublime Text 2/Packages"
cp $SUB_FOLDER/User/Preferences.sublime-settings  $SUB_FOLDER/Ruby/Ruby.sublime-build ~/config/sublime/
# $SUB_FOLDER/User/Default\ \(OSX).sublime-keymap
# 上传
# cd ~/config
# git commit -a 'timing sync'
# git push
