#!/usr/bin/env bash

# IF MAC...
# xcode-select --install

if [ -f "/etc/debian_version" ]; then
    read -p "Did you created a ssh key and added to all services? press 'Y' or 'y' to continue " -n 1 -r
  echo    # (optional) move to a new line
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    sudo apt -y update
    sudo apt-get update -y
    sudo apt-get upgrade -y
    sudo apt-get full-upgrade -y

    sudo apt -y install software-properties-common
    sudo apt -y install python3

    sudo add-apt-repository --update ppa:ansible/ansible
    sudo apt -y --force-yes install ansible

    ansible-pull -U https://github.com/R4YM3/dotfiles-ansible.git --ask-become-pass
  fi
fi

