export ZSH=/Users/scott/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="candy"
export TERM=xterm-256color

export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"
alias vim='mvim -v'
export ETCDCTL_API=3
export EDITOR='vim'

export GOROOT=$HOME/dev/go1.14
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/dev/godev
export PATH=$PATH:$GOPATH/bin
export GO111MODULE=on
plugins=(git wakatime web-search docker extract osx last-working-dir)

alias context="kubectl config current-context"
alias vi="vim"
source $ZSH/oh-my-zsh.sh

alias lg='lazygit'
source <(kubectl completion zsh)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/scott/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/scott/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/scott/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/scott/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="/usr/local/opt/ruby/bin:$PATH"
