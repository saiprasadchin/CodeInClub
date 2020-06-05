echo "4.Write a program that reads 5 random 2 digit values then prints sum and average"
sumOfTwoDigit=0
function twoDigitValues(){
for i in 1 2 3 4 5
do
twoDigitValue=$((((RANDOM%89))+10))
sumOfTwoDigit=$(($sumOfTwoDigit+$twoDigitValue))
done
}
twoDigitValues
#averageTwoDigitValue=$(($sumOfTwoDigit/5))
perl -e "printf(' %.2f', $sumOfTwoDigit/5)"
echo
echo
echo
