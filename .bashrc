alias xclip="xargs echo -n | xclip -selection clipboard"

shopt -s globstar

cd () 
{
  builtin cd "$@" && ls -a
}

overview ()
{
  for i in `ls`; do
    (command cd $i &>/dev/null
    if ! git status 2>&1 | grep -F -e "nothing to commit" -e "fatal" &>/dev/null; then
      printf "\n\e[94m$i\e[39m\n"
      git status
    fi
    )
  done
}

export RED="\[\033[0;31m\]"
export LIGHT_RED="\[\033[0;91m\]"
export YELLOW="\[\033[0;33m\]"
export BLUE="\[\033[0;34m\]"
export GREEN="\[\033[0;32m\]"
export DARK_GRAY="\[\033[0;90m\]"
export LIGHT_YELLOW="\[\033[0;93m\]"
export NO_COLOR="\[\033[0m\]"

export PS1="$RED\u:$LIGHT_YELLOW\w($DARK_GRAY\t@\d)$NO_COLOR\$ "
export -f cd overview
