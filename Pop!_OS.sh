#!/bin/bash

################################################################################
#                              scriptTemplate                                  #
#                                                                              #
# Installing software for Ubuntu/PopOS!                                        #
#                                                                              #
#                                                                              #
# Usage: sudo -u $USER ./MYINSTALLATION.sh                                     #
#                           Original code. This is a template for creating     #
#                           new Bash shell scripts.                            #
#                                                                              #
#                                                                              #
#                                                                              #
################################################################################

#Updating and upgrading Ubuntu
sudo apt-get update -y
sudo apt-get upgrade -y

#Normal apps
sudo apt-get install -y gnupg2
sudo apt-get install -y pass
sudo apt-get install -y shellcheck
sudo apt-get install -y elinks
sudo apt-get install -y autossh
sudo apt-get install -y surfraw surfraw-extra
sudo apt-get install -y googler
sudo apt-get install -y jpegoptim
sudo apt-get install -y ffmpeg
sudo apt-get install -y gnome-tweaks
sudo apt-get install -y gnome-shell-extensions
sudo apt-get install -y thunderbird
sudo apt-get install -y software-properties-common
sudo apt-get install -y gnome-tweaks
sudo apt-get install -y gimp
sudo apt-get install -y scribus
sudo apt-get install -y krita
sudo apt-get install -y darktable
sudo apt-get install -y graphviz
sudo apt-get install -y obs-studio
sudo apt-get install -y docker
sudo apt-get install -y docker-compose
sudo apt-get install -y zram
sudo apt-get install -y clamav clamtk
sudo apt-get install -y google-chrome-stable
sudo apt-get install -y chrome-gnome-shell
sudo apt-get install -y peek
sudo apt-get install -y gnome-shell-extension-weather gnome-shell-extension-gsconnect-browsers
sudo apt-get install -y lollypop
sudo apt-get install -y shotwell
sudo apt-get install -y gnome-firmware
sudo apt-get install -y clamav clamtk clamdscan
sudo apt-get install -y remmina
sudo apt-get install -y transmission
sudo apt-get install -y deja-dup
sudo apt-get install -y ansible
sudo apt-get install -y tlp tlp-rdw
sudo apt-get install -y dislocker
sudo apt-get install -y neovim
sudo apt-get install -y gnome-books
sudo apt-get install -y guake
sudo apt-get install -y gpick
sudo apt-get install -y mosh

yes 4 | sudo update-alternatives --config editor

sudo apt-get install -y flameshot
flameshot config -f %T_ %e-%m-%Y

sudo apt-get install -y ubuntu-restricted-extras

sudo apt-get install -y virt-manager libguestfs-tools gnome-boxes
sudo apt-get install -y qemu qemu-kvm bridge-utils
sudo adduser $USER libvirt
sudo adduser $USER libvirt-qemu

# Automatic updates https://www.cyberciti.biz/faq/how-to-set-up-automatic-updates-for-ubuntu-linux-18-04/

sudo apt-get install unattended-upgrades apt-listchanges
sudo dpkg-reconfigure -plow unattended-upgrades

#sudo apt-get install -y virtualbox virtualbox-ext-pack

# sudo apt-get install -y build-dep vagrant ruby-libvirt
# sudo apt-get install -y qemu libvirt-daemon-system libvirt-clients ebtables dnsmasq-base
# sudo apt-get install -y libxslt-dev libxml2-dev libvirt-dev zlib1g-dev ruby-dev

#sudo apt-get install -y vagrant
#vagrant plugin install vagrant-libvirt
#vagrant plugin install winrm
#vagrant plugin install winrm-elevated
#vagrant plugin install vagrant-hostsup

# https://www.pling.com/p/1175480/
# https://www.gnome-look.org/p/1148692/
# Gnome superkey + number in deconf editor "keybindings" org.gnome.shell.keybindings

# Vagrant
# sudo apt-get install -y build-dep vagrant ruby-libvirt
# sudo apt-get install -y qemu libvirt-daemon-system libvirt-clients ebtables dnsmasq-base
# sudo apt-get install -y libxslt-dev libxml2-dev libvirt-dev zlib1g-dev ruby-dev

#sudo apt-get install -y vagrant
#vagrant plugin install vagrant-libvirt
#vagrant plugin install winrm
#vagrant plugin install winrm-elevated
#vagrant plugin install vagrant-hostsup
#sudo apt-get install -y gnome-shell-extension-weather gnome-shell-extension-gsconnect-browsers


# https://www.pling.com/p/1175480/
# https://www.gnome-look.org/p/1148692/
# https://extensions.gnome.org/extension/1319/gsconnect/
# https://extensions.gnome.org/extension/750/openweather/
# https://extensions.gnome.org/extension/442/drop-down-terminal/

# https://askubuntu.com/questions/968103/disable-the-default-app-key-supernum-functionality-on-ubuntu-17-10-and-later
# https://askubuntu.com/questions/617589/ubuntu-15-04-jumps-into-standby-after-login
