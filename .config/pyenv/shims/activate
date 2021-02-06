[ -n "$PYENV_DEBUG" ] && set -x
export PYENV_ROOT="/home/suryab/.config/pyenv"
program="$("/usr/share/pyenv/libexec/pyenv" which "${BASH_SOURCE##*/}")"
if [ -e "${program}" ]; then
  . "${program}" "$@"
fi
