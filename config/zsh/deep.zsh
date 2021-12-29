SRC=$HOME/Sources/

# configure $PATH
path=(
    $HOME/.local/{bin,sbin}
    $HOME/.local/conda/{bin,sbin}
    $path
)

export LD_LIBRARY_PATH=$HOME/.local/lib

# Alias and functions
alias ls="ls --color=auto"
alias k="k -ha"

function pyinit() {
    source $HOME/.local/conda/etc/profile.d/conda.sh 
    conda activate
}

