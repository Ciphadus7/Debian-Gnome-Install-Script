#!/bin/bash

# Install Script For Debian 11 GNOME according to stuff that I like

# Install basic system utilities and necessities

cd ~
sudo apt-get update -qq
sudo apt-get install -yy htop gdebi vim geany git dconf-cli uuid-runtime neofetch wget


# Remove LibreOffice. Dont like it

sudo apt-get purge -yy libreoffice*
sudo apt autoremove -yy

# Remove bloat/uesless stuff from GNOME

sudo apt purge -yy gnome-2048 gnome-chess gnome-games gnome-mahjongg gnome-mines gnome-tetravex gnome-sudoku aisleriot evolution* five-or-more four-in-a-row hitori gnome-klotski gnome-robots gnome-taquin gnome-nibbles quadrapassel swell-foop
sudo apt autoremove -yy


# Install and use Flatpak for application installations[i prefer this for various apps due to ease of installation across distros]
sudo apt install -yy flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo apt install -yy gnome-software-plugin-flatpak

sudo flatpak install --noninteractive flathub com.discordapp.Discord 
sudo flatpak install --noninteractive flathub com.valvesoftware.Steam 
sudo flatpak install --noninteractive flathub com.spotify.Client
sudo flatpak install --noninteractive flathub com.tomjwatson.Emote
sudo flatpak install --noninteractive flathub org.gimp.GIMP
sudo flatpak install --noninteractive flathub org.videolan.VLC

# Install ONLYOFFICE Desktop Editors

cd ~
cd Downloads
wget https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb 
sudo gdebi -n onlyoffice-desktopeditors_amd64.deb
sudo rm -f onlyoffice-desktopeditors_amd64.deb

# Set up a colour scheme for your terminal

#mkdir -p "$HOME/src"
#cd "$HOME/src"
#sudo git clone https://github.com/Gogh-Co/Gogh.git gogh
#cd gogh

#export TERMINAL=gnome-terminal
#cd installs
#./sea-shells.sh





echo "You're good to go!"
echo "You should restart for flatpak stuff"

