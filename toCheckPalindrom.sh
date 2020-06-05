#2)Write a function to check if the two numbers are palindromes
read -p "Enter the first number  : " first
read -p "Enter the second number : " second
function palindrom {
        palindromNum=$1
        sum=0
        while [ $palindromNum -ne 0 ]
        do
                let reminder=$palindromNum%10
                let sum=$reminder+10*$sum
                let palindromNum=$palindromNum/10

        done
       # return $sum
	if [ $1 -eq $sum ]
	then
		return 1
	else
		return 0
	fi

}

palindrom $first
first1=$?

palindrom $second
second2=$?

if [ $first1 -eq 1 -a $second2 -eq 1 ]
then
	echo "two numbers are palindrom"
else
	echo "two numbers are not palindrom"
fi
