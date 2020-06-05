#! /bin/bash -x
read -p "Enter the number : " n
fact=1
for((i=1;i<=n;i++))
do
	let fact=$fact*$i
done
echo "factorial of $n is : $fact"
