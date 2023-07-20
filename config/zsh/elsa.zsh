SRC=$HOME/sources/

# configure $PATH
path=(
    $HOME/.local/{app,bin,sbin}
    $HOME/.local/opt/conda/{bin,sbin}
    $HOME/.local/opt/tex/bin/x86_64-linux
    $HOME/.{rustup,cargo}/{bin,sbin}
    $path
)

export LD_LIBRARY_PATH=$HOME/.local/lib
export CONDA_DIR=$HOME/.local/opt/conda

export TERMINFO="/usr/share/terminfo"
export TERM=xterm-256color

# Alias and functions
alias ls="ls --color=auto"
alias k="k -ha"

function pyinit() {
    . ~/.config/zsh/mamba.sh
    mamba activate
}

function module() {
    eval $(/usr/bin/modulecmd zsh $@)
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
        qstat -n $1.elsa00
    fi
}

function qd() {
    qdel $1.elsa00
}

# Compiler settings
module add intel18/compiler-18
module add intel18/netcdf-4.6.1
module add intel18/openmpi-2.0.2

export CC=icc
export CXX=icpc
export CF=mpifort

