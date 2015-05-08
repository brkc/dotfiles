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

# Load rvm and nvm
[[ -s ~/.rvm/scripts/rvm ]] && source ~/.rvm/scripts/rvm
[[ -s ~/.nvm/nvm.sh ]] && source ~/.nvm/nvm.sh

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
