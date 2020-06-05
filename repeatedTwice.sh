function repeat {
num=$1
let digitOne=$num%10
let num=$num/10
let digitTwo=$num%10
if [ $digitOne == $digitTwo ]
then
return 1
else
return 0
fi
}
index=0
for((i=1;i<=99;i++));
do
repeat $i
if [ $? == 1 ]

then
array[(index++)]=$i
fi
done
echo "${array[@]}"
