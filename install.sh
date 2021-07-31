#!/usr/bin/env bash

sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible

sudo ansible-pull -U https://github.com/R4YM3/dotfiles-ansible.git
