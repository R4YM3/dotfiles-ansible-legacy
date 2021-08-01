#!/usr/bin/env bash

sudo apt -y update
sudo apt -y install software-properties-common
sudo add-apt-repository --update ppa:ansible/ansible
sudo apt -y --force-yes install ansible

sudo ansible-pull -U https://github.com/R4YM3/dotfiles-ansible.git
