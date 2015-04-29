function join {
  local IFS="$1"
  shift
  echo "$*"
}

# Build PATH
paths=(
  ~/bin
  ~/.local/bin
  ~/.rvm/bin
  $PATH
)

# Environment variables
export EDITOR=vim
export PS1='\w\$ '
export PATH=$(join : ${paths[*]})

# Load RVM into a shell session *as a function*
[[ -s ~/.rvm/scripts/rvm ]] && source "$HOME/.rvm/scripts/rvm"

# Bash settings
shopts=(
  checkwinsize
  cmdhist
  lithist
  histappend
)
shopt -s ${shopts[*]}

# Load colors
#source .colors
