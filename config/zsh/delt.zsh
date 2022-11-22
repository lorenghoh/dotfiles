SRC=$HOME/sources

# configure $PATH
path=(
    $HOME/.local/{bin,sbin}
    $HOME/.local/opt/neovim/{bin,sbin}
    $HOME/.{rustup,cargo}/{bin,sbin}
    $path
)

export LD_LIBRARY_PATH=$HOME/.local/lib:$HOME/.local/conda/lib:$LD_LIBRARY_PATH
export TERM=xterm-256color

# Alias and functions
function pyinit() {
    source $HOME/.local/opt/conda/etc/profile.d/conda.sh
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

# PBS functions
alias qs="qstat"
alias qu="qstat -u loh"

function qn() {
    if (( $# == 0 ))
    then
        qstat -u loh
    else
        qstat -n $1.admin
    fi
}

function qd() {
    qdel $1.admin
}

# Compiler settings
module add GCC/8.3

export CC=gcc
export CXX=g++
export CF=gfortran

