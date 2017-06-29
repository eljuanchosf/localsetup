#!/usr/bin/env bash

set -e

update_packages() {
    echo "Updating the packages information..."
    sudo apt-get -qq update
}

install_packages() {
    echo "Installing required packages..."
    sudo apt-get install -y -qq python-pip
    sudo pip install --upgrade pip
    sudo pip install setuptools
    sudo pip install ansible
}

run_ansible_playbook() {
    sudo ansible-galaxy install -r requirements.yml
    ansible-playbook playbook.yml --ask-sudo-pass
}

update_packages
install_packages
run_ansible_playbook

echo "Done!!!"