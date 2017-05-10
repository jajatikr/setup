#!/usr/bin/env bash

install() {

    echo Extracting $2
    if [ $1 == "tar" ]; then
        sudo tar -xzf $2 -C /opt/
    elif [ $1 == "zip" ]; then
        sudo unzip -q $2 -d /opt/
    fi
    echo "Extraction completed"

    echo "Installing..."
    cd /opt/$3/bin
    ./$4
    echo "Installation completed"
    exit

}

# Random inititalization
edition=$(echo 'Z')

# Read user input until given options are provided
until [[ $edition == "IU" || $edition == "IC" || $edition == "A" || $edition == "PU" || $edition == "PC" ]]; do
    echo "Installation options"
    echo "IntelliJ IDEA Ultimate/Community edition [IU/IC]"
    echo "Pycharm Professional/Community edition   [PP/PC]"
    echo "Google Android Studio                    [A]"
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
elif [ $edition == "PU" ]; then
    install "tar" "pycharm-professional-*.tar.gz" "pycharm-*" "pycharm.sh"
elif [ $edition == "PC" ]; then
    install "tar" "pycharm-community-*.tar.gz" "pycharm-community-*" "pycharm.sh"
fi

# Uninstall
# sudo rm -r .IntelliJIdea2017.1/
# sudo rm -r /opt/idea-IU-171.4249.39/