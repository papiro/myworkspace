source ~/.bashrc

export VIMRC=~/.vimrc
export PROMPT_COMMAND=trunc_path

function trunc_path () {
  export PS1="$(pwd | awk '
    BEGIN { MAX=30 }
    { 
      LEN=length($0); 
      if(LEN>MAX){
        printf "...";
        for(i=LEN-MAX; ++i<=LEN;) printf "%s", substr($0,i,1);
      } else printf "%s", $0
    } 
    END { printf "\n" }
  ') \A !\!> "
}

#shopt -s histverify


