#!/bin/bash
#Intro Page/Line
echo "=====	T H E   W I T C H E R   I I I	====="
echo "Created by Layomi"
health="10"

#Start
echo "Enter s to start or x to exit..."
read prompt

#condition
if [[ $prompt == "s" ]]; then
	echo "In the land of Atmora..."
else
	echo "Lol you thought you could leave?"
fi

echo "You have $health Health"

#First boss
echo "You hear wings in the distance..."
sleep 2
echo "=====	THE ROYAL GRIFFIN	====="
sleep 2
echo "Pick a number between 0 and 1"
read attac
sleep 2

#win or lose
if [[ $attac == "$(($RANDOM % 2))" ]]; then
	echo "You Defeated the Royal Griffin and gained 2 health"
	health="$(( $health + 2 ))"
else
	echo "It sank it's talons into your shoulder, you are injured and lost 4 health"
	health="$(( $health - 4 ))"
fi

#Current Hp
echo "You currently have $health Health"

#Second boss
echo "ARH-WOOOOOOOOOOOOOOOOOOOO"
sleep 2
echo "=====	T H E   K I N G   O F   W O L V E S	====="
sleep 2
echo "Enter a number (0 / 1)"
read attac
sleep 2

#Win or lose
if [[ $attac == "$(( $RANDOM % 2))" ]]; then
	echo "You defeated The King Of Wolves and gained 2 health"
	health="$(( $health + 2 ))"
else
	echo "You were torn limb from limb and lost 4 health"
	health="$(( $health - 4 ))"
fi

#Current Hp
echo "You currently have $health Health"

#Final boss
echo "= = = = =		G R E G O I R E  D E  G O R G O N	 = = = = ="
sleep 1
echo "choose a weapon D for Dual Katanas, G for Golden Greatsword, S for Staff of Eredin"
read weapon

#Weapon Choices
if [[ $weapon == "D" ]]; then
	echo "You hold both katanas, and take a defensive stance"
elif [[ $weapon == "G" ]]; then
	echo "You wrap both hands on the hilt of your sword... tightly..."
elif [[ $weapon == "S" ]]; then
	echo "Your staff materializes as you strech forth your left hand"
else
	echo "You grab some rocks off the floor"
fi

#Battle odds 
echo "Choose a number between 0 and 4 (0 / 4)"
read attac
sleep 2

if [[ $attac == "$(( $RANDOM % 5))" ]]; then
	echo "Gregoire de Gorgon falls to his knee, you Rip off his helmet, then his head"
	health="$(( $health + 2 ))"
else
	echo "Youre hit by the force of his swords, Gorgon uses his weight on the greatsword, decimating you"
	health="$(( $health - 8 ))"
fi

#end Health
echo "You finished with $health Health"
if [[ $health == 0 ]]; then
	echo "You died bozo"
else
	echo "Still got the moves"
fi
