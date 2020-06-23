export ZSH=/Users/scott/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="candy"


alias vim='mvim -v'
export ETCDCTL_API=3

export GOROOT=$HOME/dev/go1.12.2
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/dev/godev
export PATH=$PATH:$GOPATH/bin

plugins=(git wakatime web-search docker extract osx last-working-dir)

alias vi="vim"
source $ZSH/oh-my-zsh.sh

alias lg='lazygit'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/scott/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/scott/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/scott/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/scott/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
source <(kubectl completion zsh)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
