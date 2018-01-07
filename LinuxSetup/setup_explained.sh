#!/bin/bash
#I've used Virtual Box application (https://www.virtualbox.org/) with images of a bunch of the most popular OSs - forks and relatives of Ubuntu that basically differ only with desktop environments/graphic shells and set of codecs:
#- Ubuntu (Unity graphic shell).
#- Ubuntu Gnome (Gnome 3 desktop environment).
#- Kubuntu (KDE/Plasma desktop environment).
#- Linux Mint (fork of Ubuntu with lots of pre-installed apps and codecs, has different flavors including main one - Cinnamon (Gnome 3 desktop environment) and also Mint (Gnome 2), KDE and Xfce).
#- Ubuntu Mate (Gnome 2 desktop environment).
#- Lubuntu (LXDE desktop environment, should be light-weight fast OS).
#- Xubuntu (XFCE desktop environment, even lighter, even faster).

#Each of those could be downloaded from http://www.osboxes.org/virtualbox-images/ and then a virtual machine created in Virtual Box using downloaded image as hard drive (just press green plus sign and further steps should not be too difficult).

#Once machine is created you can set it up as you like and play with it. My to-do list actually worked on all systems, so in the end I was choosing from what I simply liked more visually.
#tl;dr: My choice in the end - https://www.linuxmint.com/rel_serena_cinnamon.php
#The only difference for me now is that Google Drive client is not available on Linux, so there's a replacement that mounts a network folder to your computer. This means no offline usage of files, but if connected to internet - there's no difference.

#In case of any questions with usage of Linux - simply google. Community for Ubuntu and Co is very big, with most of the questions already answered.
#To find replacement for applications that are Windows-only you can use this awesome website - http://alternativeto.net/

#When actually installing the system I wiped my drives and re-partitioned them, however, you can save your NTFS drive, you can google how.
#Minimum that you will need for Linux is about:
#- 20 GB ext4 mounted to / (root)
#- A partition size of your RAM assigned to swap area.
#- Whatever you have/want the rest - ext4 mounted to /home.

#Enabling 32-bit architecture
sudo dpkg --add-architecture i386

#Getting key for Wine and adding Wine repo
wget -nc https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ xenial main'

#My setup sequence of actions after system installation was (run these in terminal one by one):
#Adding repository for QBit Torrent
sudo add-apt-repository -y ppa:qbittorrent-team/qbittorrent-stable

#Adding repository for Variety
sudo add-apt-repository -y ppa:peterlevi/ppa

#Adding repo for Visual Studio Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

#Updating lists of packages from all repositories added
sudo apt-get --assume-yes update

#Actually installing stuff (respectively, after word "install": Network manager to enable OpenVPN feature; QBit Torrent client; Audio player Clementine; CD burner Brasero; Video player SMPlayer; Total Commander-like app called Double CMD; Video editor tool called Openshot; GIMP picture editor; Google Drive mount tool; Wallpaper changer tool Variety)
sudo apt-get --assume-yes install --install-recommends network-manager-openvpn-gnome qbittorrent clementine brasero smplayer doublecmd-gtk openshot gimp variety audacity diffuse sublime-text code wine-stable winehq-stable winetricks

#Adding a parameter to configure Wine
WINEARCH=win32 winecfg

#Download Google Chrome, Viber, Skype (and whatever you need and was not covered in list of apps above) deb packages from official websites to Downloads folder and then run this to unpack them
sudo dpkg -i ~/Downloads/*.deb

#Then run this to install unpacked packages
sudo apt-get --assume-yes -f install

