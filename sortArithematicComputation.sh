#!/bin/bash -x

declare -A resultInDict
counter=0

read -p "Enter the value of a: " a
read -p "Enter the value of b: " b
read -p "Enter the value of c: " c

result=`awk "BEGIN {print $a + ( $b * $c)}"`
echo "a+b*c="$result
resultInDict[a+b*c]=$result

result2=`awk "BEGIN {print ($a * $b) + $c}"`
echo "a*b+c="$result2
resultInDict[a*b+c]=$result2

result3=`awk "BEGIN {print $c + ($a / $b)}"`
echo "c+a/b="$result3
resultInDict[c+a/b]=$result3

result4=`awk "BEGIN {print ($a % $b) + $c}"`
echo "a%b+c="$result4
resultInDict[a%b+c]=$result4

echo "Results in dictionary:"

for i in "${!resultInDict[@]}"
do
	echo "$i=${resultInDict[$i]}"
done

for i in "${resultInDict[@]}"
do
	array[((counter++))]=$i
done

echo "Array of values from the dictionary: "${array[@]}
