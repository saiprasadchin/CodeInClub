#!/bin/bash -x
echo "Magic number problem"
echo "   Think of a number between 1 to 100"
min=1
max=100
guess=0
found=false
value=100
while [[ "$found" != true ]]
do
     if [ $value -gt 5 ]
	then
        guess=$((($max + $min) / 2 ))
	#let  num1=$guess-1
  	 echo "Is this the number :" $guess
        echo "if yes press 3"
	echo "If not," 
	echo "press 1 if it is higher then $guess"
	echo "press 2 if it is lower than $guess"
        read input
	let value=$max-$min
        if [ $input == 2 ];
        then
                        #max=$(($guess - 1))
			max=$guess
        elif [ $input == 1 ];
          then
                        #min=$(($guess + 1))
			min=$guess
	elif [ $input == 3 ];
          then
                      exit 0

        else 
                  echo "invalid number : you can't cheat me"
                  #found=true
		exit 0
        fi
     fi
	if [ $value -lt 6 ]
	then
		
		let  ss=$min+1
		
		echo "your number should be $ss"
		found=true
	fi
done
