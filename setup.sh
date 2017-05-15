#!/usr/bin/env bash

# Initialize colors
GREEN='\033[1;32m'
NC='\033[0m'

# Copy .vimrc to home
cp .vimrc /home/$USER

# Add Webupd8 sublime text 3 and tor browser repository and update
echo -e "\n${GREEN}Adding Webupd8 sublime and tor repositories${NC}\n"
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo add-apt-repository ppa:webupd8team/tor-browser -y
sudo apt-get update
sudo apt-get --yes --allow-downgrades --allow-remove-essential --allow-change-held-packages dist-upgrade
sudo apt-get --yes --allow-downgrades --allow-remove-essential --allow-change-held-packages autoremove


# Install packages from apt_requirements.txt
echo -e "\n${GREEN}Installing apt-get packages${NC}\n"
xargs sudo apt-get -y install < apt_requirements.txt

# Copy Sublime Text 3 User preferences
cp sublime_preferences/*.sublime-settings ~/.config/sublime-text-3/Packages/User/

# Install Python modules
echo -e "\n${GREEN}Installing python modules${NC}\n"
pip3 install --user -r requirements.txt

# Install Google Chrome
echo -e "\n${GREEN}Installing Google Chrome${NC}\n"
sudo dpkg -i google-chrome-*.deb
sudo apt-get -fy install
sudo dpkg -i google-chrome-*.deb

# Install IDEA Ultimate, Pycharm Professional and Android Studio
sudo chmod +x jetbrains_setup.sh
./jetbrains_setup.sh
./jetbrains_setup.sh
./jetbrains_setup.sh



# Remove tor browser
# sudo apt-get remove tor-browser
# rm -r ~/.tor-browser-en