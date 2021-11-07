#!/bin/bash

numHeads=0
numTails=0

while (( $numHeads<21 && $numTails<21 ))
do
	if (( $((RANDOM%2))==1 ))
	then
		numHeads=$((numHeads+1))
	else
		numTails=$((numTails+1))
	fi
done

echo "Number of times Heads won is $numHeads"
echo "Number of times Tails won is $numTails"

if (( $numHeads>$numTails ))
then
		echo "Heads won by $((numHeads-numTails))"
else
		echo "Tails won by $((numTails-numHeads))"
fi
