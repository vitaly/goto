export GOTOBIN=${GOTOBIN:-goto}
function g() {
  local dir
  dir=$($GOTOBIN "$@")
  if [[ "$dir" != "." ]]; then
    # we first switch to home directory in case current dir has local overrides for XDG_* variables
    # in which case direnv might try to look for envrc permissions in the wrong place
    if ! cd; then
      echo "cd failed" >&2
      return
    fi
    dir="${dir/#\~/$HOME}"
    if ! cd "$dir"; then
      echo "cd '$dir' failed" >&2
      return
    fi
  fi
}
