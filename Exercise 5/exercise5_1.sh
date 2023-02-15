#!/usr/bin/bash

inputFile="$(pwd)/file.txt"
while read -r line
do
    echo

    fileArray=($(echo $line | cut -d'!' -f 1,3 --output-delimiter=' '))

    echo Name: ${fileArray[@]:0:2} Phone Number: ${fileArray[-1]}
done < "$inputFile"
echo
