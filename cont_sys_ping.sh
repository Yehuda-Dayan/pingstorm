#!/bin/bash

user_choice1=1

while [[ "$user_choice1" -eq 1 ]]; do

#clear
echo "pingstorm control panel"
echo "-------------------------"
echo "1. start pingstorm"
echo "2. stop pingstorm" 
echo "3. check status"
echo "4. show log"
echo "-------------------------"

read -p "entre your choice [1-4]:  " user_choice1     

if [[ "$user_choice1" == "1" ]]; then
echo "here"
#              entre here the link to start ping storm 

elif [[ "$user_choice1" == "2" ]]; then
echo "Pingstorm is off"
user_choice1=0

elif [[ "$user_choice1" == "3" ]]; then
echo "Pingstorm is off"
user_choice=1

elif [[ "$user_choice1" == "4" ]]; then
echo "show log"
#          entre here the commend to show the log file
user_choice=1

else 
echo "error"
user_choice1=1
 
fi
done





















