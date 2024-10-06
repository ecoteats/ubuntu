#!/bin/bash
# __    __  __                             __                       ______               __                        __                        __                __  __                     
#|  \  |  \|  \                           |  \                     /      \             |  \                      |  \                      |  \              |  \|  \                    
#| $$  | $$| $$____   __    __  _______  _| $$_    __    __       |  $$$$$$\ __    __  _| $$_     ______           \$$ _______    _______  _| $$_     ______  | $$| $$  ______    ______  
#| $$  | $$| $$    \ |  \  |  \|       \|   $$ \  |  \  |  \      | $$__| $$|  \  |  \|   $$ \   /      \  ______ |  \|       \  /       \|   $$ \   |      \ | $$| $$ /      \  /      \ 
#| $$  | $$| $$$$$$$\| $$  | $$| $$$$$$$\\$$$$$$  | $$  | $$      | $$    $$| $$  | $$ \$$$$$$  |  $$$$$$\|      \| $$| $$$$$$$\|  $$$$$$$ \$$$$$$    \$$$$$$\| $$| $$|  $$$$$$\|  $$$$$$\
#| $$  | $$| $$  | $$| $$  | $$| $$  | $$ | $$ __ | $$  | $$      | $$$$$$$$| $$  | $$  | $$ __ | $$  | $$ \$$$$$$| $$| $$  | $$ \$$    \   | $$ __  /      $$| $$| $$| $$    $$| $$   \$$
#| $$__/ $$| $$__/ $$| $$__/ $$| $$  | $$ | $$|  \| $$__/ $$      | $$  | $$| $$__/ $$  | $$|  \| $$__/ $$        | $$| $$  | $$ _\$$$$$$\  | $$|  \|  $$$$$$$| $$| $$| $$$$$$$$| $$      
# \$$    $$| $$    $$ \$$    $$| $$  | $$  \$$  $$ \$$    $$      | $$  | $$ \$$    $$   \$$  $$ \$$    $$        | $$| $$  | $$|       $$   \$$  $$ \$$    $$| $$| $$ \$$     \| $$      
#  \$$$$$$  \$$$$$$$   \$$$$$$  \$$   \$$   \$$$$   \$$$$$$        \$$   \$$  \$$$$$$     \$$$$   \$$$$$$          \$$ \$$   \$$ \$$$$$$$     \$$$$   \$$$$$$$ \$$ \$$  \$$$$$$$ \$$      
#                                                                                                                                                                                         
#
#
#                                                        ▄▄▄▄ ▓██   ██▓    ▄▄▄▄    ▄▄▄       ██▓     ▒█████   ██▀███  
#                                                       ▓█████▄▒██  ██▒   ▓█████▄ ▒████▄    ▓██▒    ▒██▒  ██▒▓██ ▒ ██▒
#                                                       ▒██▒ ▄██▒██ ██░   ▒██▒ ▄██▒██  ▀█▄  ▒██░    ▒██░  ██▒▓██ ░▄█ ▒
#                                                       ▒██░█▀  ░ ▐██▓░   ▒██░█▀  ░██▄▄▄▄██ ▒██░    ▒██   ██░▒██▀▀█▄  
#                                                       ░▓█  ▀█▓░ ██▒▓░   ░▓█  ▀█▓ ▓█   ▓██▒░██████▒░ ████▓▒░░██▓ ▒██▒
#                                                       ░▒▓███▀▒ ██▒▒▒    ░▒▓███▀▒ ▒▒   ▓▒█░░ ▒░▓  ░░ ▒░▒░▒░ ░ ▒▓ ░▒▓░
#                                                       ▒░▒   ░▓██ ░▒░    ▒░▒   ░   ▒   ▒▒ ░░ ░ ▒  ░  ░ ▒ ▒░   ░▒ ░ ▒░
#                                                        ░    ░▒ ▒ ░░      ░    ░   ░   ▒     ░ ░   ░ ░ ░ ▒    ░░   ░ 
#                                                        ░     ░ ░         ░            ░  ░    ░  ░    ░ ░     ░     
#                                                             ░░ ░              ░                                     
#
#
#
#
#############################################
## curl Install ##
sudo apt install -y curl
#############################################
## VS Code install ##
wget -O "VScode.deb" https://go.microsoft.com/fwlink/?LinkID=760868
sudo dpkg -i VScode.deb
sudo apt-get install -f
#############################################
## Cmus Install ##
sudo apt install -y cmus wavpack
#############################################
## lutris Install ##
#############################################
## Signal Install ##
# 1. Install our official public software signing key:
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
# 2. Add our repository to your list of repositories:
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
sudo tee /etc/apt/sources.list.d/signal-xenial.list
# 3. Update your package database and install Signal:
sudo apt update && sudo apt install signal-desktop
#############################################
## vlc Install ##
sudo apt install -y vlc
#############################################
## spotify Install ##
sudo curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client
#############################################
## Gsettings - toolbar editing ##
gsettings set org.gnome.shell favorite-apps "['firefox_firefox.desktop', 'org.gnome.Nautilus.desktop', 'spotify.desktop', 'org.gnome.Terminal.desktop', 'libreoffice-writer.desktop', 'gnome-calculator_gnome-calculator.desktop', 'libreoffice-calc.desktop', 'gnome-control-center.desktop', 'org.gnome.tweaks.desktop', 'vlc.desktop']"
#############################################
## Usefule Shortcuts ##
## VS CODE - alt + z - Unwrapped lines to show all. ##
#############################################
## Finalize ##
sudo apt-get install -f
sudo apt upgrade
sudo apt update
#reboot
