#!/bin/bash

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
#                   entre here the link to start ping storm 


elif [[ "$user_choice1" == "2" ]]; then

echo "have a nice day, Pingstorm is off"
user_choice1=0

elif [[ "$user_choice1" == "3" ]]; then

echo "Pingstorm is off"

elif [[ "$user_choice1" == "4" ]]; then

echo "no data to show"

else 
echo "error"
 

fi











