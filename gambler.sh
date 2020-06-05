#! /bin/bash -x
gamblerRs=100
bet=0
won=0
while [ $gamblerRs -ne 0 -a $gamblerRs -ne 200 ]
do
	let bet++
	result=$(( RANDOM%2 ))
	if [ $result -eq 1 ]
	then
		let won++
		gamblerRs=$(($gamblerRs+1))
	else
		gamblerRs=$(($gamblerRs-1))
	fi
done
echo "number of bets are : $bet"
echo "number of won are  : $won"

