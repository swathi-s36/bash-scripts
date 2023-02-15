#!/usr/bin/bash

tranpose()
{
    if [ -z "$1" ]
    then
        echo "Cannot transpose string! Invalid input!"
    else
        echo -n -e "\nTransposed String : "
        echo $1 | tr a-z A-Z
        echo
    fi
}

read -p "Please enter a alphanumeric string: " inputString

if [ -z "$inputString" ]
then
    read -p "Please enter a valid alphanumeric string: " inputString
    if [ -z "$inputString" ]
    then
        echo "Cannot transpose string! Invalid input!"
    else    
        transpose $inputString
    fi
else
    tranpose $inputString
fi
