#!/bin/bash
arr=(tea coffee milk juice soda) 
echo ${arr[*]}
unset 'arr'
echo ${arr[*]}
echo ${#arr[*]}        






