#!/usr/bin/bash

convertDecimal()
{
    if [ -z "$1" ]
    then
        echo "Cannot convert input to Octal, Hexadecimal and Binary! Invalid input"
    else
        echo -n -e "\nDecimal to Binary: "
        echo -e "obase=2;$decimal\n" | bc
        echo -n -e "\nDecimal to Octal: "
        echo -e "obase=8;$decimal\n" | bc
        echo -n -e "\nDecimal to Hexadecimal: "
        echo -e "obase=16;$decimal" | bc
    fi
}

echo
read -p "Enter a decimal number: " decimal

if [ -z "$decimal" ]
then
    echo
    read -p "Enter a decimal number: " decimal
    convertDecimal $decimal
else
    convertDecimal $decimal
fi
