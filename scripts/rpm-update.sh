#!/bin/bash

# get OSTREE

rpm-ostree upgrade



# list of programs to install
flatpak list --columns=application --app > /home/kevin/MEGAsync/silverblue/flatpaks.txt
sed 's/^/flatpak install -y /' /home/kevin/MEGAsync/silverblue/flatpaks.txt > /home/kevin/MEGAsync/silverblue/flatpaks.sh

#save latest firefox settings
7z u -r  /var/home/kevin/MEGAsync/silverblue/firefox  /var/home/kevin/.mozilla/firefox

#scripts
7z u -r  /var/home/kevin/MEGAsync/silverblue/scripts /var/home/kevin/.scripts

# distrobox

distrobox-upgrade --all


log=/home/kevin/MEGAsync/silverblue/log_file.txt
CURRENTDATE=`date +"%D %T"`
echo ${CURRENTDATE} : update.sh>> $log



# pause for input

#read -p "Press any key to resume ..."
