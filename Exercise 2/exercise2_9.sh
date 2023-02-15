#!/usr/bin/bash

echo
read -p "Enter time and distance: " time distance

if [ -z "$time" ] || [ -z "$distance" ]
then
    echo -e "\nPlease enter valid values!\n"
else
    echo -n -e "\nSpeed = "
    echo "scale=2;$distance/$time" | bc 
    echo
fi
