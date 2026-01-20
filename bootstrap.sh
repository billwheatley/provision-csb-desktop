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

# Make automated install dirs
mkdir -p $HOME/automated-install/

#Call key setup playbook
#PRIMARY_USER_GROUP=`id -gn`
#cd provision-desktop

#sudo ansible-playbook key-setup.yaml --extra-vars="localhost_user=${USER} localhost_user_group=${PRIMARY_USER_GROUP} ansible_user_dir=${HOME}"

