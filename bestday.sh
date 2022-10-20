#!/bin/bash

user=$(whoami)
where=$(pwd)
when=$(date)

echo "Good Day $user"
sleep 2

echo "It's $when"
sleep 2

echo "Lets pick up where we left off $user, we are currently at: $where"
sleep 1

echo "also, check your swp files"
