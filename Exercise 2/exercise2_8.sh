#!/usr/bin/bash

if [ -z "$1" ]
then
    echo -e "\nPlease enter a valid word!\n"
else
    echo -n -e "\n" $1 ": "
    if [ $(cat /usr/share/dict/american-english | grep "^$1$") ]
    then
        echo -e "Word is a valid English word!\n"
    else
        echo -e "Word is not available in English dictionary!\n"
    fi    
fi
