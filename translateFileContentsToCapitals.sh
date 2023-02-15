#! /usr/bin/bash

read -p "Enter file to transpose: " file


if [ -f $file ]
then

   cp $file tmp.txt
   echo
   echo Contents of file before Tranpose :
   cat tmp.txt
   cat tmp.txt | tr a-z A-Z > $file
   echo
   echo Contents of file after Transpose :
   cat ${file}
   rm tmp.txt
else
   echo "File does not exist"
fi

