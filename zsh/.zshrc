# 把所有配置写在一个文件省心。。

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# nvm ~ nodejs
[[ -s "$HOME/.nvm/nvm.sh" ]] && . "$HOME/.nvm/nvm.sh"

# atuo complete
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit

# 自动升级autojump
if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

# env path
# 默认已存在path export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin
PATH=$PATH:/opt/X11/bin
# 设定4.3之后xcode-path,如果装了osx-gcc-4.2，会导致编译环境错误
# sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
# export CC=/usr/bin/gcc-4.2   # 安装ruby 1.8.7可能需要

# 设定jdk环境，安装rjb(gem)类java需要
JAVA_HOME='/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home'
# 设定pkgconfig,安装rmagick(gem)需要，还需要设定2个link
# ln -s /usr/local/include/ImageMagick/wand /usr/local/include/wand
# ln -s /usr/local/include/ImageMagick/magick /usr/local/include/magick
PKG_CONFIG_PATH="/usr/local/lib/pkgconfig"
export SVN_EDITOR='/usr/bin/vim'
# 设定编码，显示颜色
export LANG=zh_CN.UTF-8
export CLICOLOR=1
export LSCOLORS=gxfxaxdxcxegedabagacad
export BUNDLER_EDITOR='/usr/bin/vim'
# 设定cdpath
export CDPATH=.:~:/usr:~/work:~/work/source_code:~/work/gene:~/work/study

# set rvm
[[ -s "/Users/dayuan/.rvm/scripts/rvm" ]] && source "/Users/dayuan/.rvm/scripts/rvm"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
PATH=$PATH:$HOME/.rvm/bin

# mine alias
alias ls="ls -G"
alias la="ls -a"
alias lt="tree -L 1"
alias ll="ls -l"
alias ltd="tree -d"
alias ds="du -sh *|sort -nr"
alias curl="curl --progress-bar"
alias htop="htop"
alias cl="clear"
alias ..="cd .."
alias sl="subl"
alias v="vim"
alias mm="mvim"
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
alias pdf="cd ~/pdf"
alias edm="cd ~/work/gene/gene-edm"
alias data="cd ~/work/gene/gene-data"
alias crm="cd ~/work/gene/gene-crm"
alias st="cd ~/work/study"
alias .v="cd ~/.vim"
alias od="open ~/Desktop"
alias odoc="open ~/work/rdoc/index.html"
alias ox="open ~/Downloads"
alias md="open -a Mou"
alias mov="cd ~/Movies"
alias pic="cd ~/Pictures"

# 启动项
alias mysqld="mysql.server start"
alias mongod="sudo mongod run --config /usr/local/etc/mongod.conf"
alias redis-s="redis-server /usr/local/etc/redis.conf"
alias rp='rails-console-pry -r pry-doc -r awesome_print -r ruby18_source_location'

# 打开网站
alias og="open https://github.com/bigcircle"
alias or="open http://ruby-china.org/topics"
alias os="open http://sports.sina.com.cn"
alias l3="open http://localhost:3000"
alias l4="open http://localhost:4000"

# 几个常用的备份文件
alias s1="sl ~/work/study/part_1.rb"
alias s2="sl ~/work/study/part_2.rb"
alias s3="sl ~/work/study/part_3.rb"
alias s4="sl ~/work/study/part_4.rb"
alias s5="sl ~/work/study/linux.sh"
alias s6="sl ~/work/study/part_6.rb"

# git svn
alias ga="git add"
alias gr="git rm"
alias gs="git status"
alias gf="git fetch"
alias gll="git pull"
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

# ruby rails jekyll
alias gi="gem install --no-ri --no-rdoc"
alias gl="gem list"
alias gu="gem uninstall"
alias ge="gem edit"
alias bck="bundle check"
alias bi="bundle install"
alias rss="rails s"
alias pss="passenger start"
alias jes="jekyll --server"
alias rgm="rails g migration"

# 自定义一些函数
# 创建文件夹并进入
function mkcd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
# 查看输入命令次数
function see () { awk -F ';' '{print $NF}' ~/.zsh_history | awk -F ' ' '{w[$1]+=1} END{for (a in w) print a,w[a]}' |sort -k2nr |head -$1 }
