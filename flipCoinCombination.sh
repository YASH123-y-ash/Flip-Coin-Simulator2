#!/bin/bash -x
hcount=0
tcount=0
totalflip=200
for((i=1;i<=$totalflip;i++))
do
flip=$((RANDOM%2))
if [ $flip -eq 1 ];then
let hcount++
else
let tcount++
fi
done

declare -A dr

dr[head]=$hcount
dr[tail]=$tcount

echo "${dr[@]}"

headpr=`echo $hcount $totalflip | awk '{a=$1/$2*100} {print a}'`
echo "head percentage $headpr %"

tailpr=`echo $tcount $totalflip | awk '{b=$1/$2*100} {print b}'`
echo "tail percentage $tailpr %"
