#!/bin/sh

>temp.txt
func(){
    ./run.sh buble_sort.swift $1
    buble_result=`cat tmp.txt`
    ./run.sh merge_sort.swift $1
    merge_result=`cat tmp.txt`
    echo "$1 $buble_result $merge_result" >>temp.txt
}

echo "---------------------START-----------------------"
func $1

echo "-------------------------------------------------"
func $2

echo "-------------------------------------------------"
func $3

awk 'BEGIN{ OFS=","; print "numbers,buble_sort,merge_sort"};
NR > 0{print $1,$2,$3}' temp.txt > Output.csv

echo "---------------------END-------------------------"

rm temp.txt
rm tmp.txt
soffice -o Output.csv

