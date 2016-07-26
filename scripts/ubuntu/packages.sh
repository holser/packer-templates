#!/bin/bash -eux

PACKAGES="
curl
htop
isc-dhcp-client
nfs-common
vim
python-pip
git-review
python-tox
screen
tmux
"

echo "==> Installing packages"
apt-get -y install $PACKAGES
