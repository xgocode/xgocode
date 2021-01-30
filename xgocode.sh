#!/bin/bash
apt update -y
apt upgrade -y
apt autoremove -y
apt autoclean -y
apt clean -y
apt install -y curl vim htop tmux firefox vlc mousepad
curl -O "https://dl.google.com/go/$(curl -s 'https://golang.org/VERSION?m=text').linux-amd64.tar.gz"
tar -C /usr/local -xzf ./go*.tar.gz
rm ./go*.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> /home/"$USER"/.bashrc
curl -O "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
apt install -y ./code*.deb
rm ./code*.deb
