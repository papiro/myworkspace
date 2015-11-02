exists(){
  command -v $1 2>&1 >/dev/null && return 0 || return 1
}

sudo apt-get update -y
sudo apt-get upgrade -y &

if ! exists git; then
  sudo apt-get install -y git &
fi

if ! exists node; then
  sudo apt-get install -y nodejs-legacy
fi

if ! exists nvm; then
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
fi

if ! exists vim; then
  sudo apt-get install -y vim &
fi

nvm install stable &

sudo npm install -g npm &

cp ./.vimrc ~/ &
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall &

git config --global core.editor "vim"
