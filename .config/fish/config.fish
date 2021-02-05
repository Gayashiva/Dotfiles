if status is-interactive
and not set -q TMUX
    exec tmux
end

starship init fish | source
#
#function thermal
#    /home/surya/Programs/eventstreamclient/samples/decoder/build/decoder $argv
#end
#funcsave thermal

alias vim nvim
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

set -Ux PYENV_ROOT $HOME/.config/pyenv
set -Ux fish_user_paths $PYENV_ROOT/bin $fish_user_paths


# pyenv init
if command -v pyenv 1>/dev/null 2>&1
  pyenv init - | source
end

status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source
