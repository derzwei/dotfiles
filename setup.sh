#!/bin/bash

#: Hacer ejecutable al script con:	chmod +x setup.sh
#: Ejecutar el script con:		./dotfiles/setup.sh

#: Actualizar base de datos y paquetes
sudo apt-get update && sudo apt-get upgrade

#: Instalar paquetes {{{

#: Base
sudo apt-get -y install firmware-iwlwifi iwd tlp acpi-call-dkms lightdm mesa-utils xbacklight awesome xsel scrot chromium chromium-l10n

#: Fuentes
sudo apt-get -y install fonts-ibm-plex fonts-fantasque-sans fonts-ipafont

#: Media
sudo apt-get -y install alsa-utils pulseaudio mpd ncmpcpp sxiv mpv youtube-dl

#: Misceláneo
sudo apt-get -y install neofetch htop nemo nitrogen

#: Máquinas virtuales
#sudo apt-get -y install virt-manager qemu ovmf

#: }}}

#: Crear directorios de configuración

mkdir -p ~/.config/{awesome/themes/default,alacritty,mpd,ncmpcpp,nvim/{lua,after/plugin}}

#: Crear enlaces simbólicos de los archivos de configuración {{{

#: bashrc
rm ~/.bashrc
ln -s ~/dotfiles/.bashrc ~/.bashrc

#: awesome
ln -s ~/dotfiles/.config/awesome/rc.lua ~/.config/awesome/rc.lua
ln -s ~/dotfiles/.config/awesome/themes/default/theme.lua ~/.config/awesome/themes/default/theme.lua

#: alacritty
ln -s ~/dotfiles/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

#: picom
ln -s ~/dotfiles/.config/picom/picom.conf ~/.config/picom/picom.conf

#: mpd
ln -s ~/dotfiles/.config/mpd/mpd.conf ~/.config/mpd/mpd.conf

#: ncmpcpp
ln -s ~/dotfiles/.config/ncmpcpp/config ~/.config/ncmpcpp/config

#: nvim
ln -s ~/dotfiles/.config/nvim/init.lua ~/.config/nvim/init.lua
ln -s ~/dotfiles/.config/nvim/lua/* ~/.config/nvim/lua/
ln -s ~/dotfiles/.config/nvim/after/plugin/* ~/.config/nvim/after/plugin/

#: }}}

#: Habilitar el servicio de iwd
sudo systemctl enable iwd

#: Habilitar el servicio desystemd-resolve
sudo systemctl enable systemd-resolved

#: Habilitar el servicio de lightdm
sudo systemctl enable lightdm

#: Habilitar el servicio de mpd
systemctl --user start mpd
systemctl --user enable mpd

# Añadir el usuario al grupo libvirt
#sudo adduser zwei libvirt

