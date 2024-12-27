if status is-interactive
    fish_vi_key_bindings
end

fish_add_path -g ~/.local/bin ~/.cargo/bin

# Aliases
alias nv='nvim'
alias pn='pnpm'

starship init fish | source
