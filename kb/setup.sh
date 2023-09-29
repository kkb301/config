#!/bin/bash


wget https://raw.githubusercontent.com/kkb301/config/main/kb/xfce4.7z
unzip xfce4.7z

flatpak remote-add --if-not-exists --user flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-delete fedora
flatpak remote-delete flathub --system
