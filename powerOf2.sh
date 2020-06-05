#! /bin/bash -x
read -p "enter the Number : " n
count=0
value=0

s=$((2**$n))

while [ $value -lt 256 -a $value -lt $s ]
do
	value=$((2**$count))
	echo $value
	let count++
done
