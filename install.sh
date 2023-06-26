#!/bin/bash

# Install Script For Debian and Ubuntu according to stuff that I like

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
sudo flatpak install --noninteractive flathub org.audacityteam.Audacity
sudo flatpak install --noninteractive flathub org.onlyoffice.desktopeditors



#Upgrade cos y not
sudo apt-get upgrade -yy


# Set up a colour scheme for your terminal

#mkdir -p "$HOME/src"
#cd "$HOME/src"
#sudo git clone https://github.com/Gogh-Co/Gogh.git gogh
#cd gogh

#export TERMINAL=gnome-terminal
#cd installs
#./sea-shells.sh


congrats="                                                                                                                                                            
                                                                                                                                                            
        CCCCCCCCCCCCC                                                                                                   tttt                            !!! 
     CCC::::::::::::C                                                                                                ttt:::t                           !!:!!
   CC:::::::::::::::C                                                                                                t:::::t                           !:::!
  C:::::CCCCCCCC::::C                                                                                                t:::::t                           !:::!
 C:::::C       CCCCCC   ooooooooooo   nnnn  nnnnnnnn       ggggggggg   gggggrrrrr   rrrrrrrrr   aaaaaaaaaaaaa  ttttttt:::::ttttttt        ssssssssss   !:::!
C:::::C               oo:::::::::::oo n:::nn::::::::nn    g:::::::::ggg::::gr::::rrr:::::::::r  a::::::::::::a t:::::::::::::::::t      ss::::::::::s  !:::!
C:::::C              o:::::::::::::::on::::::::::::::nn  g:::::::::::::::::gr:::::::::::::::::r aaaaaaaaa:::::at:::::::::::::::::t    ss:::::::::::::s !:::!
C:::::C              o:::::ooooo:::::onn:::::::::::::::ng::::::ggggg::::::ggrr::::::rrrrr::::::r         a::::atttttt:::::::tttttt    s::::::ssss:::::s!:::!
C:::::C              o::::o     o::::o  n:::::nnnn:::::ng:::::g     g:::::g  r:::::r     r:::::r  aaaaaaa:::::a      t:::::t           s:::::s  ssssss !:::!
C:::::C              o::::o     o::::o  n::::n    n::::ng:::::g     g:::::g  r:::::r     rrrrrrraa::::::::::::a      t:::::t             s::::::s      !:::!
C:::::C              o::::o     o::::o  n::::n    n::::ng:::::g     g:::::g  r:::::r           a::::aaaa::::::a      t:::::t                s::::::s   !!:!!
 C:::::C       CCCCCCo::::o     o::::o  n::::n    n::::ng::::::g    g:::::g  r:::::r          a::::a    a:::::a      t:::::t    ttttttssssss   s:::::s  !!! 
  C:::::CCCCCCCC::::Co:::::ooooo:::::o  n::::n    n::::ng:::::::ggggg:::::g  r:::::r          a::::a    a:::::a      t::::::tttt:::::ts:::::ssss::::::s     
   CC:::::::::::::::Co:::::::::::::::o  n::::n    n::::n g::::::::::::::::g  r:::::r          a:::::aaaa::::::a      tt::::::::::::::ts::::::::::::::s  !!! 
     CCC::::::::::::C oo:::::::::::oo   n::::n    n::::n  gg::::::::::::::g  r:::::r           a::::::::::aa:::a       tt:::::::::::tt s:::::::::::ss  !!:!!
        CCCCCCCCCCCCC   ooooooooooo     nnnnnn    nnnnnn    gggggggg::::::g  rrrrrrr            aaaaaaaaaa  aaaa         ttttttttttt    sssssssssss     !!! 
                                                                    g:::::g                                                                                 
                                                        gggggg      g:::::g                                                                                 
                                                        g:::::gg   gg:::::g                                                                                 
                                                         g::::::ggg:::::::g                                                                                 
                                                          gg:::::::::::::g                                                                                  
                                                            ggg::::::ggg                                                                                    
                                                               gggggg                                                                                       
"

echo $congrats
echo "You should restart for flatpak stuff!"

