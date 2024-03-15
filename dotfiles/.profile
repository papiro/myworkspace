if [ -f "$HOME/.bashrc" ] ; then
  source $HOME/.bashrc
fi

export SHELL=/bin/bash

RED="\[\033[0;31m\]"
LIGHT_RED="\[\033[0;91m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
GREEN="\[\033[0;32m\]"
DARK_GRAY="\[\033[0;90m\]"
LIGHT_YELLOW="\[\033[0;93m\]"
NO_COLOR="\[\033[0m\]"

function trunc_path () {
   export PS1="$RED\u:$LIGHT_YELLOW$(pwd | awk '
     BEGIN { MAX=30 }
     { 
       # macos
       # sub(/\/Users\/[^\/]*/, "~", $0);
       # linux
       sub(/\/home\/'"$USER"'/, "~", $0);
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

export PROMPT_COMMAND=trunc_path

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
  "$HOME/.local/bin"
  "$HOME/bin"
  # "$HOME/flutter/bin"
  # "$HOME/.deno/bin"
  # "$HOME/.yarn/bin"
  # "$HOME/.pyenv/bin"
  # "$HOME/go/bin"
  # "$JAVA_HOME/bin"
  # "$HOME/Library/Python/3.8/bin"
  # "/usr/local/opt/ruby/bin"
  # /Library/TeX/texbin
  # "$HOME/google-cloud-sdk/bin"
)

for i in ${PATHS[@]}; do
  if [[ $PATH != *"$i"* ]]; then
    if [[ -d $i ]] ; then
      export PATH=$i:$PATH
    fi
  fi
done

export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"

# python
# export PYENV_ROOT="$HOME/.pyenv"

# macos
# eval "$(/opt/homebrew/bin/brew shellenv)"
# export BASH_SILENCE_DEPRECATION_WARNING=1

# go
# export GOPATH=$HOME/go
# export GOBIN=$HOME/go/bin

# ruby
#eval "$(rbenv init -)"
# export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@3)"
# eval "$(rbenv init - bash)"
# export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
# export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"

# java
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk-14.0.1.jdk/Contents/Home"
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"
