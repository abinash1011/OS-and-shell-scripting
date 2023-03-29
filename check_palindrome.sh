echo -n "enter the name :-"
read name
len=`echo -n $name | wc -c`
echo "length of the name is :-"$len
while [ $len -gt 0 ]
do
rev=$rev`echo $name | cut -c$len`
len=`expr $len - 1`
done
echo "reverse of the name is :-"$rev
if [ $name = $rev ]
then echo "it is a palindrome"
else
echo "it is not a palindrome"
fi