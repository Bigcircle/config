# has changed to zsh. Almostly same
[[ -s "/Users/dayuan/.rvm/scripts/rvm" ]] && source "/Users/dayuan/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
export PATH=${PATH}:/usr/local/bin:/usr/local/sbin:/usr/local/mongo/bin:/usr/local/redis/src
export CC=/usr/bin/gcc-4.2
alias ls="ls -G"
alias la="ls -a"
alias cl="clear"
alias ..="cd .."
alias sl="subl"
alias v="vim"
alias mlocal="mysql -uroot -pdayuan"
alias m244="mysql -h172.20.2.244 -ugene_data -p653481"
alias m141="mysql -h172.20.2.141 -uihaveu -p9sd3pg"
alias mongod="sudo mongod --dbpath=/mongo_db"
alias redis-s="redis-server /usr/local/etc/redis.conf"
alias vp="vim ~/.bash_profile"
alias sp="source ~/.bash_profile"
alias v_host="sudo vim /etc/hosts"

alias cd_d="cd ~/Desktop"
alias cd_x="cd ~/Downloads"
alias edm="cd ~/work/gene-edm"
alias data="cd ~/work/gene-data"

alias gs="git st"
alias gu="git up"
alias gd="git diff"
alias gc="git ci"
alias sd="svn diff"
alias sc="svn ci -m"
alias ss="svn status"
alias sa="svn add"
alias sr="svn rm"
alias rc="ruby -c"
export SVN_EDITOR='/usr/bin/vim'
export LANG=zh_CN.UTF-8

alias gi="gem install --no-ri --no-rdoc"
