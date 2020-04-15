export ZSH=/usr/share/oh-my-zsh
export ZSH_CUSTOM=$HOME/.oh-my-zsh
# ZSH_THEME="robbyrussell"
# ZSH_THEME="ys"
ZSH_THEME="simple"
DISABLE_AUTO_UPDATE="true"
HIST_STAMPS="mm/dd/yyyy"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
# zsh-completions
# autoload -U compinit && compinit
ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi
source $ZSH/oh-my-zsh.sh

[ -f ~/.aliasrc ] && source ~/.aliasrc

if [ -f ~/.ssh/ssh_connection ]; then
  source ~/.ssh/ssh_connection
fi

# FZF
# git clone --depth 1 https://github.com/junegunn/fzf.git
# sudo pacman -S fd the_silver_searcher(ag)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
# export FZF_DEFAULT_COMMAND="fd --exclude={.git,.idea,.sass-cache,node_modules,build} --type f"
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -l -g ""'
