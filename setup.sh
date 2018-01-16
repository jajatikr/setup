#!/usr/bin/env bash

# Initialize colors
GREEN='\033[1;32m'
NC='\033[0m'

# Copy .vimrc to home
cp .vimrc /home/$USER

# Add Webupd8 sublime text 3 and tor browser repository and update
echo -e "\n${GREEN}Adding Webupd8 tor repository${NC}\n"
sudo add-apt-repository ppa:webupd8team/tor-browser -y
sudo apt-get update
sudo apt-get --yes --allow-downgrades --allow-remove-essential --allow-change-held-packages dist-upgrade
sudo apt-get --yes --allow-downgrades --allow-remove-essential --allow-change-held-packages autoremove


# Install packages from apt_requirements.txt
echo -e "\n${GREEN}Installing apt-get packages${NC}\n"
xargs sudo apt-get -y install < apt_requirements.txt

# Install Rust
curl https://sh.rustup.rs -sSf | sh

# Install Python Pipenv (https://stackoverflow.com/questions/46391721/pipenv-command-not-found)
echo -e "\n${GREEN}Installing python Pipenv${NC}\n"
sudo -H pip install -U pipenv

# Install Google Chrome
echo -e "\n${GREEN}Installing Google Chrome${NC}\n"
sudo dpkg -i google-chrome-*.deb
sudo apt-get -fy install
sudo dpkg -i google-chrome-*.deb

# Install Jetbrains toolbox
echo -e "\n${GREEN}Installing Jetbrains Toolbox${NC}\n"
sudo tar -xfz jetbrains-toolbox-*.tar.gz -C /opt/
cd /opt/jetbrains-toolbox-*/
./jetbrains-toolbox



# Remove tor browser
# sudo apt-get remove tor-browser
# rm -r ~/.tor-browser-en
