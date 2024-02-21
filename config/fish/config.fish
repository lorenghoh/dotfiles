starship init fish | source

if status is-interactive
    fish_vi_key_bindings
end

function ls
    eza -aG --git --icons --group-directories-first
end

function lt
    if not set -q argv[1]
        eza -al --level=1 --git --icons --group-directories-first
    else
        eza -alR --level=$argv[1] --git --icons --group-directories-first
    end
end
