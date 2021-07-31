#!/usr/bin/env bash

sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository -y --update ppa:ansible/ansible
sudo apt -y install ansible

sudo ansible-pull -U https://github.com/R4YM3/dotfiles-ansible.git
