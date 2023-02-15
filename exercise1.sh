#!/usr/bin/bash

COLUMNS=1
printMenu()
{
    echo
    echo "#############################MENU########################################"
    echo "#                                                                       #"
    echo "#            1) List of Users in your Ubuntu box                        #"
    echo "#            2) Kernel Version                                          #"
    echo "#            3) Distribution Name and Version                           #"
    echo "#            4) Identity of the User                                    #"
    echo "#            5) Privilege escalation to administrator                   #"
    echo "#            6) Exit                                                    #"               
    echo "#                                                                       #"
    echo "#########################################################################"
    echo
}

printMenu

while read -p "Select your Choice: " option
do
	case $option in
		1) echo ; cut -d: -f1 /etc/passwd ; echo ;;
		2) echo ; echo -n "Kernel Version: " ; uname -r ; echo ;;
		3) echo ; lsb_release -a ; echo ;;
		4) echo ; whoami ; echo ;;
		5) echo ; sudo bash ; echo ;;
		6) echo ; echo "Exiting menu!" ; exit ;;
		*) echo ; echo "Please select a valid option" ; echo ;;
	esac
	
	printMenu
done
