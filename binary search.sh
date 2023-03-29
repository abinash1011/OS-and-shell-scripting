#!/bin/bash
echo "enter how many numbers? "
read n
echo "enter the elements in increasing order "
i=1
while [ $i -le $n ]
do
	echo " enter an element "
	read num
	eval a$i=$num
	i=`expr $i+1|bc`
done
echo "enter the element you want search "
read key
beg=1 end=$n mid=`expr \($beg+$end\)/2|bc`
eval temp=\$a$mid
while [ $beg -le $end ]
do
	if [ $temp -eq $key ]
	then break
	fi
	if [ $key -gt $temp ]
	then beg=`expr $mid+1|bc`
	else
	if [ $key -lt $temp ]
	then end=`expr $mid-1|bc`
	fi
	fi
	mid=`expr \($beg+$end\)/2|bc`
	eval temp=\$a$mid
done
if [ $key -eq $temp ]
then echo " number is found in $mid "
else
echo " number is not found "
fi




