#! /bin/bash -x
echo " To store prime factors in an array"
read -p " Enter a number :" number
count=0
for i in $(seq 1 $number)
do
if [ $[$number%$i] = 0 ]
then
array[(count++)]=$i
fi
done
echo " Prime factors are : "${array[@]}
