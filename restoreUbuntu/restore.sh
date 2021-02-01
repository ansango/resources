
#!/bin/bash
#* RESTORE UBUNTU execute in /~

sudo apt update
sudo apt -y upgrade

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

sudo apt -y install git
sudo apt -y install exfat-fuse exfat-utils

sudo apt -y install git-core zsh
sudo apt -y install curl

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo apt -y install fonts-powerline
sudo apt -y install fonts-firacode

#nano ~/.zshrc
#Find the ZSH_THEME variable and change it:ZSH_THEME="agnoster"

sudo chsh -s $(which zsh)

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash

#nano ~/.zshrc and copy THESE lines:
#export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

nvm install --lts

sudo apt -y install byobu 
sudo apt -y install htop
sudo apt -y install dconf-editor

#org->gnome->shell->extensions->dash-to-dock (TO CUSTOM DOCK)

sudo apt -y install gnome-tweaks

#gnome custom-hot-corners
#https://extensions.gnome.org/extension/1362/custom-hot-corners/
#enable extensions gnome in gnome tweaks

sudo apt -y install wmctrl
sudo snap install code --classic
sudo snap install postman
sudo snap install vlc
sudo snap install spotify

#https://medium.com/@js_debugger/how-to-install-firefox-developer-edition-on-ubuntu-1c7f5f2b6883
