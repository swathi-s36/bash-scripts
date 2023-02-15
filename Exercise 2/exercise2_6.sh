#!/usr/bin/bash

echo
read -p "Enter any number of arguments: " -a array

if [ ${#array[@]} -eq 0 ]
then
    echo Please enter valid arguments!
else
    echo -e "\nSorted list of arguments: " $(printf "%s\n" ${array[@]} | sort -n)
    echo
fi
