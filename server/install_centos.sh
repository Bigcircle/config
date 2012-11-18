#!/bin/bash

######################################################
# 用于初始化centos服务器，为了简化，所有操作均在root权限下
# 适用于 centos-6 版本，查看服务器版本 cat /etc/issue 或者 lsb_release -a
# version: 0.1
######################################################

# 1.预先下载该脚本
# cd /root && mkdir downloads && cd downloads
# curl -#O https://raw.github.com/Bigcircle/config/master/server/install_centos.sh
# chmod u+x install_centos.sh
# ./install_centos.sh

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
cd ~/
if [ -f ~/.bash_profile ]; then
  mv ~/.bash_profile ~/.bash_profile.save
fi
curl -#O https://raw.github.com/Bigcircle/config/master/server/.bash_profile
. ~/.bash_profile

# 5.配置ruby环境
# 如果已存在ruby，删除原有版本
# which ruby && yum erase ruby ruby-libs ruby-mode ruby-rdoc ruby-irb ruby-ri ruby-docs
# # 编译所需库文件,编译器
# yum -y install openssl-devel zlib-devel gcc gcc-c++ curl-devel expat-devel gettext-devel make automake autoconf readline-devel libtool
# # 可能需要手动安装 libyaml 和 libffi, 不然编译的时候一些文件编译出错
# cd ~/downloads
# wget http://pyyaml.org/download/libyaml/yaml-0.1.4.tar.gz
# wget ftp://sourceware.org/pub/libffi/libffi-3.0.11.tar.gz
# tar zxvf yaml-0.1.4.tar.gz && cd yaml-0.1.4 && ./configure && make && make install && cd ~/downloads
# tar zxvf libffi-3.0.11.tar.gz && cd libffi-3.0.11 && ./configure && make && make install && cd ~/downloads

# 6.安装配置mysqls
# yum -y install mysql mysql-server mysql-devel
# 设置root密码
# /usr/bin/mysqladmin -uroot password '123456'
# /usr/bin/mysqladmin -u root -h localhost.localdomain password '123456'

# /etc/init.d/iptables status # 会得到一系列信息，说明防火墙开着
# /etc/init.d/iptables stop   # 关闭防火墙
