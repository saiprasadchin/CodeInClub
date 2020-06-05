read -p "Enter the number : " number
function prime {
	num=$1
	c=0
	for((i=1;i<=$num;i++))
	do
		if [ $[$num%$i] -eq 0 ]
		then
			let c++
		fi
	done
	if [ $c -eq 2 ]
	then
		echo "the number $num is prime"
		return 1
	else
		return 0
	fi

}
prime $number
primeNumber=$?
echo $primeNumber

function palindrom {
	palindromNum=$1
	sum=0
	while [ $palindromNum -ne 0 ]
	do
		let reminder=$palindromNum%10
		let sum=$reminder+10*$sum
		let palindromNum=$palindromNum/10

	done
	echo "$sum"
	return $sum
	

}

palindrom $number
#pali=$?
#echo $pali
prime $pali
paliprime=$?

echo $palindrom

if [ $primeNumber -eq 1 -a $paliprime -eq 1 ]
then
	echo "palindrom of $number is also prime"
	exit 0
elif [ $primeNumber == 0 -a $paliprime == 1 ]
then
	#echo "the number $pali is  prime"
        echo "palindrom of $number is  prime"
	exit 0 
elif [ $paliprime ]
then
	echo "the number $pali is not prime"
	echo "palindrom of $number is not  prime"
	exit 0
fi

