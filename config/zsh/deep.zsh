SRC=$HOME/Sources/

# configure $PATH
path=(
    $HOME/.local/{bin,sbin}
    $path
)

export LD_LIBRARY_PATH=$HOME/.local/lib
export CONDA_DIR=$HOME/.local/conda

export WEZTERM_CONFIG_DIR=$HOME/.config/wezterm
export LIBVA_DRIVER_NAME=nvidia
export npm_config_prefix="$HOME/.local"

## Alias and functions
# Conda initialization
function pyinit() {
    . $HOME/.config/zsh/mamba.sh
    mamba activate
}

# Webster's dictionary using sdcv
function d() {
    sdcv -n --utf8-output --color "$@" 2>&1 | \
    fold --width=$(tput cols) | \
    less --quit-if-one-screen -RX
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
