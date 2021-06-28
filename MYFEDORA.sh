#!/bin/bash

################################################################################
#                              Bash script template                            #
#                                                                              #
# Installing software for Fedora                                               #
#                                                                              #
#                                                                              #
# Usage: sudo -u $USER ./MYFEDORA.sh                                           #
#                           Original code.                                     #
#                                                                              #
#                                                                              #
#                                                                              #
#                                                                              #
################################################################################

sudo dnf update -y

sudo dnf install -y \
https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf groupinstall -y "Virtualization" --skip-broken
sudo dnf groupinstall -y "Container Management" --skip-broken
sudo dnf groupinstall -y "Design Suite" --skip-broken &&
sudo dnf groupinstall -y "Development Tools" --skip-broken &&
sudo dnf groupinstall -y "Vagrant with libvirt support" --skip-broken
sudo dnf groupinstall -y "System tools" --skip-broken
sudo dnf groupinstall -y "Text-based Internet" --skip-broken
sudo dnf groupinstall -y "Administration Tools" --skip-broken
sudo dnf groupinstall -y "Multimedia" --skip-broken

sudo usermod -a -G libvirt $(whoami)

sudo dnf install -y gnupg2
sudo dnf install -y pass
sudo dnf install -y ShellCheck
sudo dnf install -y elinks
sudo dnf install -y autossh
sudo dnf install -y surfraw
sudo dnf install -y googler
sudo dnf install -y jpegoptim
sudo dnf install -y ffmpeg
sudo dnf install -y gnome-tweaks
sudo dnf install -y gnome-documents
sudo dnf install -y gnome-firmware
sudo dnf install -y toolbox
sudo dnf install -y deja-dup
sudo dnf install -y chrome-gnome-shell
sudo dnf install -y vim
sudo dnf install -y thunderbird
sudo dnf install -y docker
sudo dnf install -y tlp
sudo dnf install -y ansible
sudo dnf install -y remmina
sudo dnf install -y foliate
sudo dnf install -y openshot
sudo dnf install -y obs-studio
sudo dnf install -y peek
sudo dnf install -y seahorse
sudo dnf install -y transmission
sudo dnf install -y mediawriter
sudo dnf install -y fuse-exfat
sudo dnf install -y gnome-extensions-app.x86_64
sudo dnf install -y gnome-shell-extension-openweather
sudo dnf install -y gnome-shell-extension-gsconnect
sudo dnf install -y webextension-gsconnect.x86_64
sudo dnf install -y discord
sudo dnf install -y intel-media-driver
sudo dnf install -y xorg-x11-drv-nvidia-cuda
sudo dnf install -y kmod-nvidia
sudo dnf install -y setools-console
sudo dnf install -y wireshark
sudo dnf install -y unrar
sudo dnf install -y rar
sudo dnf install -y gpick

sleep 5
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo dnf install -y curl cabextract xorg-x11-font-utils fontconfig
sudo rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm

sudo dnf copr enable chenxiaolong/ubuntu-fonts -y
sudo dnf install -y ubuntu-family-fonts fontconfig-ubuntu ubuntu-font-gsettings

sudo dnf install -y flameshot

sleep 5

flameshot config -f %T_%F

echo "export EDITOR='/usr/bin/vim'" >> ~/.bashrc

sudo dnf install -y clamav clamav-update clamtk
sudo freshclam

sudo dnf install -y fedora-workstation-repositories

sudo dnf config-manager --set-enabled google-chrome
sudo dnf install -y google-chrome-stable

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

cat <<EOF | sudo tee /etc/yum.repos.d/vscode.repo
[code]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF

sudo dnf check-update
sudo dnf install -y code

## https://fedoramagazine.org/use-dns-over-tls/
echo -e "DNS= 8.8.8.8 1.1.1.1\nFallbackDNS= 9.9.9.9 112.112.112.112\nDNSSEC=yes\nDNSOverTLS=yes" >> /etc/systemd/resolved.conf
echo -e "[main]\ndns=systemd-resolved\nsystemd-resolved=false" > /etc/NetworkManager/conf.d/10-dns-systemd-resolved.conf

sudo systemctl start systemd-resolved
sudo systemctl enable systemd-resolved
sudo systemctl restart NetworkManager

sudo dnf install -y yaru-theme

gsettings set org.gnome.desktop.interface enable-animations false

sudo chmod 777 -R /var/lib/libvirt/images/

#sudo dnf install -y adapta-gtk-theme-gedit.noarch
#sudo dnf install -y flat-remix-icon-theme.noarch
#sudo dnf install -y la-capitaine-cursor-theme

#export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

#gsettings set org.gnome.desktop.interface gtk-theme "Adapta"
#gsettings set org.gnome.desktop.interface icon-theme "Flat-Remix-Green"
#gsettings set org.gnome.desktop.interface cursor-theme "La-Capitaine"

# Workstation/Third Party Software Repositories
# https://fedoraproject.org/wiki/Workstation/Third_Party_Software_Repositories

# Workstation/Third Party Software Repositories
# https://fedoraproject.org/wiki/Workstation/Third_Party_Software_Repositories

# Log in - open a terminal and execute : sudo vi /etc/default/grub
# Add nouveau.modeset=0 to the line GRUB_CMDLINE_LINUX="rhgb quiet",
# so that it reads : GRUB_CMDLINE_LINUX="rhgb quiet nouveau.modeset=0"
# sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg (Fedora installation in EFI mode)
# sudo grub2-mkconfig -o /boot/grub2/grub.cfg (Fedora installation in legacy BIOS mode)
# https://unix.stackexchange.com/questions/286150/fedora-installation-nouveau-issue

# fonts
# $ sudo mkdir /usr/share/fonts/robofont
# sudocp ~/fonts/robofont.ttf /usr/share/fonts/robofont
# sudo fc-cache -v

# Mutli media Codecs
# https://unitedrpms.github.io/

# https://copr.fedorainfracloud.org/coprs/oleastre/systemd/
# dnf copr enable oleastre/systemd
# sudo dnf upgrade

# https://www.pling.com/p/1175480/

# https://extensions.gnome.org/extension/3780/ddterm/