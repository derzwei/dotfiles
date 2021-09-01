#!/bin/bash

#: Hacer ejecutable al script con:	chmod +x setup.sh
#: Ejecutar el script con:		./dotfiles/setup.sh

#: Actualizar base de datos y paquetes
apt-get update && apt-get upgrade

#: Instalar paquetes {{{

#: Base
apt-get -y install firmware-iwlwifi iwd lightdm picom awesome kitty xsel scrot firefox-esr

#: Fuentes
apt-get -y install fonts-fantasque-sans fonts-ipafont

#: Media
apt-get -y alsa-utils pulseaudio pulseaudio-alsa mpd ncmpcpp sxiv mpv youtube-dl

#: Misceláneo
apt-get -y neofetch

#: }}}

#: Crear directorios de configuración

mkdir -p ~/.config/{awesome/themes/default,kitty,mpd,ncmpcpp,nvim/autoload}

#: Crear enlaces simbólicos de los archivos de configuración {{{

#: bashrc
rm ~/.bashrc
ln -s ~/dotfiles/.bashrc ~/.bashrc

#: awesome
ln -s ~/dotfiles/.config/awesome/rc.lua ~/.config/awesome/rc.lua
ln -s ~/dotfiles/.config/awesome/themes/default/theme.lua ~/.config/awesome/themes/default/theme.lua

#: kitty
ln -s ~/dotfiles/.config/kitty/{kitty.conf,Japanesque.conf} ~/.config/kitty/

#: picom
#ln -s ~/dotfiles/.config/picom/picom.conf ~/.config/picom/picom.conf

#: chromium/chrome
#ln -s ~/dotfiles/.config/chrome-flags.conf ~/.config/chrome-flags.conf

#: mpd
ln -s ~/dotfiles/.config/mpd/mpd.conf ~/.config/mpd/mpd.conf

#: ncmpcpp
ln -s ~/dotfiles/.config/ncmpcpp/config ~/.config/ncmpcpp/config

#: neovim
#ln -s ~/dotfiles/.config/nvim/init.vim ~/.config/nvim/init.vim
#ln -s ~/dotfiles/.config/nvim/autoload/plug.vim ~/.config/nvim/plug.vim

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
