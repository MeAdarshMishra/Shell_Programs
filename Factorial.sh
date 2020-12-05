echo -n "Enter a number to find Factorial of that number:"
read n
a=1
while  [ $n -gt 1 ]
do
a=$(expr $n \* $a)
n=$(expr $n - 1)
done
echo $a
