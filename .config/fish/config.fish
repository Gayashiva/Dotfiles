if status is-interactive
and not set -q TMUX
    exec tmux
end

# This is equivalent to entering the following function:
function thermal
    /home/surya/Programs/eventstreamclient/samples/decoder/build/decoder $argv
end
funcsave thermal

alias vim nvim
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
export PATH="$HOME/Programs/nvim/bin:$PATH"   
export PATH="/home/surya/.pyenv/bin:$PATH"
