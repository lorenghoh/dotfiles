SRC=$HOME/Workspace/sources/

# configure $PATH
path=(
    /opt/homebrew/{bin,sbin}
    $HOME/.local/{bin,sbin}
    $HOME/.local/conda/{bin,sbin}
    $HOME/.local/tex/texbin
    $path
)

export LD_LIBRARY_PATH=$HOME/.local/lib

# Alias and functions
function pyinit() {
    source $HOME/.local/conda/etc/profile.d/conda.sh 
    conda activate
}

# Rust toolkits
alias du="dust -r"

alias la="exa -1la --group-directories-first"
alias ls="exa -G --group-directories-first"

function lt() {
    if (( $# == 0 ))
    then
        exa -1lFT -L=2 --git
    else
        exa -1lFT -L=$1 --git
    fi
}
