# Define local parameters
ZHOST=${HOST:0:4:l}
source $HOME/.config/zsh/$ZHOST.zsh

# Source Znap
source $SRC/zsh-snap/zsh-snap/znap.zsh

zstyle ':znap:*:*' git-maintenance off

zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:ssh:*' hosts
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zstyle ':autocomplete:*' widget-style menu-complete
zstyle ':autocomplete:*' insert-unambiguous yes
zstyle ':autocomplete:*' min-delay 0.5
zstyle ':autocomplete:*' list-lines 8

ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets )
znap source jeffreytse/zsh-vi-mode
znap source zsh-users/zsh-syntax-highlighting
znap source zsh-users/zsh-autosuggestions
znap source marlonrichert/zsh-autocomplete

eval "$(starship init zsh)"

# ZSH settings
alias history="history 1"
HISTFILE=$HOME/.zsh_history
HISTSIZE=10240
SAVEHIST=$HISTSIZE

setopt INC_APPEND_HISTORY
setopt HIST_SAVE_NO_DUPS

