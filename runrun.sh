exists(){
  command -v $1 2>&1 >/dev/null && return 0 || return 1
}

sudo apt-get update -y
sudo apt-get upgrade -y

echo "Installing NodeJS..."
if ! exists node; then
  sudo apt-get install -y nodejs-legacy
fi

echo "Installing curl..."
if ! exists curl; then
  sudo apt-get install -y curl
fi

echo "Installing nvm..."
if ! exists nvm; then
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
fi

echo "Installing vim..."
if ! exists vim; then
  sudo apt-get install -y vim
fi

echo "Installing latest nodejs stable..."
nvm install stable &

cp ./.vimrc ~/ &
sudo mkdir -p ~/.vim/after/syntax
sudo cp syntax/*.vim ~/.vim/after/syntax
sudo cp --parents colors/*.vim ~/.vim
sudo git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo vim +PluginInstall +qall &

git config --global core.editor "vim"

cat .bashrc >> ~/.bashrc

git config --global user.email "pierre.pirault@outlook.com"
git config --global user.name "papiro"
git config --global push.default simple
