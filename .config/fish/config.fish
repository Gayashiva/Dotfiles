if status is-interactive
and not set -q TMUX
    exec tmux
end

starship init fish | source
#
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# eval /home/surya/Programs/anaconda3/bin/conda "shell.fish" "hook" $argv | source
#
# <<< conda initialize <<<
#
# This is equivalent to entering the following function:
#function thermal
#    /home/surya/Programs/eventstreamclient/samples/decoder/build/decoder $argv
#end
#funcsave thermal

alias vim nvim
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
#export PATH="$HOME/Programs/nvim/bin:$PATH"   
#export PATH="/home/surya/.pyenv/bin:$PATH"

set -Ux PYENV_ROOT $HOME/.pyenv
set -Ux fish_user_paths $PYENV_ROOT/bin $fish_user_paths


# pyenv init
if command -v pyenv 1>/dev/null 2>&1
  pyenv init - | source
end

status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source
