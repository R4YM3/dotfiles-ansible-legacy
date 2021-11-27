This project is going to be  deprecated in favor of https://github.com/R4YM3/dotfiles-ansible

# dotfiles-ansible

The script will check if host Debian or Mac Os and setup it accordingly to my personal taste.
It will install and config all my favorite apps and command interfaces. To finish it all off Ubuntu and multiple apps will get Dracula theme (see `./config`).

## Screenshot
![Mac OS Iterm2 with nvim and tmux screenshot](https://raw.githubusercontent.com/R4YM3/dotfiles-ansible/main/screenshot.png)

Before install first setup SSH keys.

To install run:
```
bash <(wget -qO- https://raw.githubusercontent.com/R4YM3/dotfiles-ansible/main/install.sh)
```
or when all dependencies already installed:
```
ansible-pull -U https://github.com/R4YM3/dotfiles-ansible.git --ask-become-pass
```
