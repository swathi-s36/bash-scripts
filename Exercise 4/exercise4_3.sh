#! /usr/bin/bash

. exercise4_2.sh

echo -e Array: ${array[@]} "\n"
echo -n "Removing 'first' element! Remaining array: "
unset 'array[0]'
echo -e ${array[@]} "\n"

echo -n "Removing 'last' element! Remaining array: "
unset 'array[-1]'
echo -e ${array[@]} "\n"
