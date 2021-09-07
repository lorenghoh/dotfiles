# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $HOME/.p10k.zsh ]] || source $HOME/.p10k.zsh
 
# Source Znap
source $HOME/Workspace/sources/zsh-snap/zsh-snap/znap.zsh
 
znap source romkatv/powerlevel10k
 
# configure $PATH
path=(
    /opt/homebrew/{bin,sbin}
    $HOME/.local/{bin,sbin}
    $HOME/.local/{conda,neovim,texlive}/{bin,sbin}
    $path
)

export LD_LIBRARY_PATH=$HOME/.local/lib

znap source Aloxaf/fzf-tab
znap source supercrabtree/k
znap source jeffreytse/zsh-vi-mode

znap eval trapd00r/LS_COLORS "$( whence -a dircolors gdircolors ) -b LS_COLORS"

znap source marlonrichert/zcolors
znap eval   marlonrichert/zcolors "zcolors ${(q)LS_COLORS}"

zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
 
ZSH_HIGHLIGHT_HIGHLIGHTERS=( main brackets )
znap source zsh-users/zsh-syntax-highlighting
znap source zsh-users/zsh-autosuggestions

# Alias
alias ls="ls -FHG"
alias k="k -ha"

function pyinit() {
    source $HOME/.local/conda/etc/profile.d/conda.sh 
    conda activate
}

# ZSH settings
HISTFILE=$HOME/.zsh_history
HISTSIZE=10240
SAVEHIST=10240

setopt INC_APPEND_HISTORY
setopt HIST_SAVE_NO_DUPS

