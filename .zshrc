# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
plugins=()
source $ZSH/oh-my-zsh.sh

# atuo complete
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit

# Customize to your needs...
[[ -s "/Users/dayuan/.rvm/scripts/rvm" ]] && source "/Users/dayuan/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

export PATH=${PATH}:/usr/local/bin:/usr/local/sbin:/usr/local/mongo/bin:/usr/local/redis/src:/usr/local/nginx/sbin
export CC=/usr/bin/gcc-4.2
alias curl="curl --progress-bar"
alias ls="ls -G"
alias la="ls -a"
alias lt="tree -l"
alias ds="du -sh *|sort -nr"
alias htop="htop"
alias cl="clear"
alias ..="cd .."
alias sl="subl"
alias v="vim"
alias r="ruby -w"
alias o="open ."
alias n="nginx"
alias p="ps aux|grep"
alias ml="mysql -uroot -pdayuan"
alias 2d="mysql -udayuan -p526781 -h172.20.2.244"
alias 244d="mysql -h172.20.2.244 -ugene_data -pxm9t58"
alias 244r="mysql -h172.20.2.244 -uroot -p856215"
alias 141="mysql -h172.20.2.141 -uihaveu -p9sd3pg"
alias mongod="sudo mongod --dbpath=/mongo_db"
alias redis-s="redis-server /usr/local/etc/redis.conf"
alias rp='rails-console-pry -r pry-doc -r awesome_print -r ruby18_source_location'
alias vp="v ~/.zshrc"
alias vc="v ~/.vimrc"
alias sp="source ~/.zshrc"
alias vs="sudo vim + ~/.backup/.keep"
alias vhost="sudo vim /etc/hosts"

alias d="cd ~/Desktop"
alias xia="cd ~/Downloads"
alias work="cd ~/work"
alias edm="cd ~/work/gene-edm"
alias data="cd ~/work/gene-data"
alias crm="cd ~/work/gene-crm"
alias hy="cd ~/work/gene-huiyan"
alias xue="cd ~/work/study"
alias app="cd /Applications"
alias .v="cd ~/.vim"
alias mc="cd ~/mine_config"

alias s1="sl ~/work/study/part_1.rb"
alias s2="sl ~/work/study/part_2.rb"
alias s3="sl ~/work/study/part_3.rb"
alias s4="sl ~/work/study/part_4.rb"
alias s5="sl ~/work/study/part_5.rb"
alias s6="sl ~/work/study/part_6.rb"
alias od="open ~/Desktop"
alias og="open /Applications/Google\ Chrome.app"
alias odoc="open ~/work/rdoc/index.html"
alias ox="open ~/Downloads"

alias ga="git add"
alias gs="git status"
alias gf="git fetch"
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
export SVN_EDITOR='/usr/bin/vim'
export LANG=zh_CN.UTF-8

alias gi="gem install --no-ri --no-rdoc"
alias gl="gem list"
alias rss="rails s"
alias pss="passenger start"


alias see="sh ~/.count.sh"