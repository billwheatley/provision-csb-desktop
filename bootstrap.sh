#!/bin/bash

# Setup default directory for the playbooks
mkdir -p ~/automated-install/rpm
mkdir -p ~/dev/ansible-desktop/desktop-roles
mkdir -p ~/dev/ansible-desktop/desktop-collections
cd ~/dev/ansible-desktop

#clone from GIT
git clone https://github.com/billwheatley/provision-csb-desktop.git

