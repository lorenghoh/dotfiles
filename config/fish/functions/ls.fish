# Define better ls with eza

function ls --description "Replace ls with eza"
    eza -aG --git --icons --group-directories-first $argv
end
