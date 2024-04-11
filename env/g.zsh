# Link this into your ZSH functions as 'g'
# we first switch to home directory in case current dir has local overrides for XDG_* variables
# in which case direnv might try to look for envrc permissions in the wrong place
local dir
dir=$(goto "$@")
if [[ "$dir" != "." ]]
then cd
  dir="${dir/#\~/$HOME}"
  cd "$dir"
fi
