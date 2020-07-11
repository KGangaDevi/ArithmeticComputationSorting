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
dict[((i))]=$(("op"$i))
done
echo ${dict[@]}
