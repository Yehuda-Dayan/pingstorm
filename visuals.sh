#!/bin/bash

#adding visual string for each 5ms latency

#testing vars, until I get the actual var names
var1='35'
var2='100'
var3='62'

bar=""
bar2=""
bar3=""

#for loop which is filling the bars
for ((i=0; i<=$var1; i+=5)); do
bar+="█"	
done

for ((a=0; a<=$var2; a+=5)); do
bar2+="█"
done

for ((b=0; b<=$var3; b+=5)); do
bar3+="█"
done

#printing the bars
echo "|"$bar"|"
echo "|"$bar2"|"
echo "|"$bar3"|"

