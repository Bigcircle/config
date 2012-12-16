#!/bin/bash

######################################################
# 用于初始化centos服务器，为了简化，所有操作均在root权限下
# 适用于 centos-6 版本，查看服务器版本 cat /etc/issue 或者 lsb_release -a
# version: 0.1
######################################################

# 1.执行下面的bash即可
# cd /root && mkdir downloads && cd downloads
# bash <(curl -s https://raw.github.com/Bigcircle/config/master/server/install_centos.sh)

# 2.更新源
cd /etc/yum.repos.d
if [ -f CentOS-Base.repo ]; then
  mv CentOS-Base.repo  CentOS-Base.repo.save
fi
curl -#O http://mirrors.163.com/.help/CentOS6-Base-163.repo
mv CentOS6-Base-163.repo CentOS-Base.repo

# 3.更新yum并立即生效
yum -y check-update
yum -y update
yum -y makecache

# 4.安装wget和vim-enhanced和我的一些配置文件
yum -y install vim-enhanced wget git
[ -f ~/.bash_profile ] && mv ~/.bash_profile ~/.bash_profile.`date +%y_%m_%d`
cd ~/ && curl -#O https://raw.github.com/Bigcircle/config/master/server/.bash_profile && . ~/.bash_profile

[ -f ~/.vimrc ] && rm -f ~/.vimrc
cd ~/ && curl -#O https://raw.github.com/Bigcircle/config/master/server/.vimrc
mkdir -p ~/.vim && mkdir -p ~/.vim/colors
cd ~/.vim/colors && curl -#O https://raw.github.com/Bigcircle/config/master/vim/colors/molokai.vim

# 5. 安装sudo并创建新用户
yum -y install sudo
useradd rails
passwd rails
# 修改配置文件/etc/sudoers将新用户加入sudo权限及免输密码
echo 'rails ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

################################ 以下操作在 rails 用户下
# 6. 安装依赖库
# 如果已存在ruby，删除原有版本
which ruby && sudo yum erase ruby ruby-libs ruby-mode ruby-rdoc ruby-irb ruby-ri ruby-docs
# # 编译所需库文件,编译器
sudo yum -y install openssl-devel zlib-devel gcc gcc-c++ curl-devel expat-devel gettext-devel make automake autoconf readline-devel libtool

# 可能需要手动安装 libyaml 和 libffi, 不然编译ruby或安装gem时会报缺少libyaml的错误
mkdir -p ~/downloads && cd ~/downloads && wget http://pyyaml.org/download/libyaml/yaml-0.1.4.tar.gz ftp://sourceware.org/pub/libffi/libffi-3.0.11.tar.gz
tar zxvf yaml-0.1.4.tar.gz && cd yaml-0.1.4 && ./configure && make && sudo make install && cd ~/downloads
tar zxvf libffi-3.0.11.tar.gz && cd libffi-3.0.11 && ./configure && make &&  make install && cd ~/

# rvm 安装 ruby
# 如果没有安装上面2个lib包先安装rvm的话，需要
# rvm pkg install libyaml
# rvm reinstall all --force
# 或者直接 rvm implode 之后重新安装
curl -L https://get.rvm.io | bash -s stable --ruby
echo 'PATH=$PATH:$HOME/node_modules/.bin' >> ~/.bash_profile

# 编译安装ruby
# 去ruby-lang查找最新/需要的ruby版本，用户名为 annoymous，密码空
ftp ftp.ruby-lang.org
cd /pub/ruby && ls
get ruby-1.9.3-p327.tar.gz
# 或者直接用 wget / curl
wget ftp://ftp.ruby-lang.org/pub/ruby/ruby-1.9.3-p327.tar.gz
tar zxvf ruby-1.9.3-p327.tar.gz
cd ruby-1.9.3-p327
./configure && make && make install

# 6.安装配置mysql，# 设置root密码
sudo yum -y install mysql mysql-server mysql-devel
/usr/bin/mysqladmin -uroot password '123456'
