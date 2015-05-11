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

# Load rvm, nvm, and gvm
[[ -s ~/.rvm/scripts/rvm ]] && source ~/.rvm/scripts/rvm
[[ -s ~/.nvm/nvm.sh ]] && source ~/.nvm/nvm.sh
[[ -s ~/.gvm/scripts/gvm ]] && source ~/.gvm/scripts/gvm

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
