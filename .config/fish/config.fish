if status is-interactive
and not set -q TMUX
    exec tmux
end
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/surya/Programs/anaconda3/bin/conda "shell.fish" "hook" $argv | source
#
# <<< conda initialize <<<
#

set -g fish_key_bindings fish_vi_key_bindings
set -g theme_display_git yes
set -g theme_display_git_dirty no
set -g theme_display_git_untracked no
set -g theme_display_git_ahead_verbose no
set -g theme_display_git_dirty_verbose no
set -g theme_display_git_master_branch no
set -g theme_git_worktree_support yes
set -g theme_display_vagrant no 
set -g theme_display_docker_machine no
set -g theme_display_k8s_context yes
set -g theme_display_hg yes
set -g theme_display_virtualenv yes
set -g theme_display_ruby no
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_vi yes
set -g theme_display_date no
set -g theme_display_cmd_duration yes
set -g theme_title_display_process yes
set -g theme_title_display_path yes 
set -g theme_title_display_user yes
set -g theme_title_use_abbreviated_path yes 
set -g theme_date_format "+%a %H:%M"
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts no 
set -g theme_show_exit_status yes
set -g default_user your_normal_user
set -g theme_color_scheme solarized
set -g fish_prompt_pwd_dir_length 20 
set -g theme_project_dir_length 1
set -g theme_newline_cursor no


### PROMPT ###
# This was the 'sashimi' prompt from oh-my-fish.
function fish_prompt
  set -l last_status $status
  set -l cyan (set_color -o 98be65)
  set -l yellow (set_color -o yellow)
  set -g red (set_color -o 98be65)
  set -g blue (set_color -o blue)
  set -l green (set_color -o green)
  set -g normal (set_color magenta)

  set -l ahead (_git_ahead)
  set -g whitespace ' '

  if test $last_status = 0
    set initial_indicator "$green◆"
    set status_indicator "$normal❯$cyan❯$green❯"
  else
    set initial_indicator "$red✖ $last_status"
    set status_indicator "$red❯$red❯$red❯"
  end
  set -l cwd $cyan(basename (prompt_pwd))

  if [ (_git_branch_name) ]
    if test (_git_branch_name) = 'master'
      set -l git_branch (_git_branch_name)
      set git_info "$normal git:($red$git_branch$normal)"
    else
      set -l git_branch (_git_branch_name)
      set git_info "$normal git:($blue$git_branch$normal)"
    end
    if [ (_is_git_dirty) ]
      set -l dirty "$yellow ✗"
      set git_info "$git_info$dirty"
    end
  end
  # Notify if a command took more than 5 minutes
  if [ "$CMD_DURATION" -gt 300000 ]
    echo The last command took (math "$CMD_DURATION/1000") seconds.
  end

  echo -n -s $initial_indicator $whitespace $cwd $git_info $whitespace $ahead $status_indicator $whitespace
end

function _git_ahead
  set -l commits (command git rev-list --left-right '@{upstream}...HEAD' ^/dev/null)
  if [ $status != 0 ]
    return
  end
  set -l behind (count (for arg in $commits; echo $arg; end | grep '^<'))
  set -l ahead  (count (for arg in $commits; echo $arg; end | grep -v '^<'))
  switch "$ahead $behind"
    case ''     # no upstream
    case '0 0'  # equal to upstream
      return
    case '* 0'  # ahead of upstream
      echo "$blue↑$normal_c$ahead$whitespace"
    case '0 *'  # behind upstream
      echo "$red↓$normal_c$behind$whitespace"
    case '*'    # diverged from upstream
      echo "$blue↑$normal$ahead $red↓$normal_c$behind$whitespace"
  end
end

function _git_branch_name
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty ^/dev/null)
end

function fish_mode_prompt
  switch $fish_bind_mode
    case default
      set_color --bold red
      echo '(N) '
    case insert
      set_color --bold green
      echo '(I) '
    case replace_one
      set_color --bold green
      echo '(R) '
    case visual
      set_color --bold brmagenta
      echo '(V) '
    case '*'
      set_color --bold red
      echo '(?) '
  end
  set_color normal
end
### END OF PROMPT ###

alias vim nvim
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
export PATH="$HOME/Programs/nvim/bin:$PATH"   
export PATH="/home/surya/.pyenv/bin:$PATH"
