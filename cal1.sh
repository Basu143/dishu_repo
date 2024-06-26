#!/bin/bash
#########################
# to calulate the given 2 numbers for all the arithamatic operations
##################################
display_menu() {
echo " **********calculator menu********************* "
echo "1. Addition"
echo "2. Substraction"
echo "3. Multiplication"
echo "4. division"
echo "5. Exit"
echo "enter your choice"

}

addition() {
	echo "enter num1"
	read num1
	echo "enter num2"
	read num2
	res=$((num1+num2))
	echo "Result of $num1 + $num2 is : $res"
}
subtraction() {
        echo "enter num1"
        read num1
        echo "enter num2"
        read num2
        res=$((num1-num2))
        echo "Result of $num1 - $num2 is : $res"
}
multiplication() {
        echo "enter num1"
        read num1
        echo "enter num2"
        read num2
        res=$((num1*num2))
        echo "Result of $num1 * $num2 is : $res"
}

# to install bc use the below commands, bc is the batch calculator used for decimal calculations
#sudo apt-get update
#sudo apt-get install bc
division() {
  echo "enter num1"
        read num1
        echo "enter num2"
        read num2
        res=$(bc <<< "scale=2; $num1 / $num2" )
        echo "Result of $num1 / $num2 is : $res"
}

while true; do
	display_menu
	read ch
	case $ch in
		1) 
			addition 
			;;
		2)
		        subtraction	
			;;
		3) 
			multiplication
			;;
	  	4)
			division
			;;
		5)
                        echo "existing,good bye"
                        exit 0
                        ;;
                *)
                        echo "Invalid choice,please enter number from 1 to 5 "
                        ;;

	esac
done		
