arr=(epita is the best school)

echo ${#arr} #Length of 0th element in the array
echo ${#arr[*]} #Length of array
echo ${arr} #Prints the 0th element of the array
echo ${arr[@]} #Prints all elements of the array
echo ${#arr[0]} #Length of 0th element in the array
echo ${#arr[1]} #Length of 1st element in the array
echo ${#arr[2]} #Length of 2nd element in the array
echo ${#arr[3]} #Length of 3rd element in the array
echo ${arr[@]:3} #Prints the array starting from index = 3 till end of array
echo ${arr[@]:2:2} #Prints 2 elements of the array starting from index = 2
