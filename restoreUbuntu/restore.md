# Restore Ubuntu 20.04

sudo apt update
sudo apt -y upgrade

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

sudo apt -y install git

sudo apt-get install exfat-fuse exfat-utils

sudo apt -y install git-core zsh
sudo apt -y install curl

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo apt -y install fonts-powerline
sudo apt -y install fonts-firacode

nano ~/.zshrc

Find the ZSH_THEME variable and change it:ZSH_THEME="agnoster"

chsh -s $(which zsh)

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash

nano ~/.zshrc

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

nvm install <version>

sudo apt -y install byobu 

sudo apt -y install htop

sudo apt -y install dconf-editor

org->gnome->shell->extensions->dash-to-dock

sudo apt install gnome-tweaks

gnome custom-hot-corners

https://extensions.gnome.org/extension/1362/custom-hot-corners/

enable extensions gnome in gnome tweaks

sudo apt install wmctrl

sudo snap install code --classic

sudo snap install postman

sudo snap install vlc

sudo snap install spotify

https://medium.com/@js_debugger/how-to-install-firefox-developer-edition-on-ubuntu-1c7f5f2b6883

https://askubuntu.com/questions/528293/is-there-a-way-to-restart-the-touchpad-driver

ELAN2304:00 04F3:30FE Touchpad 

create a file touchpad-reset.sh

xinput disable 'ELAN2304:00 04F3:30FE Touchpad'

xinput enable 'ELAN2304:00 04F3:30FE Touchpad'

# give the permissions! --> chmod +x touchpad-reset.sh

// alternative touchpad restore

sudo nano /etc/default/grub

GRUB_DEFAULT=0
GRUB_TIMEOUT_STYLE=hidden
GRUB_TIMEOUT=0
GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo Debian`
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
GRUB_CMDLINE_LINUX="i8042.nopnp=1 pci=nocrs"

save and reboot


