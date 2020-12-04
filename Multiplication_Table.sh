echo "Enter the number for table:"
read n
a=1
while [ $a -lt 11 ]
do
k=$(expr $n \* $a)
echo "$n * $a = $k"
a=$(expr $a + 1)
done
