#!/bin/sh

installPort () {
  cd $1 && make install clean BATCH=yes  
}

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
