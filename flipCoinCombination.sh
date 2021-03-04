#!/bin/bash
totalflip=51
ttt=0
tth=0
tht=0
thh=0
hhh=0
hht=0
hth=0
htt=0
for((i=1;i<=$totalflip;i++))
do
coin1flip=$((RANDOM%2))
coin2flip=$((RANDOM%2))
coin3flip=$((RANDOM%2))
if [ $coin1flip -eq 0 ] && [ $coin2flip -eq 0 ] && [ $coin3flip -eq 0 ]
then
let ttt++

elif [ $coin1flip -eq 0 ] && [ $coin2flip -eq 0 ] && [ $coin3flip -eq 1 ]
then
let tth++

elif [ $coin1flip -eq 0 ] && [ $coin2flip -eq 1 ] && [ $coin3flip -eq 0 ]
then
let tht++

elif [ $coin1flip -eq 0 ] && [ $coin2flip -eq 1 ] && [ $coin3flip -eq 1 ]
then
let thh++

elif [ $coin1flip -eq 1 ] && [ $coin2flip -eq 1 ] && [ $coin3flip -eq 1 ]
then
let hhh++

elif [ $coin1flip -eq 1 ] && [ $coin2flip -eq 1 ] && [ $coin3flip -eq 0 ]
then
let hht++

elif [ $coin1flip -eq 1 ] && [ $coin2flip -eq 0 ] && [ $coin3flip -eq 1 ]
then
let hth++

elif [ $coin1flip -eq 1 ] && [ $coin2flip -eq 0 ] && [ $coin3flip -eq 0 ]
then
let htt++


fi
done

declare -A dr

dr[ttt]=$ttt
dr[tth]=$tth
dr[tht]=$tht
dr[thh]=$thh
dr[hhh]=$hhh
dr[hht]=$hht
dr[hth]=$hth
dr[htt]=$htt



echo ${dr[@]}

prttt=`echo $ttt $totalflip | awk '{a=$1/$2*100} {print a}'`
prtth=`echo $tth $totalflip | awk '{a=$1/$2*100} {print a}'`
prtht=`echo $tht $totalflip | awk '{a=$1/$2*100} {print a}'`
prthh=`echo $thh $totalflip | awk '{a=$1/$2*100} {print a}'`

prhhh=`echo $hhh $totalflip | awk '{a=$1/$2*100} {print a}'`
prhht=`echo $hht $totalflip | awk '{a=$1/$2*100} {print a}'`
prhth=`echo $hth $totalflip | awk '{a=$1/$2*100} {print a}'`
prhtt=`echo $htt $totalflip | awk '{a=$1/$2*100} {print a}'`


echo "percentage of ttt combination is $prttt"
echo "percentage of tth combination is $prtth"
echo "percentage of tht combination is $prtht"
echo "percentage of thh combination is $prthh"

echo "percentage of hhh combination is $prhhh"
echo "percentage of hht combination is $prhht"
echo "percentage of hth combination is $prhth"
echo "percentage of htt combination is $prhtt"

















