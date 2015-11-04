#My Develop Environment
===============

##字型:
* inconsolata

##系統環境架設:
必裝套件
* nvm (Node Version Manger)
* npm (Node Package Manger)
* rvm (Ruby Version Manger)
* rpm (Ruby Package Manger)


##Vim 環境:

``` shell
sudo apt-get install git curl vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```
1. 安裝Voundle & git & vim (7.0 up)  
2. Color Scheme: [https://github.com/fatih/molokai](https://github.com/fatih/molokai) or xoria256.vim  放到~/.vim/colors
3. 有要用 [autocomplete](http://github.com/Shougo/neocomplete) 請確認  

> Make sure you have any of these packages:
> * vim-nox
> * vim-gtk
> * vim-gnome
> * vim-athena

4. 有要用 [tagbar](https://github.com/majutsushi/tagbar) 請確認  

> ctags 5.5  

5. 要在自己根目錄開兩個資料夾，或是註解掉 77 & 78 行，不要設定backupdir & dircetory  

> // set backdir=~/.vim/backup//  
> // directory=~/.vim/swap//  


``` shell
$ mkdir ~/.vim/backup
$ mkdir ~/.vim/swap/
```


最後在 Vim 中執行 :VundleInstall 安裝 .vimrc 中所設定的 plugins
要更新的時侯就下 :VundleUpdate

## Go 開發環境

```
// 搭配 tagbar 使用
go get -u github.com/jstemmer/gotags
```

##Sublime Text3 環境:
Package Control 安裝
開啟console (Ctrl + `)

```
import urllib.request,os,hashlib; h = '7183a2d3e96f11eeadd761d777e62404' + 'e330c659d4bb41d3bdf022e94cab3cd0'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
```

貼上代碼enter
安裝完畢

###必裝套件
必裝套件
* SublimeLint
* SublimeLinter-php
* SublimeLinter-phplint
* SublimeLinter-jshint
* SublimeLinter-csslint
* SideBarEnhancements
* git


使用jsint需安裝node套件!
``` shell
sudo npm install -g jshint
```

使用csslint需安裝node套件!
``` shell
sudo npm install -g csslint
```
