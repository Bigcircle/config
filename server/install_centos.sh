#!/bin/bash

######################################################
# 用于初始化centos服务器
# 为了简化，所有操作均在root权限下
# version: 0.1
######################################################

# 1.预先下载该脚本
# cd /root && mkdir downloads && cd downloads
# curl -O https://raw.github.com/Bigcircle/config/master/server/install_centos.sh
# chmod u+x install_centos.sh
# ./install_centos.sh

# 2.更新源
cd /etc/yum.repos.d
if [ -f CentOS-Base.repo ]; then
  mv CentOS-Base.repo  CentOS-Base.repo.save
fi
wget http://mirrors.163.com/.help/CentOS6-Base-163.repo
mv CentOS6-Base-163.repo CentOS-Base.repo

# 更新yum并立即生效
yum check-update
yum update
yum makecache

