#!/bin/bash

RESULTS=$(bash ping_websites_in_list.sh)

NUMBER_ONLY=$(echo "$RESULTS" | sed 's/^pinging www.google.com www.facebook.com www.tiktok.com www.youtube.com www.netflix.com //')
NUMBERS=$(echo "$NUMBERS_ONLY" | tr ' ' '\n') 
echo "$NUMBERS"
group=()
for num in $NUMBERS; do
group+=($num)
echo "$group"

RESULT="
12.3 23.5 11.3 14.6
11.1 32.5 12.3 54.4
11.1 234.4 54.6 67.7
24.4 23.4 12.4 34.4
"

total=0
count=0
results=""


while read -r t1 t2 t3 t4; do

 avg=$(echo "($t1 + $t2 + $t3 + $t4) / 4" | bc -l)
 avg=$(printf "%.2f" "$avg")

  total=$(echo "$total + $avg" | bc)
  count=$((count + 1))
  results="$results$avg"$'\n'

done <<< "$RESULT"
if [[ $count -gt 0 ]] then
overall_avg=$(echo "scale=2; $total / $count" | bc)
else
overall_avg="no data"
fi
echo ""
echo " $overall_avg ms"
echo ""
echo "avaerga fastest websites:"
echo "$results" | sort  -n

