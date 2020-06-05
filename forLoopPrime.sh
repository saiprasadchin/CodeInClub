#! /bin/bash -x
read -p "Enter the number to check prime or not : " n
c=0
for ((i=1;i<=$n;i++))
do
	if [ $[$n%$i] -eq 0 ]
        then
		let c++
        fi
done
if [ $c -eq 2 ]
then
	echo "the number $n is prime"
else
	echo "the number $n is not prime"

fi

