My Develop Environment
===============

<h3>Vim 環境:</h3>

安裝Voundle & git
``` shell
sudo apt-get install git curl
``` 

``` shell
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

最後在 Vim 中執行 :PluginInstall 安裝 .vimrc 中所設定的 plugins

<h3>Sublime Text3 環境:</h3>


Package Control 安裝
開啟console (Ctrl + `)

```
import urllib.request,os,hashlib; h = '7183a2d3e96f11eeadd761d777e62404' + 'e330c659d4bb41d3bdf022e94cab3cd0'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
```

貼上代碼enter
安裝完畢

必裝套件
*. Sub­limeLin­t
*. SublimeLinter-php
*. SublimeLinter-phplint
*. SublimeLinter-jshint
*. SublimeLinter-csslint
*. SideBarEnhancements
*. git


使用jsint需安裝node套件!

``` shell
sudo npm install -g jshint
```

使用csslint需安裝node套件!

``` shell
sudo npm install -g csslint
```
