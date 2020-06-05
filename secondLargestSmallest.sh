echo " Second Largest and Second Smallest"
for((i=1;i<=10;i++));
do
digit=$(( RANDOM%899 + 100 ))
array[$i]=$digit
done
MAX=0
MIN=1000
secondLargest=0
secondSmallest=1000
for((i=1; i<=10; i++)){
value=${array[$i]}
if [ $value -gt $secondLargest ]
then
secondLargest=$value
if [ $value -gt $MAX ]
then
secondLargest=$MAX
MAX=$value
fi
fi
if [ $value -lt $secondSmallest ]
then
secondSmallest=$value
if [ $value -lt $MIN ]
then
secondSmallest=$MIN
MIN=$value
fi
fi
}
echo " ${array[@]}"
echo " Second largest : $secondLargest"
echo " Second smallest : $secondSmallest"
