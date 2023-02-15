#! /usr/bin/bash

calculate()
{
    case $2 in
        +) echo $(( $1 + $3)) ;;
        -) echo $(( $1 - $3)) ;;
        x) echo $(( $1 * $3)) ;;
       \/) if [ $3 -ne 0 ] 
           then
                echo "scale=3; $1 / $3" | bc -l
           else
                echo Cannot perform divison by 0
           fi
           ;;
      \//) if [ $3 -ne 0 ] 
           then
                echo $(( $1 / $3))
           else
                echo Cannot perform divison by 0
           fi
           ;;
        %) echo $(( $1 % $3)) ;;
        ^) echo $(( $1 ** $3)) ;;
        *) echo Invalid operation! ;;
    esac
    echo
}

if [ $# -eq 0 ]
then
    read -p "Please enter 3 parameters for the script (operand1 operator opernad2): " operator1 operand operator2
fi

if [ $# -eq 3 ]
then
    echo -n -e "\nOutput of $1 $2 $3 is: "
    calculate $1 $2 $3
else
    echo -n -e "\nOutput of $operator1 $operand $operator2 is: "
    calculate $operator1 $operand $operator2
fi
    
