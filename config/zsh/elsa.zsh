SRC=$HOME/sources/

# configure $PATH
path=(
    $HOME/.local/{bin,sbin}
    $HOME/.local/{conda,neovim}/{bin,sbin}
    $path
)

export LD_LIBRARY_PATH=$HOME/.local/lib

export TERM=xterm-256color

# Alias and functions
alias ls="ls --color=auto"
alias k="k -ha"

function pyinit() {
    source $HOME/.local/conda/etc/profile.d/conda.sh
    conda activate
}

function module() {
    eval $(/usr/bin/modulecmd zsh $@)
}

# Compiler settings
module add intel18/compiler-18
module add intel18/netcdf-4.6.1
module add intel18/openmpi-2.0.2

export CC=icc
export CXX=icpc
export CF=mpifort

