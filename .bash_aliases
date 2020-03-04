alias desktop="echo /mnt/c/Users/Pierre/Desktop"
alias downloads="echo /mnt/c/Users/Pierre/Downloads"
alias sandbox="echo /mnt/c/Users/Pierre/Desktop/sandbox"
alias spysmiles="echo ~/spysmiles"
alias explore="explorer.exe";

alias ll='ls -alF'
alias la="ls -AF --group-directories-first --color"
alias l='ls -CF'

function openfile () {
  FILES=`rg "$*" -l`;
  if [[ $FILES ]]; then
    vim $FILES;
  else
    echo "No files found";
  fi;
}

function cd () {
  builtin cd $@ && ls --group-directories-first -A
}
