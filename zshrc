# Path to your oh-my-zsh installation.
export ZSH=/home/scott/.oh-my-zsh

ZSH_THEME="candy"

plugins=(git)


export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games"

source $ZSH/oh-my-zsh.sh

#導入go 環境變數
export GOROOT=$HOME/go1.4
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/gohome
export PATH=$PATH:$HOME/mybin:$GOPATH/bin


export NVM_DIR="/home/scott/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

nvm use 4.0
