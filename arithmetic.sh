#!/bin/bash -x
echo "Computing different Arithmetic Expressions"
read -p "enter a value:" a
read -p "enter b value:" b
read -p "enter c value:" c
op1=$(($a+$b*$c))
op2=$(($a*$b+$c))
op3=$(($c+$a/$b))
op4=$(($a%$b+$c))
for((i=1;i<=4;i++))
do
arr[((i))]=$(("op"$i))
done
echo ${arr[@]}
for ((i = 1; i<=5; i++)) 
do
    for((j = 1; j<=5-i-1; j++)) 
    do
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ] 
     	  then
            # swap 
            temp=${arr[j]} 
            arr[$j]=${arr[$((j+1))]}   
            arr[$((j+1))]=$temp 
        fi
    done
done
echo "Sorted Array Ascending order"
echo ${arr[@]}

