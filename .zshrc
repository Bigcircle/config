# 把所有配置写在一个文件省心。。

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
plugins=()
source $ZSH/oh-my-zsh.sh

# nvm ~ nodejs
[[ -s "$HOME/.nvm/nvm.sh" ]] && . "$HOME/.nvm/nvm.sh"

# atuo complete
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit

# autoupdate autojump
if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

# env path
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/mongo/bin:/usr/local/redis/src:/usr/local/nginx/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin

# /usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin
# export CC=/usr/bin/gcc-4.2
JAVA_HOME='/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home'
export SVN_EDITOR='/usr/bin/vim'
export LANG=zh_CN.UTF-8
export CLICOLOR=1
export LSCOLORS=gxfxaxdxcxegedabagacad

# set rvm
#PATH=$PATH:$HOME/.rvm/bin
[[ -s "/Users/dayuan/.rvm/scripts/rvm" ]] && source "/Users/dayuan/.rvm/scripts/rvm"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
PATH=$PATH:$HOME/.rvm/bin
#source $HOME/.rvm/scripts/rvm
#rvm reload

# mine alias
alias curl="curl --progress-bar"
alias ls="ls -G"
alias la="ls -a"
alias lt="tree -L 1"
alias ll="ls -l"
alias ltd="tree -d"
alias ds="du -sh *|sort -nr"
alias htop="htop"
alias cl="clear"
alias ..="cd .."
alias sl="subl"
alias v="vim"
alias r="ruby -w"
alias py="python"
alias rmf="rm -rf"
alias o="open ."
alias m='mkdir'
alias mv="mv -i"
alias n="nginx"
alias t='touch'
alias p="ps aux|grep -v grep|grep"
alias pf="pflogsumm"
alias ctar="tar zcvf"
alias ztar="tar zxvf"
alias ml="mysql -uroot -pdayuan"
alias mysqld="mysql.server start"
alias mongod="sudo mongod run --config /usr/local/etc/mongod.conf"
alias redis-s="redis-server /usr/local/etc/redis.conf"
alias rp='rails-console-pry -r pry-doc -r awesome_print -r ruby18_source_location'
alias vp="v ~/.zshrc"
alias slp="sl ~/.zshrc"
alias vc="v ~/.vimrc"
alias sp="source ~/.zshrc"
alias vs="sudo vim + ~/.backup/.keep"
alias vhost="sudo vim /etc/hosts"
alias see="sh ~/.count.sh"
alias go="python ~/goagent/local/proxy.py"

# 进入某个位置
alias d="cd ~/Desktop"
alias x="cd ~/Downloads"
alias w="cd ~/work"
alias s="cd ~/work/source_code"
alias edm="cd ~/work/gene-edm"
alias data="cd ~/work/gene-data"
alias crm="cd ~/work/gene-crm"
alias hy="cd ~/work/gene-huiyan"
alias order="cd ~/work/gene-order"
alias xue="cd ~/work/study"
alias app="cd /Applications"
alias .v="cd ~/.vim"
alias subp="cd ~/Library/Application Support/Sublime Text 2/Packages/"
alias od="open ~/Desktop"
alias og="open /Applications/Google\ Chrome.app"
alias odoc="open ~/work/rdoc/index.html"
alias ox="open ~/Downloads"
alias om="open -a Mou"
alias mov="cd ~/Movies"
alias pic="cd ~/Pictures"

# 几个常用的备份文件
alias s1="sl ~/work/study/part_1.rb"
alias s2="sl ~/work/study/part_2.rb"
alias s3="sl ~/work/study/part_3.rb"
alias s4="sl ~/work/study/part_4.rb"
alias s5="sl ~/work/study/linux.sh"
alias s6="sl ~/work/study/part_6.rb"

# svn git
alias ga="git add"
alias gr="git rm"
alias gs="git status"
alias gf="git fetch"
alias gp="git push"
alias gd="git diff"
alias gcl="git clone"
alias gc="git commit -m"
alias si="svn info"
alias sd="svn diff"
alias sc="svn ci -m"
alias ss="svn status"
alias sup="svn up"
alias sa="svn add"
alias sr="svn revert"

# brew
alias bs="brew search"
alias bd="brew doctor"
alias bu="brew update"

# ruby rails
alias gi="gem install --no-ri --no-rdoc"
alias gl="gem list"
alias gu="gem uninstall"
alias ge="gem edit"
alias bck="bundle check"
alias bi="bundle install"
alias rss="rails s"
alias rgm="rails g migration"
alias pss="passenger start"
alias BUNDLER_EDITOR='/usr/bin/vim'
