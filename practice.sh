#! /bin/bash -x

echo Enter a number
read n
i=1
sum=0
while [ $i -le $n ]
do
sum=`expr $sum + 10000 / $i `
i=`expr $i + 1`
done
echo Sum n series is
echo "scale=4;$sum/10000" | bc
echo


