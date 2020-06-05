declare -A arr

arr[7]="HHH"
arr[8]="HHT"
arr[9]="HTH"
arr[10]="HTT"
arr[11]="THH"
arr[12]="THT"
arr[13]="TTH"
arr[14]="TTT"
for((i=0;i<40;i++)){

        coinA=$((RANDOM%2))
        coinB=$((RANDOM%2))
	coinC=$((RANDOM%2))
        if [ $coinA -eq '1' -a $coinB -eq '1' -a $coinC -eq '1' ]
        then
                let HHH++
        elif [ $coinA -eq '1' -a $coinB -eq '1' -a $coinC -eq '0' ]
        then
                let HHT++

	elif [ $coinA -eq '1' -a $coinB -eq '0' -a $coinC -eq '1' ]
        then
                let HTH++

	elif [ $coinA -eq '1' -a $coinB -eq '0' -a $coinC -eq '0' ]
        then
                let HTT++

	elif [ $coinA -eq '0' -a $coinB -eq '1' -a $coinC -eq '1' ]
        then
                let THH++

	elif [ $coinA -eq '0' -a $coinB -eq '1' -a $coinC -eq '0' ]
        then
                let THT++

	elif [ $coinA -eq '0' -a $coinB -eq '0' -a $coinC -eq '1' ]
        then
                let TTH++

	elif [ $coinA -eq '0' -a $coinB -eq '0' -a $coinC -eq '0' ]
        then
	        let TTT++

	fi
}
#echo "AFTER"
for key in ${!arr[@]}
do
        echo " $key      ${arr[$key]}   $((${arr[$key]}))  "
done
