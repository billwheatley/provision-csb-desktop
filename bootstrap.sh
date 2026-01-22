#!/bin/bash

if [ -x "$(command -v dnf)" ]; then 
    sudo dnf -y install ansible git sshpass
else 
    echo Not sure which package manager is running on this machine, only expecting dnf
    exit 1
fi

#clone from GIT
git clone https://github.com/billwheatley/provision-csb-desktop.git

# Make Roles-dir
mkdir desktop-roles

# Make collections-dir
mkdir desktop-collections

# Make automated install dirs
mkdir -p $HOME/automated-install/rpms


