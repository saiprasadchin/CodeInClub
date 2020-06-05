#! /bin/bash -x

for((i=1;i<=10;i++)){
        digitRandom=$(( RANDOM%899 + 100 ))
        array[($i)]=$digitRandom

}
echo "${array[@]}"

for((i=1;i<=10;i++)){
	
	let k=10-$i-1
	echo $k
	for((j=1;j<=$k;j++)){
	let n=$j+1
        if [ ${array[$i]} > ${array[$n]} ]
        then
                temp=${array[$i]}
		array[$i]=${array[$j]}
		array[$j]=${array[$i]}
        fi


	}


}


echo "${array[@]}"

