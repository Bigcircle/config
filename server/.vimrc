" 用于导入到服务器~/.vimrc

set encoding=utf8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

syntax enable
syntax on             "打开语法高亮
set nu                "显示行数
set nobackup          "关闭自动备份
set hlsearch          "查找结果高亮显示
set tabstop=2         "tab改为2空格
set et                "将tab转换成空格
set smarttab          "删除tab空格时一次删除2个
set shiftwidth=2      "自动缩进的时候2个空格
set autoindent        "自动智能缩进
set smartindent

set history=1000
set ruler             "显示当前行列
set incsearch         "/查找
set showmatch         "匹配左括号，引号
set autoread          "文件被修改自动读取
set ignorecase        "忽略大小写
set nocompatible      "去掉vi一致性模式
set nowrap            "不自动换行
set wildmode=list:full
set wildmenu          "补全内容以单行菜单形式显示出来
autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby

"显示状态栏
set statusline=%F%m%r%h%w\ [[POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set laststatus=2
set backspace=2           "使回格键（backspace）正常处理indent, eol, start等
set whichwrap=b,s,<,>,[,] "允许backspace和光标键跨越行边界
colo molokai

"杂项
set shortmess=atI     "不显示索马里儿童
set report=0          " :commands显示更改
set noerrorbells      "不发出声音

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set mousemodel=popup
set guioptions+=b

"检查文件类型
filetype plugin on
filetype indent on
filetype plugin indent on
