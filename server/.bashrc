# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
   . /etc/bashrc
fi

# 用于导入到服务器~/.bash_profile
# wget https://raw.github.com/Bigcircle/config/master/server/.bash_profile

# 一般的服务器默认不加载的一些路径
PATH=$PATH:/sbin:/usr/sbin:/usr/local/sbin

alias ..='cd ..'
alias ls='ls -G'
alias la='ls -a'
alias ll='ls -l'
alias cl='clear'
alias m='mkdir'
alias t='touch'
alias p='ps aux| grep -v grep| grep'
alias v='vim'
alias r='ruby -w'
alias vp="v ~/.bashrc"
alias sp='source ~/.bashrc'
alias rm='rm -f'
alias rmf='rm -r'
alias tar-c='tar zcvf'
alias tar-x='tar zxvf'
alias sv='sudo vim'

# mysql
PATH=$PATH:/usr/local/mysql/bin
# alias sql-s='service mysqld start'
# alias sql-r='service mysqld restart'
# alias sql-p='service mysqld stop'
alias ml='mysql -uroot -p123456'
alias nr='sudo /etc/init.d/nginx restart'
alias mr='sudo /etc/init.d/mysql restart'

# git
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gll='git pull'
alias gp='git push'
alias gr='git rm'
alias gd='git diff'
alias gco='git checkout'

# rails
alias gi='gem install --no-ri --no-rdoc'
alias rss='rails s'
alias rsp='rails s -e production'
alias bi='bundle install'

# see log
alias wf='cd /var/www/wififree_srv'
alias sel='tail -f /var/www/wififree_srv/log/production.log'
