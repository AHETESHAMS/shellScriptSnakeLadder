#!/bin/bash -x
playerTurn=0
player1Position=0
player2Position=0
pythonSnake1=6
pythonSnake2=9
pythonSnake3=36
cobraSnake1=17
cobraSnake2=89
anacondaSnake1=25
anacondaSnake2=42
anacondaSnake3=77
anacondaSnake4=99
while [[ $player1Position -lt 100 && $player2Position -lt 100 ]]
do
	randonCheck=$((RANDOM%7))
	if  [[ $playerTurn -eq 0 ]]
	then
		player1Position=$(( player1Position+randonCheck ))
		if [[ $player1Position  -eq $pythonSnake1 || $player1Position  -eq $pythonSnake2 || $player1Position  -eq $pythonSnake3 ]]
		then
			player1Position=$(( player1Position-pythonSnake1*2 ))
		elif [[ $player1Position -eq $cobraSnake1 || $player1Position -eq $cobraSnake2 ]]
		then
			 player1Position=$(( player1Position-pythonSnake1*2 ))
		elif [[ $player1Position -eq $anacondaSnake1 || $player1Position -eq $anacondaSnake2 || $player1Position -eq $anacondaSnake3 ||$player1Position -eq $anacondaSnake4 ]]
		then
			player1Position=0
		fi
		if [[ $player1Position -lt 0 ]]
		then
			player1Position=0
		elif [[ $player1Position -gt 100 ]]
		then
			player1Position=100
		fi
		playerTurn=1
	else
		player2Position=$(( player2Position+randonCheck ))
		if [[ $playe2Position  -eq $pythonSnake1 || $player2Position  -eq $pythonSnake2 || $player2Position  -eq $pythonSnake3 ]]
      	then
         	player2Position=$(( player2Position-pythonSnake1*2 ))
      elif [[ $player2Position -eq $cobraSnake1 || $player2Position -eq $cobraSnake2 ]]
      	then
         	 player2Position=$(( player2Position-pythonSnake1*2 ))
      elif [[ $player2Position -eq $anacondaSnake1 || $player2Position -eq $anacondaSnake2 || $player2Position -eq $anacondaSnake3 ||$player2Position -eq $anacondaSnake4 ]]
      	then
         	player2Position=0
      fi
      if [[ $player2Position -lt 0 ]]
      then
         player2Position=0
      elif [[ $player2Position -gt 100 ]]
      then
         player2Position=100
      fi

		playerTurn=0
	fi
(( i++ ))
done
if [[ $player1Position -gt $player2Position ]]
then
	echo "Player 1 Won"
elif [[ $player2Position -gt $player1Position ]]
then
	echo "Player 2 Won"
fi

