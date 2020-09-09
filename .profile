# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    export PATH="$HOME/.local/bin:$PATH"
fi

if [ -f "$HOME/.bashrc" ] ; then
  source $HOME/.bashrc
fi

#export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk-14.0.1.jdk/Contents/Home"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"

export RED="\[\033[0;31m\]"
export LIGHT_RED="\[\033[0;91m\]"
export YELLOW="\[\033[0;33m\]"
export BLUE="\[\033[0;34m\]"
export GREEN="\[\033[0;32m\]"
export DARK_GRAY="\[\033[0;90m\]"
export LIGHT_YELLOW="\[\033[0;93m\]"
export NO_COLOR="\[\033[0m\]"

# export VIMRC=~/.vimrc
export PROMPT_COMMAND=trunc_path

# export PS1="$RED\u:$LIGHT_YELLOW\w($DARK_GRAY\t@\d)$NO_COLOR\$ "
function trunc_path () {
   export PS1="$RED\u:$LIGHT_YELLOW$(pwd | awk '
     BEGIN { MAX=30 }
     { 
       sub(/\/Users\/[^\/]*/, "~", $0);
       LEN=length($0); 
       if(LEN>MAX){
         printf "...";
         for(i=LEN-MAX; ++i<=LEN;) printf "%s", substr($0,i,1);
       } else printf "%s", $0
     } 
     END { printf "\n" }
   ')$NO_COLOR: "
 }

export -f trunc_path

function cd () {
  builtin cd $1 && la; 
}

export -f cd

PATHS=(
  "$HOME/flutter/bin"
  "$HOME/.deno/bin"
  "$HOME/.yarn/bin"
  "$JAVA_HOME/bin"
  "$HOME/Library/Python/3.7/bin"
)

for i in ${PATHS[@]}; do
  export PATH=$PATH:$i
done
