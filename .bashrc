# Display the current branch when in a git repository.  IN COLOR!
function parse_git_branch () {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"

PS1="$GREEN\u@\h$NO_COLOR:\w$YELLOW\$(parse_git_branch)$NO_COLOR\$ "

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
