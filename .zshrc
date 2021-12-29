# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $HOME/.p10k.zsh ]] || source $HOME/.p10k.zsh

# Define local parameters
ZHOST=${HOST:0:4:l}
source $HOME/.config/zsh/$ZHOST.zsh

# Source Znap
source $SRC/zsh-snap/zsh-snap/znap.zsh
 
znap source romkatv/powerlevel10k

znap source supercrabtree/k
znap source jeffreytse/zsh-vi-mode

znap eval trapd00r/LS_COLORS "$( whence -a dircolors gdircolors ) -b LS_COLORS"

# znap source marlonrichert/zcolors
# znap eval   marlonrichert/zcolors "zcolors ${(q)LS_COLORS}"

zstyle ':znap:*:*' git-maintenance off

zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:ssh:*' hosts
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zstyle ':autocomplete:*' widget-style menu-complete
zstyle ':autocomplete:*' insert-unambiguous yes
zstyle ':autocomplete:*' min-input 2

ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets )
znap source zsh-users/zsh-syntax-highlighting
znap source zsh-users/zsh-autosuggestions
znap source marlonrichert/zsh-autocomplete

# ZSH settings
HISTFILE=$HOME/.zsh_history
HISTSIZE=10240
SAVEHIST=10240

setopt INC_APPEND_HISTORY
setopt HIST_SAVE_NO_DUPS
