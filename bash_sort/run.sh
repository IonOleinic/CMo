#!/bin/sh

swiftc $1 -o out
#filename='temp.txt'

startdate=$(date +%s%3N)
# date +%s%3N > filename
# while read line;do
# num1=$line
# done < $filename

./out $2

enddate=$(date +%s%3N)

result=$(($enddate-$startdate))
echo "$result miliseconds" 
echo $result >tmp.txt
rm out
