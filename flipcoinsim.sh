#!/bin/bash -x

#variables
isHeads=1
isTails=0

if [ $((RANDOM%2)) -eq $isHeads ]
	then
	echo	"Its Heads"
	else
	echo	"Its Tails"
fi
