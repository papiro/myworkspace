#!/bin/sh

installPort () {
  cd $1 && make install clean BATCH=yes  
}

# Standard first update
echo "freebsd-update fetch"
freebsd-update fetch
echo "freebsd-update install"
freebsd-update install

# Setup user git
echo "adding user git"
adduser git

# Hardening, phase 1
echo "tweak /etc/ssh/sshd_config"
echo "Add AllowUsers entry..."
vim /etc/ssh/sshd_config

# Get ports collection
echo "portsnap fetch"
portsnap fetch
echo "portsnap extract"
portsnap extract

# Install Kernel sources
echo "installing subversion"
installPort /usr/ports/devel/subversion
echo "installing kernel sources"
echo "svn checkout https://svn0.us-west.freebsd.org/base/releng/10.2/ /usr/src"
svn checkout https://svn0.us-west.freebsd.org/base/releng/10.2/ /usr/src

# Install tools
echo "installing git"
installPort /usr/ports/devel/git
echo "installing node"
installPort /usr/ports/www/node
echo "installing rkhunter"
installPort /usr/ports/security/rkhunter
echo "add rkhunter stuff to periodic.conf..."
read foo
vim /etc/defaults/periodic.conf

echo "edit root crontab..."
read foo
crontab -e
