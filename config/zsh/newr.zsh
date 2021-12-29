SRC=$HOME/sources

# configure $PATH
path=(
    $HOME/.local/{bin,sbin}
    $HOME/.local/{conda,neovim}/{bin,sbin}
    $HOME/.local/tex/2020/bin/x86_64-linux
    $path
)

export LD_LIBRARY_PATH=$HOME/.local/lib
export TERM=xterm-256color

# Alias and functions
alias ls="ls --color=auto"
alias k="k -ha"

function pyinit() {
    source $HOME/.local/conda/etc/profile.d/conda.sh 
    conda activate stats
}

