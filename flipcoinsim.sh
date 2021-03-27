#!/bin/bash -x

echo ENTER NUMBER OF TIMES YOU WANT TO FLIP A COIN::
read n

#variables
h=0
t=0

while [ $h -le $n ] && [ $t -le $n ]
do
		flip=$((RANDOM%2))

	if [ $flip -eq 1 ]
		then ((h++))
		echo Heads
				Heads=$(($h+1))
		else ((t++))
		echo Tails
				Tails=$(($t+1))
	fi
done

if [ $Heads -gt $Tails ]
then
echo HEAD WINS.
else
echo TAIL WINS.
fi
