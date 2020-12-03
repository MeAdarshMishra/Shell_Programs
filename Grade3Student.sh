echo -n "Enter the first subject marks: "
read m1
echo -n "Enter the Second subject marks: "
read m2
echo -n "Enter the Third subject marks: "
read m3
sum=`expr $m1 + $m2 + $m3`
avg=`expr $sum / 3 `
if [ $avg -gt 80 ]
then
echo -n "First divison"
elif [ $avg -gt 60 ]
then
echo -n "Second divison"
elif [ $avg -gt 40 ]
then
echo -n "Third divison"
else 
echo -n "Student Fail"
fi