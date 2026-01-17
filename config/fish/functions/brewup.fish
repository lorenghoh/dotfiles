# Homebrew-related functions for Fish shell

function brewup --description "Update and clean homebrew recipes"
    brew update && brew upgrade && brew cleanup
end
