#!/bin/bash -x
echo "Computing different Arithmetic Expressions"
#!/bin/bash -x
read -p "enter a value:" a
read -p "enter b value:" b
read -p "enter c value:" c
op1=$(($a+$b*$c))
op2=$(($a*$b+$c))

