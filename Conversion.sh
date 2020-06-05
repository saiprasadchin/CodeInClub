echo "5.Unit Conversion"
echo " 1ft = 12 in then 42 in = ?ft"
oneFeet=12
inchGiven=42
rectLength=60
rectBreadth=40
meterSquare=10
function Conversion(){
perl -e "printf(' 42 inches in feet %.2f', $inchGiven/$oneFeet)"
echo
echo " Rectangular Plot of 60 feet x 40 feet in meters"
perl -e "printf(' Meters Square %.2f', $((($rectLength * $rectBreadth)/$meterSquare)))"
areaInAcre=$(((($rectLength * $rectBreadth)/$meterSquare)))
echo
echo " Calculate area of 25 such plots in acres"
perl -e "printf(' Area of 25 such plots in acres is %.2f', $areaInAcre*25 )"
}
Conversion
echo
echo
echo
