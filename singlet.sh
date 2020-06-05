#!/bin/bash -x

coin=(H T HH TT HT TH HHH HHT HTH HTT THH THT TTH TTT)
count=0
while [[ $count -lt 50 ]];
do
        value=$((RANDOM%14))
        coinValue=${coin[$value]}
        let "$coinValue++"
        let "count+=1"
done

for i in {0..13}
do
        echo "${coin[$i]} : $((${coin[$i]}))"
done
echo
echo
for ((i = 0; i<14; i++))
do
    for ((j = 0; j<14-i-1; j++))
    do
        if [[ ${coin[$j]} -lt ${coin[$(($j+1))]} ]]
        then
            # swap
            temp=${coin[$j]}
            coin[$j]=${coin[$(($j+1))]}
            coin[$(($j+1))]=$temp
        fi
    done
done
echo "After sorting"
for i in {0..13}
do
        echo "${coin[$i]} : $((${coin[$i]}))"
done
echo "Winning combination is"
for i in ${!coin[@]}
do
        echo ${coin[$i]}
        exit
done
