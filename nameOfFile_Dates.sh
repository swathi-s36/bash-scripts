#!/usr/bin/bash

read -p "Enter path to retrieve data : " path

if [ -d $path ]
then
   echo -e "\nDirectory Path"
   for files in $(ls $path)
   do
       filename=$path\/$files
       stat --printf="\nFile Name: $(basename $files)\nCreation Time: %w\nModified Time: %y\nLast Access: %x\n" $filename
       echo
   done
elif [ -f $path ]
then
    echo -e "\nFile Path"
    stat --printf="\nFile Name: $(basename $path)\nCreation Time: %w\nModified Time: %y\nLast Access: %x\n" $path
else
   echo -e "\nPath not available. Recheck input!\n"
fi
