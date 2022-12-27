if [ -f "$HOME/.bashrc" ] ; then
  source $HOME/.bashrc
fi

# export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk-14.0.1.jdk/Contents/Home"
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"

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
  builtin cd "$1" && ls -aAFG; 
}

export -f cd

function openfile () {
  FILES=`rg "$*" -l --color=never`;
  if [[ $FILES ]]; then
    vim $FILES;
  else
    echo "No files found";
  fi;
}

export -f openfile

PATHS=(
  # "$HOME/flutter/bin"
  # "$HOME/.deno/bin"
  "$HOME/.yarn/bin"
  # "$JAVA_HOME/bin"
  "$HOME/Library/Python/3.8/bin"
  "$HOME/.pyenv/bin"
  "/usr/local/opt/ruby/bin"
  "$HOME/.local/bin"
  "$HOME/bin"
  /Library/TeX/texbin
  # "$HOME/google-cloud-sdk/bin"
  "$HOME/go/bin"
)

for i in ${PATHS[@]}; do
  if [[ $PATH != *"$i"* ]]; then
    if [[ -d $i ]] ; then
      export PATH=$i:$PATH
    fi
  fi
done

function bekp () {
  bundle exec kitchen diagnose $1 | grep password -m1
}

export -f bekp

export PYENV_ROOT="$HOME/.pyenv"

export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"

export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin

#eval "$(rbenv init -)"

eval "$(/opt/homebrew/bin/brew shellenv)"

# mac
export BASH_SILENCE_DEPRECATION_WARNING=1
