#!/usr/bin/env bash

sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo add-apt-repository ppa:webupd8team/tor-browser
sudo apt-get update
xargs sudo apt-get -y install < apt_requirements.txt
sudo dpkg -i google-chrome-*.deb
sudo apt-get -fy install
sudo dpkg -i google-chrome-*.deb
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