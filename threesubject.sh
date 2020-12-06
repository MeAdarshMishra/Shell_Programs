echo "Enter the No. of Student"
read num_Std
num=$num_Std
i=1
count=0
while [ $i -le $num_Std ]
do
echo "Enter the student$i name only single char"
read Std[$i]
echo "Enter the Marks(0 - 100) Of English"
read eng[$i]
echo "Enter the marks(0 - 100) of Math"
read Math[$i]
echo "Enter the mark(0 - 100) of Science"
read Sci[$i]
i=`expr $i + 1`
done
echo "Student Mark's Details"
for ((k=1;k<=${#Std[@]};k++))
do
echo "Std ${Std[k]}" "Eng ${eng[k]}" "Mat ${Math[k]}" "Sci ${Sci[k]}"
done
echo "Final Result"
for ((j=1;j<=$num;j++))
do
if [ ${eng[$j]} -ge 50 ]
then
count=`expr $count + 1`
fi
if [ ${Math[$j]} -ge 50 ]
then
count=`expr $count + 1`
fi
if [ ${Sci[$j]} -ge 50 ]
then
count=`expr $count + 1`
fi
if [ $count == 3 ]
then
echo "Student $j is Pass in All"
else
echo "Student $j is Fail"
fi
count=0
done
