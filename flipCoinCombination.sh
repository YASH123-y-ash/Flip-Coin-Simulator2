#!/bin/bash -x
totalflip=200
hh=0
tt=0
ht=0
th=0
for((i=1;i<=$totalflip;i++))
do
coin1flip=$((RANDOM%2))
coin2flip=$((RANDOM%2))

if [ $coin1flip -eq 1 ] && [ $coin2flip -eq 1 ]
then
let hh++

elif [ $coin1flip -eq 0 ] && [ $coin2flip -eq 0 ]
then
let tt++

elif [ $coin1flip -eq 1 ] && [ $coin2flip -eq 0 ]
then
let ht++

elif [ $coin1flip -eq 0 ] && [ $coin2flip -eq 1 ]
then
let th++

fi
done

declare -A dr

dr[hh]=$hh
dr[tt]=$tt
dr[ht]=$ht
dr[th]=$th

echo ${dr[@]}

prhh=`echo $hh $totalflip | awk '{a=$1/$2*100} {print a}'`
prtt=`echo $tt $totalflip | awk '{a=$1/$2*100} {print a}'`
prht=`echo $ht $totalflip | awk '{a=$1/$2*100} {print a}'`
prth=`echo $th $totalflip | awk '{a=$1/$2*100} {print a}'`

echo "percentage of hh combination is $prhh"
echo "percentage of tt combination is $prtt"
echo "percentage of ht combination is $prht"
echo "percentage of th combination is $prth"

















