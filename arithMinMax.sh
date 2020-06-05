echo "13.Enter 3 numbers do following arithmetic operation and find one that is maximum and
minimum. "
function Arithmetic(){
read -p " Enter the value of a : " a
read -p " Enter the value of b : " b
read -p " Enter the value of c : " c
echo " " $(expr $a + $b \* $c )
echo " " $(expr $a % $b + $c )
echo " " $(expr $c + $a / $b )
echo " " $(expr $a \* $b + $c )
Exp_1=$(( $a + $b * $c ))
Exp_2=$(( $a % $b + $c ))
Exp_3=$(( $c + $a / $b ))
Exp_4=$(( $a * $b + $c ))
if [ $Exp_4 -gt $Exp_2 -a $Exp_4 -gt $Exp_3 -a $Exp_4 -gt $Exp_1 ]; then
echo " The maximum is : Expression 4"
elif [ $Exp_1 -gt $Exp_2 -a $Exp_1 -gt $Exp_3 ]; then
echo " The maximum is : Expression 1"
elif [ $Exp_2 -gt $Exp_3 ]; then
echo " The maximum : Expression 2"
else
echo " The maximum : Expression 3"
fi
if [ $Exp_4 -lt $Exp_2 -a $Exp_4 -lt $Exp_3 -a $Exp_4 -lt $Exp_1 ]; then
echo " The minimam is : Expression 4"
elif [ $Exp_1 -lt $Exp_2 -a $Exp_1 -lt $Exp_3 ]; then
echo " The minimam is : Expression 1"
elif [ $Exp_2 -lt $Exp_3 ]; then
echo " The minimum is : Expression 2"

else
echo " the minimum is : Expression 3"
fi
