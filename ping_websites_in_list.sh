#!/bin/bash
websites=(www.google.com www.facebook.com www.tiktok.com www.youtube.com www.netflix.com)  #sites list

echo pinging ${websites[@]}
for site in ${websites[@]}; do
ping -c 4 $site #pings 4 times for each website
test=$? #check if works
echo $test

	if [$test -ne 0 ]; then #explain if website is reachable
	echo "host $site not found"
	else
	echo "host $site is reachable"
	fi


done
