#!/bin/bash

echo "Enter the first integer:"
read int1
echo "Enter the second integer:"
read int2
echo "Enter the third integer:"
read int3
echo "Enter the fourth integer:"
read int4

sum=$((int1 + int2 + int3 + int4))


average=$(echo "scale=2; $sum / 4" | bc)


product=$((int1 * int2 * int3 * int4))


echo "The sum of the four integers is: $sum"
echo "The average of the four integers is: $average"
echo "The product of the four integers is: $product"

