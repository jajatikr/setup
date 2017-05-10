sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo add-apt-repository ppa:webupd8team/tor-browser
sudo apt-get update
xargs sudo apt-get -y install < apt_requirements.txt
sudo dpkg -i google-chrome-*.deb
sudo apt-get -fy install

# Remove tor browser
# sudo apt-get remove tor-browser
# rm -r ~/.tor-browser-en