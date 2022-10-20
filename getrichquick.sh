#!/bin/bash

echo "Enter your name"
read name
echo "Processing..."
sleep 2

echo "Enter your age"
read age
echo "Processing..."
sleep 2

echo "Hello $name, you are $age years old."
echo "Hola, You will become a millionaire in $(($RANDOM % $age)) years"
