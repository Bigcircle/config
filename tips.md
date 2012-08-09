######记录下安装sublime 之后需要做的时，免得每次都得google

- cp ~/config/Preferences.sublime-settings Default (OSX).sublime-keymap ~/Library/Application Support/Sublime Text 2/Packages/User
- 安装包管理器 打开ctrl+`,调出python控制台，把下面安装语句导入之后回车，重启sublime, cmd+shift+p调出 输入 install可见 install package

    import urllib2,os;pf='Package
    Control.sublime-package';ipp=sublime.installed_packages_path();os.makedirs(ipp) if not 	os.path.exists(ipp) else 					None;open(os.path.join(ipp,pf),'wb').write(urllib2.urlopen('http://	sublime.wbond.net/'+pf.replace(' ','%20')).read())
   
- textmate各种颜色配色下载 https://github.com/antlong/Textmate-Themes
- 开启终端功能
- 
    sudo ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/bin/subl


######常用包
1. brackethighlighter --- 高亮匹配,html标签
2. tags --- tag切换,需要系统装ctags-extand，lion自带的ctags不支
3. filldiffs --- 查看文件修改和文件比较
4. sidebarenhancement --- 侧边栏增强
5. zencoding --- html+css 缩写
6. ublimelinter --- 语法检查
7. DetectSyntax --- 文件类型检查
8. Markdown Preview --- markdown 预览
