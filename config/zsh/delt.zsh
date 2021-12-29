SRC=$HOME/sources

# configure $PATH
path=(
    $HOME/.local/{bin,sbin}
    $HOME/.local/{conda,neovim}/{bin,sbin}
    $path
)

export LD_LIBRARY_PATH=$HOME/.local/lib:$HOME/.local/conda/lib:$LD_LIBRARY_PATH
export TERM=xterm-256color

# Alias and functions
alias ls="ls --color=auto"
alias k="k -ha"

function pyinit() {
    source $HOME/.local/conda/etc/profile.d/conda.sh
    conda activate
}

# Compiler settings
module add GCC/8.3

export CC=gcc
export CXX=g++
export CF=gfortran

