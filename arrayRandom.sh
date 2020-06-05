#! /bin/bash -x

for((i=1;i<=10;i++)){
	digitRandom=$(( RANDOM%899 + 100 ))
	array[($i)]=$digitRandom
	
}
MAX=${array[1]}
MIN=${array[1]}

for((i=2;i<=10;i++)){
        
	if [ ${array[$i]} -gt $MAX ]
	then
		secondMax=$MAX
		MAX=${array[$i]}
	fi

	if [ ${array[$i]} -lt $MIN ]
	then
		secondMin=$MIN
		MIN=${array[$i]}
	fi


}


echo "${array[@]}"
echo "second max : $secondMax"
echo "second min : $secondMin"
