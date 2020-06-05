echo "12.Read a Number 1,10,100,1000, etc and display unit,ten,hundred..."
function unittens(){
read -p " Enter the Number : " number
if [ $number = 1 ]
then
echo " Unit"
elif [ $number = 10 ]
then
echo " Ten"
elif [ $number = 100 ]
then
echo " Hundred"
elif [ $number = 1000 ]
then
echo " Thousand"
elif [ $number = 10000 ]

then
echo " Ten Thousand"
else
echo " Out of range"
fi
}
unittens
echo
echo
