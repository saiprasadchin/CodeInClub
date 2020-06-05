function caseWord(){
num=$1
case $num in
0 )
echo " Zero" ;;
1 )
echo " One" ;;
2 )
echo " Two" ;;
3 )
echo " Three" ;;
4 )
echo " Four" ;;
5 )
echo " Five" ;;
6 )
echo " Six" ;;
7 )
echo " Seven" ;;
8 )
echo " Eight" ;;
9 )
echo " Nine" ;;
* )
echo " Please enter a digit from 0 to 9" ;;

esac
}
read -p " Enter the Number : " Number
caseWord $Number
echo
echo
