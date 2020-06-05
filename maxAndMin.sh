echo "6.Max and min from 5 random values"
function minMax(){
MAXSIZE=5
count=0
while [ $count -le $MAXSIZE ]
do
integers[$count]=$(((RANDOM%899)+100))
let "count += 1"
done
biggest=${integers[0]}
smallest=${integers[0]}
for i in ${integers[@]}
do
if [[ $i -gt $biggest ]]
then
biggest="$i"
fi
if [[ $i -lt $smallest ]]
then
smallest="$i"
fi
done
echo " The maximun number is $biggest"
echo " The minimum number is $smallest"
}
minMax
echo
echo
