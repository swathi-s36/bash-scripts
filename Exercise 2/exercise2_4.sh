#!/usr/bin/bash

getDays()
{
    case $1 in
        1|3|5|7|8|10|12) echo -e "\nThis month has 31 days\n" ;;
        2) echo -e "\nThis month has 28 days. On leap years it has 29 days\n" ;;
        4|6|9|11) echo -e "\nThis month has 30 days\n" ;;
        *) echo -e "\nInvalid month\n" ;;
    esac
}

if [ $# -eq 0 ]
then
    echo
    read -p "Please enter the month to retrieve number of days: " month
    getDays $month
else
    getDays $1
fi
