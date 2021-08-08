#!/usr/bin/env bash

# IF MAC...
# xcode-select --install

if [ -f "/etc/debian_version" ]; then
    read -p "Did you created a ssh key and added to all services? press 'Y' or 'y' to continue " -n 1 -r
  echo    # (optional) move to a new line
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    sudo apt --fix-broken install -y

    sudo apt update -y
    sudo apt upgrade -y
    sudo apt full-upgrade -y

    sudo apt install software-properties-common -y
    sudo apt install python3 -y

    sudo add-apt-repository --update ppa:ansible/ansible
    sudo apt --force-yes install ansible -y

    ansible-pull -U https://github.com/R4YM3/dotfiles-ansible.git --ask-become-pass
  fi
fi

