# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH="$HOME/.yarn/bin:$PATH"
export JAVA_HOME="/usr/bin/java"

export RED="\[\033[0;31m\]"
export LIGHT_RED="\[\033[0;91m\]"
export YELLOW="\[\033[0;33m\]"
export BLUE="\[\033[0;34m\]"
export GREEN="\[\033[0;32m\]"
export DARK_GRAY="\[\033[0;90m\]"
export LIGHT_YELLOW="\[\033[0;93m\]"
export NO_COLOR="\[\033[0m\]"

# export VIMRC=~/.vimrc
function trunc_path () {
  export PS1="$LIGHT_YELLOW$(pwd | awk '
    BEGIN { MAX=30 }
    { 
      LEN=length($0); 
      if(LEN>MAX){
        printf "...";
        for(i=LEN-MAX; ++i<=LEN;) printf "%s", substr($0,i,1);
      } else printf "%s", $0
    } 
    END { printf "\n" }
  ')$NO_COLOR: "
}

export PS1="$RED\u:$LIGHT_YELLOW\w($DARK_GRAY\t@\d)$NO_COLOR\$ "
export PROMPT_COMMAND=trunc_path
