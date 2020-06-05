echo "8.Year is leap year or not"
function leapYear(){
leapYear=0
isleap="false"
echo -n " Enter year (yyyy) : "
read leapYear
if [ $((leapYear % 4)) -ne 0 ] ; then
: # not a leap year : means do nothing and use old value of isleap
elif [ $((leapYear % 400)) -eq 0 ] ; then
isleap="true"

elif [ $((leapYear % 100)) -eq 0 ] ; then
: # not a leap year do nothing and use old value of isleap
else
isleap="true"
fi
if [ "$isleap" == "true" ];
then
