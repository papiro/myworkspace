#!/bin/sh

add2rc () {
  echo $1 >> /etc/rc.conf
}

# Setup users
echo "add users"
adduser

# Setup timezone
tzsetup

# Add NTP stuff to rc.conf
add2rc "ntpd_enable=YES"
add2rc "ntpd_sync_on_start=YES"

# Standard first update
echo "freebsd-update fetch"
freebsd-update fetch
echo "freebsd-update install"
freebsd-update install

# Hardening, phase 1
echo "tweak /etc/ssh/sshd_config"
echo "Add AllowUsers entry..."
vim /etc/ssh/sshd_config

# install Ports
`installPorts.sh`

# Install Kernel sources
echo "installing kernel sources"
echo "svn checkout https://svn0.us-west.freebsd.org/base/releng/10.2/ /usr/src"
svn checkout https://svn0.us-west.freebsd.org/base/releng/10.2/ /usr/src

echo "add rkhunter stuff to periodic.conf..."
read foo
vim /etc/defaults/periodic.conf

# Configuring vim
cp ./.vimrc ~/ &
sudo mkdir -p ~/.vim/after/syntax
sudo cp syntax/*.vim ~/.vim/after/syntax
sudo cp --parents colors/*.vim ~/.vim

# Configuring git
git config --global core.editor "vim"
git config --global user.email "pierre.pirault@outlook.com"
git config --global user.name "papiro"
git config --global push.default simple

echo "edit root crontab..."
read foo
crontab -e
