#!/bin/sh

# 先安装 oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
chsh -s /bin/zsh
rm $HOME/.zshrc
if [ -f $HOME/.zshrc ] || [ -h $HOME/.zshrc ]
then
  echo "备份原有.zshrc...";
  cp $HOME/.zshrc $HOME/.zshrc.pre_zshrc;
  rm $HOME/.zshrc;
fi

# 下载我的配置
cd $HOME && git clone git://github.com/Bigcircle/config.git
ln -s $HOME/config/zsh/zshrc $HOME/.zshrc
source $HOME/.zshrc

# copy sublime
# SUBLIME_PACKAGE=$HOME/Library/Application Support/Sublime Text 2/Packages
# ln -s $HOME/config/sublime/User $HOME/Library/Application Support/Sublime Text 2/Packages/User
# rm $HOME/Library/Application Support/Sublime Text 2/Packages/Ruby/Ruby.sublime-build
# ln -s $HOME/config/sublime/Ruby.sublime-build $HOME/Library/Application Support/Sublime Text 2/Packages/Ruby/Ruby.sublime-build

# copy vim
# to be continue
