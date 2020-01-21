#!/bin/bash -x
position=0
i=0
while [[ $i -lt 10 ]]
do
	diceCheck=$((RANDOM%7))
	echo $diceCheck
	(( i++ ))
done
