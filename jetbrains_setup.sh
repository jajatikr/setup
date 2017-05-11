#!/usr/bin/env bash

GREEN='\033[1;32m'
PURPLE='\033[1;35m'
NC='\033[0m'

install() {

    echo -e "\n${GREEN}Extracting...${NC}\n"
    if [ $1 == "tar" ]; then
        sudo tar -xzf $2 -C /opt/
    elif [ $1 == "zip" ]; then
        sudo unzip -q $2 -d /opt/
    fi

    echo -e "\n${GREEN}Installing...${NC}\n"
    cd /opt/$3/bin
    ./$4
    exit

}

# Random inititalization
edition=$(echo 'Z')

# Read user input until given options are provided
until [[ $edition == "IU" || $edition == "IC" || $edition == "A" || $edition == "PP" || $edition == "PC" ]]; do
    echo -e "\n${PURPLE}Installation options"
    echo -e "IntelliJ IDEA Ultimate/Community edition [IU/IC]"
    echo -e "Pycharm Professional/Community edition   [PP/PC]"
    echo -e "Google Android Studio                    [A]${NC}\n"
    read edition
done

# Install based on user input
if [ $edition == "IU" ]; then
    install "tar" "ideaIU-*.tar.gz" "idea-IU-*" "idea.sh"
elif [ $edition == "IC" ]; then
    install "tar" "ideaIC-*.tar.gz" "idea-IC-*" "idea.sh"
elif [ $edition == "A" ]; then
    sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 unzip
    install "zip" "android-*.zip" "android-*" "studio.sh"
elif [ $edition == "PP" ]; then
    install "tar" "pycharm-professional-*.tar.gz" "pycharm-*" "pycharm.sh"
elif [ $edition == "PC" ]; then
    install "tar" "pycharm-community-*.tar.gz" "pycharm-community-*" "pycharm.sh"
fi

# Uninstall
# sudo rm -r .IntelliJIdea2017.1/
# sudo rm -r /opt/idea-IU-171.4249.39/
