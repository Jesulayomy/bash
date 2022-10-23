#!/bin/bash
#Intro Page/Line
echo "=====	T H E   W I T C H E R   I I I	====="
echo "Created by Layomi"
echo " "
echo " "
divider="=========================================================="
echo "$divider"
#Classes, set damage and player type
echo "Choose your Class, Magician or Swordsman (Enter M or S)"
read class
if [[ $class == "M" ]]; then
	echo "You have selected Magician"
	health="50"
	damage="60"
	classt="Magician"
elif [[ $class == "S" ]]; then
	echo "You have selected Swordsman"
	health="70"
	damage="40"
	classt="Swordsman"
else
	echo "You did not select a class and will be a Muppet"
	health="50"
	damage="40"
	classt="Muppet"
fi
echo "$divider"
echo " "

#Start
echo "Enter s to start or x to exit..."
read prompt
#condition
if [[ $prompt == "s" ]]; then
	echo "In the land of Atmora..."
elif [[ $prompt == "x" ]]; then
	exit 1
else
	echo "uhh, okay..."
	sleep 1
fi


echo "$divider"
#First boss
echo "You hear wings in the distance..."
sleep 1
#boss loop
bhealth="120"
while [[ $bhealth -ge "10" ]]
do

echo "$health =====	THE ROYAL GRIFFIN	===== $(($bhealth * 50))"
sleep 1
echo "$(whoami) You have $health Health left"
echo "$(whoami), Pick a number between 0 and 1"
read attac
sleep 1
#Battle odds
if [[ ($attac == "$(( $RANDOM % 2 ))") || ( $attac == "yen" ) ]]; then
	echo "You, $(whoami) attacked the Royal Griffin and did $damage Damage"
	health="$(( $health + 10 ))"
	bhealth="$(( $bhealth - $damage ))"
else
	echo "It sank it's talons into your shoulder, you are injured and lost 20 health"
	health="$(( $health - 20 ))"
fi
echo " "
echo "$divider"
if [[ $health -le "0" ]]; then
	exit 1
else
	echo " "
fi

done
#boss loop ends


#Current Hp
echo "$USER You currently have $health Health"

#Second boss
echo "ARH-WOOOOOOOOOOOOOOOOOOOO"
sleep 1
echo "$health =====	T H E   K I N G   O F   W O L V E S	===== 10"
sleep 1
echo "Enter a number (0 / 1)"
read attac
sleep 1
#Battle odds
if [[ $attac == "$(( $RANDOM % 2))" ]]; then
	echo "You defeated The King Of Wolves and gained 10 health"
	health="$(( $health + 10 ))"
else
	echo "You were torn limb from limb and lost 20 health"
	health="$(( $health - 20 ))"
fi
echo " "
echo "$divider"

#Current Hp
echo "You currently have $health Health"
#second prompt
echo "Do you wish to continue? (y / n)"
read prompt

if [[ $prompt == "y" ]]; then
	echo "Well those were easy, goodluck"
elif [[ $prompt == "n" ]]; then
	echo "Ya, run"
	sleep 1
	exit 1
else
	echo "TBH idk what you want, so just go face the boss"
fi
echo " "
echo "$divider"


#Final boss
bhealth="1000"
bdamage="10"


#looping...
while [[ $bhealth -ge "1" ]]
do

echo "$health =====	G R E G O I R E  D E  G O R G O N	 =====$(($bhealth * 1000))"
sleep 1
echo "$(whoami), Choose a weapon: D for Dual Katanas, G for Golden Greatsword, S for Staff of Eredin, W for Witchs broom"
read weapon

#Weapon Choices
if [[ $weapon == "D" ]]; then
	echo "You hold both katanas, and take a defensive stance"
	weapon="Both Dual Katanas"
	weapont="Sword"
elif [[ $weapon == "G" ]]; then
	echo "You wrap both hands on the hilt of your sword... tightly..."
	weapon="The Golden GreatSword"
	weapont="Sword"
elif [[ $weapon == "S" ]]; then
	echo "Your staff materializes as you strech forth your left hand"
	weapon="The Staff of Eredin"
	weapont="Magic"
elif [[ $weapon == "W" ]]; then
	echo "You call your broom"
	weapon="The Witchs Broom"
	weapont="Magic"
else
	echo "You grab some rocks off the floor"
	weapon="Some Rocks"
	weapont="Toy"
fi

#Battle odds 
echo "Choose a number between 0 and 4 (0 / 4)"
read attac
sleep 2

if [[ $attac == "$(( $RANDOM % 5))" || $attac == yen ]]; then
	echo "You attack with $weapon"
	if [[ $weapont == "Sword" && $classt == "Swordsman" ]]; then
		damage="$(($damage + $(($damage / 2))))"
		if [[ $weapon == "Both Dual Katanas" ]]; then
			echo "++ Bloody Slashes ++"
		else
			echo "++ Tyrant's Summit ++"
		fi
		echo "You did $damage Damage"
		bhealth=$(( $bhealth - $damage ))
	elif [[ $weapont == "Magic" && $classt == "Magician" ]]; then
		damage="$(($damage + $(($damage / 2))))"
		if [[ $weapon == "The Staff of Eredin" ]]; then
			echo "++ Fiend Golem Crush ++"
		else
			echo "++ Poisonous Sweep ++"
		fi
		echo "You did $damage Damage"
		bhealth=$(( $bhealth - $damage ))
	elif [[ $weapont == "Toy" && $classt == "Muppet" ]]; then
		damage="$(($damage + $(($damage / 2))))"
		echo "++ Rock Throw ++"
		echo "You did $damage Damage"
		bhealth=$(( $bhealth - $damage ))
	else
		echo "you did $damage Damage"
		bhealth=$(( $bhealth - $damage ))
	fi


	echo "Gregoire de Gorgon staggers."
	echo "You gained 40 Health"
	health="$(( $health + 40 ))"
else
	echo "Gergoire de Godgon"
	echo "~~~~ Tyrant's Sword Crush ~~~~~"
	health="$(( $health - 60 ))"
fi

#end Health
if [[ $health -ge "0" ]]; then
	echo "Still got the moves"
else
	echo "You died bozo"
	exit 1
fi
done
sleep 2
echo "With $weapon, you defeat the knight. sending his soul to outworld"
echo "				Boss Defeated			"
echo "You win, $(whoami)."
sleep 3
echo "This is where we say goodbye'
exit 1

