#!/bin/bash

echo "Enter the first variable:"
read var1
echo "Enter the second variable:"
read var2

echo "Original values: var1=$var1, var2=$var2"

var1=$((var1 + var2))
var2=$((var1 - var2))
var1=$((var1 - var2))

echo "Exchanged values: var1=$var1, var2=$var2"

