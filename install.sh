#!/bin/bash

# Install Script For Debian 11 GNOME according to stuff that I like

# Install basic system utilities and necessities

cd ~
sudo apt-get update -qq
sudo apt-get install -yy htop gdebi vim geany git dconf-cli uuid-runtime


# Remove LibreOffice. Dont like it

sudo apt-get purge -yy libreoffice*
sudo apt autoremove


# Remove bloat/uesless stuff from GNOME

sudo apt purge -yy gnome-2048 gnome-chess gnome-games gnome-mahjongg gnome-mines gnome-tetravex gnome-sudoku aisleriot evolution* five-or-more four-in-a-row hitori gnome-klotski gnome-robots gnome-taquin gnome-nibbles quadrapassel swell-foop
sudo apt autoremove

# Set up a colour scheme for your terminal

mkdir -p "$HOME/src"
cd "$HOME/src"
sudo git clone https://github.com/Gogh-Co/Gogh.git gogh
cd gogh

export TERMINAL=gnome-terminal
cd installs
./sea-shells.sh


