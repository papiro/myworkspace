#!/bin/sh

installPort () {
  cd $1 && make install clean BATCH=yes  
}

# Get ports collection
echo "portsnap fetch"
portsnap fetch
echo "portsnap extract"
portsnap extract

# Install tools
echo "installing subversion"
installPort /usr/ports/devel/subversion
echo "installing git"
installPort /usr/ports/devel/git
echo "installing node"
installPort /usr/ports/www/node
echo "installing rkhunter"
installPort /usr/ports/security/rkhunter

