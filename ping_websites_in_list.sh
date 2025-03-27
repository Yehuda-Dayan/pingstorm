#!/bin/bash
websites=(www.google.com www.facebook.com www.tiktok.com www.youtube.com www.netflix.com)  #sites list

#echo pinging ${websites[@]}
for site in ${websites[@]}; do

results=$(ping -c 4 $site  | awk '{print $8}' | sed 's/[^0-9.]//g' ) #pings 4 times for each website and save as variable
echo $results
test=$? #check if works
# echo $test
#	if [ $test -eq 0 ]; then #explain if website is reachable
#	echo "host $site is reachable"
#	else
#	echo "host $site not found"
#	fi

done
