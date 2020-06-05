#! /bin/bash -x
read -p "Enter the satrting range : " start
read -p "Enter the ending  range : " end
if [ $start -lt 0 -o $end -lt 0 -o $end -lt $start ]
then
	echo "invalid input"
	exit 0
fi
for ((i=$start;i<=$end;i++))
do
	c=0
	for ((j=1;j<=$i;j++))
	do
        	if [ $[$i%$j] -eq 0 ]
        	then
                	let c++
        	fi
	done
	if [ $c -eq 2 ]
	then
        	echo "the number $i is prime"
	fi

done

