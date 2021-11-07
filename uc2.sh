#!/bin/bash

loop_times=$((RANDOM%1000))
numHeads=0
numTails=0

while (( $((numHeads+numTails))<=$loop_times ))
do
	if (( $((RANDOM%2))==1 ))
	then
		numHeads=$((numHeads+1))
	else
		numTails=$((numTails+1))
	fi
done

echo "Number of times coin flipped is $loop_times"
echo "Number of times Heads won is $numHeads"
echo "Number of times Tails won is $numTails"
