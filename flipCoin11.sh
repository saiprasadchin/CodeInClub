#!/bin/bash -x
#using while loops

echo "3.Flip coin till either head or tail wins 11 times"
countOfHead=0
countOfTail=0
while [[ $countOfHead != 11  && $countOfTail != 11 ]]
do
        output=$((RANDOM % 2))
        if [[ $output == 1 ]];
        then
                let "countOfHead+=1"
        else
                let "countOfTail+=1"
        fi

done
echo "   The count of Head is :" $countOfHead
echo "   The count of Tail is :" $countOfTail
