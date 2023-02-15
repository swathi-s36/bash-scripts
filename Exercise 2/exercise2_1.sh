#!/usr/bin/bash

echo -e "\nGoing to find and remove duplicate files in the current directory\n"

filesArray=($(ls .))
lengthOfArray=${#filesArray[@]}

count=0
index=0

checkIndexInArray()
{
    for checkIndex in ${!filesArray[@]}
    do
        if [ $1 -eq $checkIndex ]
        then
            return 0
        fi    
    done
    return 1
}

for (( index = 0 ; index < lengthOfArray ; index++ ))
do
    if checkIndexInArray $index && [ -f ${filesArray[$index]} ]
    then
	    originalFingerprint=$(md5sum ${filesArray[$index]} | cut -d ' ' -f 1)

        remainingfiles=$(($index+1))
	    for (( remainingfiles = index+1 ; remainingfiles < lengthOfArray ; remainingfiles++ ))
	    do
            if checkIndexInArray $remainingfiles
            then
		        if [ ${filesArray[$index]} != ${filesArray[$remainingfiles]} ] && [ -f ${filesArray[$remainingfiles]} ]
		        then
			        fingerprint=$(md5sum ${filesArray[$remainingfiles]} | cut -d ' ' -f 1)

			        if [ $originalFingerprint = $fingerprint ]
			        then
				        echo -e "\n!!!!!Duplicate file: " ${filesArray[$remainingfiles]} ". Removing file!!!!!\n"
                        if [ -f ${filesArray[$remainingfiles]} ] 
                        then
                            rm ${filesArray[$remainingfiles]}
                        fi

				        ((count+=1))

                        unset filesArray[$remainingfiles]
			        fi
		        fi
		     else
		        :
		     fi
	    done
    else
        :
    fi
done

if [ $count -eq 0 ]
then
    echo -e "\n!!!!No duplicate files found in current directory!!!!\n"
fi