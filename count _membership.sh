#!/bin/bash
#shell script to count occurrence of a particular digit in inputted number
echo -n "enter any number:-"
read number
echo -n "which digit number do u want to count:-"
read digit
len=`echo -n $number |wc -c`
echo "the length of number is:-$len"
count=0
while test $len -gt 0
do
flag=`echo -n $number |cut -c $len`
if test $flag -eq $digit
then
count=`expr $count + 1`
fi
len=`expr $len - 1`
done
echo "|$digit| occured |$count| times in number ($number)"