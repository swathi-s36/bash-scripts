#!/usr/bin/bash

inputFile=$(pwd)"/marks.csv"

printGrade()
{
    if [ $1 -gt 18 ] && [ $1 -le 20 ]
    then
        echo "Grade: A --> Excellent"
    elif [ $1 -gt 16 ] && [ $1 -le 18 ]    
    then
        echo "Grade: B --> Very Good"
    elif [ $1 -gt 14 ] && [ $1 -le 16 ]    
    then
        echo "Grade: C --> Good"
    elif [ $1 -gt 12 ] && [ $1 -le 14 ]
    then
        echo "Grade: D --> Average"
    elif [ $1 -ge 10 ] && [ $1 -le 12 ]    
    then
        echo "Grade: E --> Below Average"
    elif [ $1 -le 10 ]
    then
        echo "Grade: F --> Failed"
    else
        echo "Invalid Mark calculated!!"
    fi
}

while read -r line
do
    studentArray=($(echo $line | cut -d';' -f 1-5 --output-delimiter=' '))

    echo Name: ${studentArray[@]:0:2}
    marks=(${studentArray[@]:2})

    sum=0
    for mark in ${marks[@]}
    do
        ((sum+=mark))
    done
    
    avg=$((sum/${#marks[@]}))
    
    printGrade $avg
    echo
done < "$inputFile"

