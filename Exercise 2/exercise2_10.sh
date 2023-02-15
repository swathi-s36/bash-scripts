#!/usr/bin/bash

echo
read -p "Enter First name and year of birth: " name year

if [ -z "$name" ] || [ -z "$year" ]
then
    echo -e "\nPlease enter valid input!\n"
else
    currentYear=$(date +"%Y")
    age=0
    for i in $(seq $((year + 1)) $currentYear)
    do
        ((age+=1))
    done
    
    echo -e "\nName: $name \nAge: $age \n"
fi
