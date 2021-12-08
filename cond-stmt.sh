#!/bin/bash

echo "enter the number for quantity"
read num
if [ "$num" -gt 200 ]
then
echo "Eligible for 20% discount"
elif [[ "$num" -eq 100 || "$num" -eq 200 ]]
then
echo "Lucky Draw Winner"
echo "Eligible to get the item for free"

elif [[ "$num" -gt 100 && "$num" -lt 200 ]]
then
echo "Eligible for 10% discount"

elif [ "$num" -lt 100 ] 
then
echo "No discount"
fi

#!/bin/bash
echo "enter the first number"
read num1
echo "enter the second number"
read num2
if [[ "$num1" -gt 10 && "$num2" -gt 10 ]]
then
 sum=$(($num1 + $num2))
 echo "$sum"

elif [[ "$num1" -gt 10 && "$num2" -lt 20 ]]
then
	prod=$(($num1 * $num2))


echo "$prod"

else

echo "bad input"

fi
 
