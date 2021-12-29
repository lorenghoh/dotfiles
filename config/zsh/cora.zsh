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
alias ls="ls -FGH"
alias k="k -ha"

function pyinit() {
    source $HOME/.local/conda/etc/profile.d/conda.sh 
    conda activate
}

