#!/bin/bash
# Emulates input and output

read -p "Enter your name > " name

read -p "Hello $name, Please enter a password > " -s psswd
echo ""

read -p "Confirm password > " -s cnfrm
echo ""

if [ $psswd = $cnfrm ]; then
    echo "Password saved!\n"
else
    echo "Failed!"
fi

read -p "Select an option: \n\t1 - Buy\n\t2 - Sell\n> " choice

case $choice in
    1 ) echo "Bought food."
        ;;
    2 ) echo "Sold food."
        ;;
    * ) echo "Wrong selection."
esac
