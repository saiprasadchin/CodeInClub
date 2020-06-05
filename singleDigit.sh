echo "1. Print single digit number"
function Digit(){
echo " " $1 "single digit."
}
singleDigit=$((((RANDOM%9))+1))
Digit $singleDigit
echo
echo
