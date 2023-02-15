#!/usr/bin/bash

arr=(epita is the best school)
arr=(first ${arr[@]})

echo
echo -e Added \'first\' to array: ${arr[@]} "\n"

arr=(${arr[@]} last)
echo -e Added \'last\' to array: ${arr[@]} "\n"

lengthOfArray=${#arr[@]}

array=(${arr[@]:0:((lengthOfArray/2))})
array+=(middle)

array=(${array[@]} ${arr[@]:(((lengthOfArray/2)))})
echo -e Added \'middle\' to array: ${array[@]} "\n"
