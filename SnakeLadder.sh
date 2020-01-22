#!/bin/bash 
position=0
i=0
snake1=6
snake2=3
snake3=8
while [[ $position -lt 100 ]]
do
	if [[ position -le 0 ]]
	then
		position=0
	fi
	diceCheck=$((RANDOM%7))
	if [[ $diceCheck -eq $snake1 ]]
	then
		position=$(( position-snake ))
		echo "Down With Snake 1, Position got down by"$snake1
	elif [[ $diceCheck -eq $snake2 ]]
	then
		position=$(( position-snake2 ))
      echo "Down With Snake 2, Position got down by"$snake2
	elif [[ $diceCheck -eq $snake3 ]]
	then
		position=$(( position-snake3 ))
      echo "Down With Snake 3, Position got down by"$snake3
	elif [[ $position -gt $snake1 ]]
	then
		snake1=$(( RANDOM%position*2 ))
		snake2=$(( RANDOM%position*2 ))
		snake3=$(( RANDOM%position*2 ))
	else
		position=$(( position+diceCheck ))
		if [[ $position -gt 100 ]]
		then 
			position=100
		fi
		echo "Position Incremented, Now Position is "$position
	fi
done
if [[ $position -ge 100 ]]
then 
	echo "Player Won"
else
	echo "Player Loose"
fi
