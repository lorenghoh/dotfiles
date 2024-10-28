# Tree view with eza

function lt --description "Tree view with eza"
    argparse l#level -- $argv
    or return

    if not set -ql _flag_level
        set -f _lev 1
    else
        set -f _lev $_flag_level
    end

    eza -alR --level=$_lev --git --icons --group-directories-first $argv
end
