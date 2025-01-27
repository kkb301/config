#!/bin/bash

# get OSTREE

rpm-ostree upgrade

# flatpaks

#flatpak upgrade -y

# list of programs to install
flatpak list --columns=application --app > /home/kevin/MEGAsync/silverblue/flatpaks.txt
sed 's/^/flatpak install -y /' /home/kevin/MEGAsync/silverblue/flatpaks.txt > /home/kevin/MEGAsync/silverblue/flatpaks.sh


# distrobox

distrobox-upgrade --all

# set off a backintime save
log=/home/kevin/MEGAsync/silverblue/log_file.txt
CURRENTDATE=`date +"%D %T"`
echo ${CURRENTDATE} : update.sh>> $log

#/usr/bin/backintime backup-job

# pause for input

#read -p "Press any key to resume ..."
