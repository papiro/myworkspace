#!/bin/sh

echo "run scripts/freebsd-update.sh first"
read foo

# Setup timezone
tzsetup

add2rc () {
  echo $1 >> /etc/rc.conf
}

# Add NTP stuff to rc.conf
add2rc "ntpd_enable=YES"
add2rc "ntpd_sync_on_start=YES"
add2rc "syslogd_enable=NO"

`scripts/vim.sh`

# Hardening, phase 1
echo "tweak /etc/ssh/sshd_config"
echo "Add AllowUsers entry..."
read foo
vim /etc/ssh/sshd_config

# install Ports
`scripts/installPorts.sh`

# Install Kernel sources
echo "installing kernel sources"
echo "svn checkout https://svn0.us-west.freebsd.org/base/releng/10.2/ /usr/src"
svn checkout https://svn0.us-west.freebsd.org/base/releng/10.2/ /usr/src

echo "add rkhunter stuff to periodic.conf..."
read foo
vim /etc/defaults/periodic.conf

`scripts/git.sh`

echo "edit root crontab..."
read foo
crontab -e
