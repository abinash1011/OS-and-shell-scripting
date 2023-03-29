#!/bin/bash
#shell script to generate fibonacci series
echo "how many fibonacci numbers do u want "
read limit
a=0
b=1
d=1
echo "-------------------------------------------------------------"
echo -n $a
echo -n " "
while test $d -le $limit
do
c=`expr ${a} + ${b}`
echo -n $c
echo -n " "
b=$a
a=$c
d=`expr $d + 1`
done