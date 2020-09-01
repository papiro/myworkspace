# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

#export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk-14.0.1.jdk/Contents/Home"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"

export PATH="$JAVA_HOME/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"

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

# export PS1="$RED\u:$LIGHT_YELLOW\w($DARK_GRAY\t@\d)$NO_COLOR\$ "
export PATH=$PATH:"/Users/pierrepirault/flutter/bin"
export PATH="/Users/pierrepirault/.deno/bin:$PATH"
# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/pierrepirault/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/pierrepirault/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/pierrepirault/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/pierrepirault/google-cloud-sdk/completion.zsh.inc'; fi

alias python="python3"
alias pip="python -m pip"
