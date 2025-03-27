#!/bin/bash

#adding visual string for each 5ms latency

#testing vars, until I get the actual var names
#var1='35'
#var2='100'
#var3='62'

source average.sh
#echo "$forbar1"


bar=""
bar2=""
bar3=""

#for loop which is filling the bars
for ((i=0; i<=$f1; i+=1)); do
bar+="█"	
done

for ((a=0; a<=$f2; a+=1)); do
bar2+="█"
done

for ((b=0; b<=$f3; b+=1)); do
bar3+="█"
done

for ((b=0; b<=$f4; b+=1)); do
bar4+="█"
done

#printing the bars
echo ""
echo "Google |"$bar"|"
echo "Facebook |"$bar2"|"
echo "TikTok |"$bar3"|"
echo "YouTube |"$bar4"|"

