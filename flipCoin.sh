echo "9.Coin flip program"
function coinFlip(){
coinIsFlipped=$((RANDOM%2))
Head=1
Tail=0
if [[ $coinIsFlipped -eq 1 ]]
then
echo " Head"
else
echo " Tail"
fi
}
coinFlip
echo
echo
