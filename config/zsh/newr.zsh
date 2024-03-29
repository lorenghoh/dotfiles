SRC=$HOME/sources

# configure $PATH
path=(
    $HOME/.local/{app,bin,sbin}
    $HOME/.local/opt/tex/bin/x86_64-linux
    $HOME/.{rustup,cargo}/{bin,sbin}
    $path
)

export LD_LIBRARY_PATH=$HOME/.local/lib
export TERM=xterm-256color

# Alias and functions
function pyinit() {
    source $HOME/.local/opt/conda/etc/profile.d/conda.sh 
    conda activate stats
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
