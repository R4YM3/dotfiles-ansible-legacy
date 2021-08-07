#!/usr/bin/env bash

# IF MAC...
# xcode-select --install

sudo apt -y update
sudo apt -y install software-properties-common
sudo add-apt-repository --update ppa:ansible/ansible
sudo apt -y --force-yes install ansible

ansible-pull -U https://github.com/R4YM3/dotfiles-ansible.git
