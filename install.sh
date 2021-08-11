#!/usr/bin/env bash

# IF MAC...
# xcode-select --install

if [ -f "/etc/debian_version" ]; then
    read -p "Did you created a ssh key and added to all services? press 'Y' or 'y' to continue " -n 1 -r
  echo    # (optional) move to a new line
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    sudo apt --fix-broken install -y
    sudo dpkg --configure -a

    sudo apt update -y
    sudo apt upgrade -y
    sudo apt full-upgrade -y
    sudo apt autoremove -y

    sudo apt install git -y
    sudo apt install python3 -y
    sudo apt install software-properties-common -y

    sudo add-apt-repository -y --update ppa:ansible/ansible
    sudo apt install ansible -y

    ansible-pull -U https://github.com/R4YM3/dotfiles-ansible.git --ask-become-pass

    post_install
  fi
fi

function post_install {
  # Set CAPS as ESC
  gnome-tweaks

  # Make google default browser
  sudo update-alternatives --install /usr/bin/x-www-browser x-www-browser /usr/bin/google-chrome 500
  sudo update-alternatives --set x-www-browser /usr/bin/google-chrome

  1password
  # chrome will be installed on login
  firefox https://addons.mozilla.org/en-US/firefox/addon/1password-x-password-manager

  # Open default browser and go to websites we need to add as app
  sensible-browser http://www.tidal.com
  sensible-browser http://www.notion.so
  sensible-browser https://office.live.com/start/MyAccount.aspx

  # Install games
  sensible-browser https://lutris.net/games/overwatch/

  # Open apps to configure
  slack
  teams-for-linux

  # Install terminal theme
  ./.config/terminal-themes/dracula/install.sh
}
