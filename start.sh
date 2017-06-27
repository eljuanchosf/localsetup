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

update_packages
install_packages

echo "Done!!!"