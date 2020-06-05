function weekDays(){
read -p " Enter the day number : " day
if [ $day = 1 ]
then
echo " sunday"
elif [ $day = 2 ]
then

echo " monday"
elif [ $day = 3 ]
then
echo " tuesday"
elif [ $day = 4 ]
then
echo " wednesday"
elif [ $day = 5 ]
then
echo " Thursday"
elif [ $day = 6 ]
then
echo " friday"
elif [ $day = 7 ]
then
echo " saturday"
else
echo " please enter a digit from 1 to 7 only"
fi
}
weekDays
echo
echo


