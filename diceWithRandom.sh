echo "3.Add the result of two dice numbers"
function twoDice(){
diceOne=$((((RANDOM%6))+1))
diceTwo=$((((RANDOM%6))+1))
rollTwoDiceResult=$(($diceOne + $diceTwo))
return $rollTwoDiceResult
}
twoDice
echo " " $? "is the total"
echo
echo
