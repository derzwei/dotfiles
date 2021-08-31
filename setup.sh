# Paquetes
# base
awesome kitty xsel scrot sxiv 
# fuentes
inconsolata otf-ipafont
# media
alsa-utils pulseaudio pulseaudio-alsa mpd ncmpcpp mpv youtube-dl
# instalación mínima
#dhcpcd wpa_supplicant xf86-video-intel linux-headers xdg-user-dirs xdg-utils otf-ipafont inconsolata awesome kitty xbacklight xsel scrot sxiv alsa-utils pulseaudio pulseaudio-alsa mpd ncmpcpp mpv youtube-dl

# Crear enlaces simbólicos de los archivos de configuración
# bashrc
rm ~/.bashrc
ln -s ~/dotfiles/.bashrc ~/.bashrc
# awesome
mkdir -p ~/.config/awesome/themes/default
ln -s ~/dotfiles/.config/awesome/rc.lua ~/.config/awesome/rc.lua
ln -s ~/dotfiles/.config/awesome/themes/default/theme.lua ~/.config/awesome/themes/default/theme.lua
# kitty
mkdir ~/.config/kitty
ln -s ~/dotfiles/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -s ~/dotfiles/.config/kitty/Afterglow.conf ~/.config/kitty/Afterglow.conf
# picom
mkdir ~/.config/picom
ln -s ~/dotfiles/.config/picom/picom.conf ~/.config/picom/picom.conf
ln -s ~/dotfiles/.config/chrome-flags.conf ~/.config/chrome-flags.conf
# mpd & ncmpcpp
mkdir ~/.config/mpd
ln -s ~/dotfiles/.config/mpd/mpd.conf ~/.config/mpd/mpd.conf
mkdir ~/.config/ncmpcpp
ln -s ~/dotfiles/.config/ncmpcpp/config ~/.config/ncmpcpp/config

# Habilitar el servicio de mpd
systemctl --user start mpd.service
systemctl --user enable mpd.service