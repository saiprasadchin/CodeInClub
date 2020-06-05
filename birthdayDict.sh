#! /bin/bash -x
echo " Birthday on the same month"
echo
month=( '' January Feb March April May June July August September October November
December )
count=0

while [[ $count -lt 50 ]]
do
value=$((RANDOM%12 + 1))
birthday=${month[$value]}
let "$birthday++"
let "count+=1"
done
echo " Number of individuals having birthday in same month are : "
for(( i=1; i<=12; i++));
do
echo " ${month[$i]} : $((${month[$i]}))"
done
