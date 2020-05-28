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

sudo apt-get install -y virt-manager
sudo adduser $USER libvirt-qemu

sudo apt-get install -y graphviz
sudo apt-get install -y obs-studio
sudo apt-get install -y docker
sudo apt-get install -y tlp
sudo apt-get install -y zram
sudo apt-get install -y vagrant
sudo apt-get install -y clamav clamtk
sudo apt-get install -y google-chrome-stable
sudo apt-get install -y chrome-gnome-shell
sudo apt-get install -y docker.io
sudo apt-get install -y flameshot
flameshot config -f %T_%F

sudo apt-get install -y peek
sudo apt-get install -y gnome-shell-extension-weather gnome-shell-extension-gsconnect-browsers
sudo apt-get install -y lollypop
sudo apt-get install -y shotwell
sudo apt-get install -y gnome-firmware
sudo apt-get install -y clamav clamtk clamdscan
sudo apt-get install -y remmina
sudo apt-get install -y transmission
sudo apt-get install -y deja-dup

sudo apt-get install -y vim
yes 4 | sudo update-alternatives --config editor

sudo apt install ubuntu-restricted-extras
sudo apt-get install -y qemu qemu-kvm bridge-utils virt-manager libguestfs-tools gnome-boxes
