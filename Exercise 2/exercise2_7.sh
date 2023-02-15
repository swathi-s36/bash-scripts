#!/usr/bin/bash

if [ $# -eq 0 ]
then
    echo !!!!ERROR!!!! Argument required to count number of characters
else
    i=1
    while read line
    do
        echo "Line: " $((i++)) " contains: " $( echo $line | wc -m) " characters"
    done < $1
fi
