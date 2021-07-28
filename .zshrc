# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
 
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
 
# Source Znap
zstyle ':znap:*' git-dir ~/sources/zsh-snap
source ~/sources/zsh-snap/zsh-snap/znap.zsh
 
znap source powerlevel10k
 
# configure $PATH
path=(
    /home/loh/.local/{bin,sbin}
    /home/loh/.local/{conda,neovim}/{bin,sbin}
    $path
)

export LD_LIBRARY_PATH=$HOME/.local/lib
export TERM=screen-256color
 
ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets )
znap source zsh-users/zsh-syntax-highlighting
znap source zsh-users/zsh-autosuggestions
znap source supercrabtree/k
 
znap source Aloxaf/fzf-tab
znap source marlonrichert/zsh-edit
znap source jeffreytse/zsh-vi-mode
 
znap eval trapd00r/LS_COLORS "$( whence -a dircolors gdircolors ) -b LS_COLORS"

znap source marlonrichert/zcolors
znap eval   marlonrichert/zcolors "zcolors ${(q)LS_COLORS}"

zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
 
# Alias
alias ls='ls --color=auto'
alias k="k -ha"
alias pyinit='eval "$(conda shell.bash hook)"'

# ZSH settings
HISTFILE=~/.zsh_history
HISTSIZE=10240
SAVEHIST=10240
setopt appendhistory
