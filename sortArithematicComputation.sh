#!/bin/bash -x

read -p "Enter the value of a: " a
read -p "Enter the value of b: " b
read -p "Enter the value of c: " c

result=`awk "BEGIN {print $a + ( $b * $c)}"`
echo "a+b*c="$result

result2=`awk "BEGIN {print ($a * $b) + $c}"`
echo "a*b+c="$result2

result3=`awk "BEGIN {print $c + ($a / $b)}"`
echo "c+a/b="$result3

result4=`awk "BEGIN {print ($a % $b) + $c}"`
echo "a%b+c="$result4
