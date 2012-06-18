#!/bin/sh
cp ~/.bash_profile ~/.count.sh ~/.zshrc ~/.vimrc ~/.gvimrc ~/config
cd ~/config
git add .bash_profile .count.sh .zshrc .vimrc .gvimrc
git commit -m 'timing sync'
git push
