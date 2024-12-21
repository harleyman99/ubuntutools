#!/bin/bash

# To install this script in terminal type sudo bash and drag and drop the
# script file into the terminal. Sit back and wait until your appications
# are installed.

# First we will update the OS

# Functions

function UbuntuUpdate() {
    apt update -y
    apt upgrade -y
}


# This part of the script will install VS Code.

sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

# This will install Wireshark

sudo add-apt-repository ppa:wireshark-dev/stable
sudo apt-get update -y
sudo apt-get install wireshark -y
sudo dpkg-reconfigure wireshark-common -y
sudo adduser $USER wireshark

# This will install Virtual Box

sudo apt-get install virtualbox -y

# This will install the add on tools for Virtual Box

sudo apt install virtualbox-ext-pack -y

# This will install Libre Office

sudo apt install libreoffice -y

# This will install the Brave Browser

sudo apt install curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update -y
sudo apt install brave-browser -y

# Lets install a better terminal program.

sudo apt install terminator -y

# We need a program to configure networking gear.

sudo apt install putty -y

# We need a way to check out running processes. 

sudo apt install bashtop -y


