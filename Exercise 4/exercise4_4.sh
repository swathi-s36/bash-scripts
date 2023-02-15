#! /usr/bin/bash

randomArray=()

while [ ${#randomArray[@]} -lt 5 ]
do
    randomValue=$(shuf -i 1-50 -n 1)
    if [[ ! " ${randomArray[@]} " =~ " ${randomValue} " ]]
    then
        randomArray=(${randomArray[@]} $randomValue)
    fi
done

echo
echo Random Array: ${randomArray[@]}
