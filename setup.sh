#!/bin/bash

#: Hacer ejecutable al script con:	chmod +x setup.sh
#: Ejecutar el script con:		./dotfiles/setup.sh

#: Actualizar base de datos y paquetes
apt-get update && apt-get upgrade

#: Instalar paquetes {{{

#: Base
apt-get -y install firmware-iwlwifi iwd tlp acpi-call-dkms lightdm picom awesome kitty xsel scrot chromium

#: Fuentes
apt-get -y install fonts-fantasque-sans fonts-ipafont

#: Media
apt-get -y install alsa-utils pulseaudio pulseaudio-alsa mpd ncmpcpp sxiv mpv youtube-dl

#: Misceláneo
apt-get -y install neofetch

#: }}}

#: Crear directorios de configuración

mkdir -p /home/zwei/.config/{awesome/themes/default,kitty,mpd,ncmpcpp,nvim/autoload}

#: Crear enlaces simbólicos de los archivos de configuración {{{

#: bashrc
rm /home/zwei/.bashrc
ln -s /home/zwei/dotfiles/.bashrc /home/zwei/.bashrc

#: awesome
ln -s /home/zwei/dotfiles/.config/awesome/rc.lua /home/zwei/.config/awesome/rc.lua
ln -s /home/zwei/dotfiles/.config/awesome/themes/default/theme.lua /home/zwei/.config/awesome/themes/default/theme.lua

#: kitty
ln -s /home/zwei/dotfiles/.config/kitty/{kitty.conf,Japanesque.conf} /home/zwei/.config/kitty/

#: picom
#ln -s /home/zwei/dotfiles/.config/picom/picom.conf /home/zwei/.config/picom/picom.conf

#: mpd
ln -s /home/zwei/dotfiles/.config/mpd/mpd.conf /home/zwei/.config/mpd/mpd.conf

#: ncmpcpp
ln -s /home/zwei/dotfiles/.config/ncmpcpp/config /home/zwei/.config/ncmpcpp/config

#: nvim
#ln -s /home/zwei/dotfiles/.config/nvim/init.vim /home/zwei/.config/nvim/init.vim
#ln -s /home/zwei/dotfiles/.config/nvim/autoload/plug.vim /home/zwei/.config/nvim/plug.vim

#: }}}

#: Habilitar el servicio de iwd
systemctl enable iwd

#: Habilitar el servicio desystemd-resolve
systemctl enable systemd-resolved

#: Habilitar el servicio de lightdm
systemctl enable lightdm

#: Habilitar el servicio de mpd
systemctl --user start mpd
systemctl --user enable mpd
