#!/bin/bash -x

echo "UNTIL EITHER HEAD OR TAIL WINS 21 TIMES"

#variables
h=0
t=0

function rematch(){
while [ $h -lt 21 ] && [ $t -lt 21 ]
do
      flip=$((RANDOM%2))

   if [ $flip -eq 1 ]
      then ((h++))
      echo Heads=$(($h+1))
      else ((t++))
      echo Tails=$(($t+1))
   fi

done
}

while [ $h -lt 21 ] && [ $t -lt 21 ]
do
		flip=$((RANDOM%2))

	if [ $flip -eq 1 ]
		then ((h++))
		echo Heads=$(($h+1))
		else ((t++))
		echo Tails=$(($t+1))
	fi

done


if [ $h -eq $t ]
then rematch
	echo "ITS A TIE."
elif [ $h -gt $t ]
then i=$(($h-$t))
	echo HEAD WON BY $i POINTS.
else j=$(($t-$h))
	echo TAIL WON BY $j POINTS.
fi


