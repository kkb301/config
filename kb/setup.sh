#!/bin/bash

echo "getting screen settings"
wget https://raw.githubusercontent.com/kkb301/config/main/kb/xfce4.zip
unzip xfce4.zip
echo "getting start data"
wget https://raw.githubusercontent.com/kkb301/config/main/kb/file1.zip
unzip file1.zip

echo "flatpak repos"
flatpak remote-add --if-not-exists --user flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-delete fedora
flatpak remote-delete flathub --system

echo "turn off auto update"
sudo sed -i 's/stage/none/g' /etc/rpm-ostreed.conf
sudo rpm-ostree reload
