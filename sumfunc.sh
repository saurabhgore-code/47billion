#!/bin/bash
echo "enter the first num"
read a
echo "enter the second num"
read b
while [[ $a -gt 10 || $b -gt 10 ]]
do
sum=$(($a + $b))
echo "$sum"
done

