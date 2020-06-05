#!/bin/bash -x
true=1
while(( $true ))
do
value=$(( (RANDOM % 6) + 1))
dice[$value]=$(( ${dice[$value]} + 1))
if [ ${dice[$value]} == 10 ];
then
echo " The number on the dice that occurs maximum time : $value"
break
fi
done
min=10
for (( i=1; i<=6; i++));
do
if [ $min -gt ${dice[$i]} ];
then
min=${dice[$i]}
diceNumber=$i
fi
done
echo " The number on the dice that occurs the least is: $diceNumber"
echo " "${dice[@]}
