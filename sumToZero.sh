#! /bin/bash -x
echo " Three integer sum add's to zero"
read -p " Enter the size of array :" n
if [ $n -lt 3 ]
then
echo " Enter size greater than 3"
exit
fi
for((i=1;i<=$n;i++));
do
read -p " Enter element number $i :" element
array[$i]=$element
done
let l=$n-1
for((i=1;i<=$l;i++));
do
val=${array[$i]}
let k=$i+1
for((j=$k;j<=$n;j++));
do
if [ ${array[$i]} -gt "${array[$j]}" ]
then
temp=${array[$i]}
array[$i]=${array[$j]}
array[$j]=$temp
fi
done
done
flag=false
for((i=1;i<$n;i++));
do
let l=$i+1
let r=$n
x=${array[$i]}
while [ $l -lt $r ]
do
if [ $(( $x + ${array[$l]} + ${array[$r]} )) -eq 0 ]
then
echo " Elements are :$x ${array[$l]} ${array[$r]} "
flag=true
fi

if [ $(( $x + ${array[$l]} + ${array[$r]} )) -lt 0 ]
then
let l++
else
let r--
fi
done
done
if [ $flag == "false" ]
then
echo " Three integer's to sum to zero not found"
fi
