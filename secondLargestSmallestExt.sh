echo " Sorting the array to find second largest and smallest number"
for((i=1;i<=10;i++));
do
digit=$(( RANDOM % 899 + 100 ))
array[$i]=$digit
done
echo " Before Sort : ${array[@]}"
for((i=1;i<=9;i++));
do
let k=$i+1
for(( j=$k; j<=10; j++));
do
if [ ${array[$i]} -gt ${array[$j]} ]
then
temp=${array[$i]}
array[$i]=${array[$j]}
array[$j]=$temp
fi
done
done
echo " After Sort : ${array[@]}"
echo " Second smallest : ${array[2]}"
echo " second largest : ${array[9]}"
