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

k=0
ar[k++]=$ttt
ar[k++]=$tth
ar[k++]=$tht
ar[k++]=$thh
ar[k++]=$hhh
ar[k++]=$hht
ar[k++]=$hth
ar[k++]=$htt


for((i=0;i<7;i++))
do

for((j=$(($i+1));j<8;j++))
do

if [ ${ar[i]} -gt ${ar[j]} ];then
temp=${ar[i]}
ar[$i]=${ar[j]}
ar[$j]=$temp
fi
done
done
echo ${ar[@]}
echo "the winning combination of triplet is ${ar[7]}"


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

dr1[hh]=$hh
dr1[tt]=$tt
dr1[ht]=$ht
dr1[th]=$th

echo ${dr1[@]}

prhh=`echo $hh $totalflip | awk '{a=$1/$2*100} {print a}'`
prtt=`echo $tt $totalflip | awk '{a=$1/$2*100} {print a}'`
prht=`echo $ht $totalflip | awk '{a=$1/$2*100} {print a}'`
prth=`echo $th $totalflip | awk '{a=$1/$2*100} {print a}'`

echo "percentage of hh combination is $prhh"
echo "percentage of tt combination is $prtt"
echo "percentage of ht combination is $prht"
echo "percentage of th combination is $prth"

a=0

ar1[a++]=$hh
ar1[a++]=$tt
ar1[a++]=$ht
ar1[a++]=$th

for((i=0;i<3;i++))
do

for((j=$(($i+1));j<4;j++))
do
if [ ${ar1[i]} -gt ${ar1[j]} ];then
temp1=${ar1[i]}
ar1[$i]=${ar1[j]}
ar1[$j]=$temp1
fi
done
done
echo "${ar1[@]}"
echo "wining combination is ${ar1[3]}"


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

dr2[head]=$hcount
dr2[tail]=$tcount

echo "${dr2[@]}"

headpr=`echo $hcount $totalflip | awk '{a=$1/$2*100} {print a}'`
echo "head percentage $headpr %"

tailpr=`echo $tcount $totalflip | awk '{b=$1/$2*100} {print b}'`
echo "tail percentage $tailpr %"

b=0
ar2[b++]=$hcount
ar2[b++]=$tcount


for((i=0;i<=0;i++))
do

for((j=$(($i+1));j<1;j++))
do
if [ ${ar2[i]} -gt ${ar2[j]} ];then
temp2=${ar2[i]}
ar2[$i]=${ar2[j]}
ar2[$j]=$temp2
fi
done
done
echo "${ar2[@]}"
echo "wining combination is ${ar2[1]}"




























