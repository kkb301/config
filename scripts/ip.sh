#!/bin/bash


ip=`curl ifconfig.me`
#echo $ip

if [ "$ip" = "87.106.72.94" ];
    then 
    echo "<executor.markup.true> <span foreground='lightgreen'>WG</span>"
    else
    echo "<executor.markup.true> <span foreground='red'>CL</span>"
fi


