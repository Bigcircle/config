#!/usr/bin/env bash

# just for mac
# 未完待续,尚未测试...
# bash < <(curl -s https://raw.github.com/bigcircle/config/install)

echo "检查ssh key.不存在则创建..."
  [[ -f ~/.ssh/id_rsa.pub ]] || ssh-keygen -t rsa

echo "复制key,粘贴到github..."
  [[ -f ~/.ssh/id_rsa.pub ]] && cat ~/.ssh/id_rsa.pub | pbcopy
  open https://github.com/account/ssh

echo "安装homebrew..."
  /usr/bin/ruby ruby <(curl -fsSk https://raw.github.com/mxcl/homebrew/go)
  brew update
  # 检查系统环境，一般会要求安装git和Xcode
  brew doctor

# 如果没有安装Command Line Tools则需要安装curl 和 git
echo "安装curl git nginx redis..."
  brew install curl git wget tree autojump cmake automake nginx redis

echo "安装mysql mongo 设mysql为启动项"
  brew install mysql
  mkdir -p ~/Library/LaunchAgents
  cp /usr/local/Cellar/mysql/5.5.25a/homebrew.mxcl.mysql.plist ~/Library/LaunchAgents/
  launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
  # mongo 方法类似
  brew install mongo

echo "安装oh-my-zsh..."
  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

  if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]
  then
    echo "备份原有.zshrc...";
    cp ~/.zshrc ~/.zshrc.pre_zshrc;
    rm ~/.zshrc;
  fi
  cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
  echo "写入环境变量..."
  echo "export PATH=$PATH" >> ~/.zshrc
  echo "把默认的shell改为zsh..."
  chsh -s `which zsh`

  echo "\033[0;32m"'         __                                     __   '"\033[0m"
  echo "\033[0;32m"'  ____  / /_     ____ ___  __  __   ____  _____/ /_  '"\033[0m"
  echo "\033[0;32m"' / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \ '"\033[0m"
  echo "\033[0;32m"'/ /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / / '"\033[0m"
  echo "\033[0;32m"'\____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/  '"\033[0m"
  echo "\033[0;32m"'                        /____/                       '"\033[0m"

  echo "\n\n \033[0;32m....is now installed.\033[0m"
  /usr/bin/env zsh
  source ~/.zshrc

echo "安装rvm..."
  curl -L https://get.rvm.io | bash -s stable
  echo "
    # RVM
    [[ -s '/Users/`whoami`/.rvm/scripts/rvm' ]] && source '/Users/`whoami`/.rvm/scripts/rvm'
    [[ -s '$HOME/.rvm/scripts/rvm' ]] && . '$HOME/.rvm/scripts/rvm" >> ~/.zshrc
  source ~/.zshrc

echo "安装1.9.3 ruby并设为默认版本"
  rvm install 1.9.3
  rvm use 1.9.3 --default

echo "修改gem source 和 安装gem-fast"
  gem sources -r http://rubygems.org/
  gem sources -a http://ruby.taobao.org/
  # gem-fast 显示gem下载安装过程
  gem install gem-fast --no-rdoc --no-ri

echo "导入我的一些配置文件"
  cd ~ && git clone git://github.com/Bigcircle/config.git
  cd ~/config
  cp -rf .vim .vimrc .gvimrc .zshrc sync.sh ~/
  # 复制sublime 配置文件
  cp Preferences.sublime-settings Default (OSX).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User
  cp Ruby.sublime-build /Users/dayuan/Library/Application\ Support/Sublime\ Text\ 2/Packages/Ruby
