#!/bin/bash

user_choice1=1

while [[ "$user_choice1" -eq 1 ]]; do

#clear
echo "pingstorm control panel"
echo "-------------------------"
echo "1. start pingstorm"
echo "2. stop pingstorm" 
echo "3. show log"
echo "-------------------------"

read -p "entre your choice [1-4]:  " user_choice1     

if [[ "$user_choice1" == "1" ]]; then
echo "here"
./visuals.sh

elif [[ "$user_choice1" == "2" ]]; then
echo "Pingstorm is off"
user_choice1=0

elif [[ "$user_choice1" == "3" ]]; then
echo "show log"
head -n 10 judecsv.csv

user_choice=1

else 
echo "error"
user_choice1=1
 
fi
done





















