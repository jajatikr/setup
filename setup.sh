#!/usr/bin/env bash

# Add Webupd8 sublime text 3 and tor browser repository and update
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo add-apt-repository ppa:webupd8team/tor-browser
sudo apt-get update

# Install packages from apt_requirements.txt
xargs sudo apt-get -y install < apt_requirements.txt

# Install Python packages
pip3 install --user -r requirements.txt

# Install Google Chrome
sudo dpkg -i google-chrome-*.deb
sudo apt-get -fy install
sudo dpkg -i google-chrome-*.deb

# Install IDEA Ultimate, Pycharm Professional and Android Studio
sudo chmod +x jetbrains_setup.sh
./jetbrains_setup.sh
IU
./jetbrains_setup.sh
A
./jetbrains_setup.sh
PP



# Remove tor browser
# sudo apt-get remove tor-browser
# rm -r ~/.tor-browser-en