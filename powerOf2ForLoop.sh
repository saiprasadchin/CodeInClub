#! /bin/bash -x
read -p "enter the Number : " n
count=0
value=0

s=$((2**$n))


for((i=1;$value<=$s;i++ ))
do
        value=$((2**$count))
        echo $value
        let count++
done



