echo "2.Use random number to get Dice between 1 and 6"
function Dice(){
echo " " $1 "number on dice"
}
rollDice=$((((RANDOM%6))+1))
Dice $rollDice
echo
echo
