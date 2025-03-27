#!/bin/bash

RESULTS=$(./ping_websites_in_list.sh)
#echo $RESULTS

GOOGLE=$(echo $RESULTS | awk '{print $1, $2, $3, $4}')
FACEBOOK=$(echo $RESULTS | awk '{print $5, $6, $7, $8}')
TIKTOK=$(echo $RESULTS | awk '{print $9, $10, $11, $12}')
YOUTUBE=$(echo $RESULTS | awk '{print $13, $14, $15, $16}')

echo "Google $GOOGLE"
echo "Facebook $FACEBOOK" 
echo "TikTok $TIKTOK"
echo "YouTube $YOUTUBE"

# משתנים כלליים
total=0
count=0
results=""

while read -r t1 t2 t3 t4; do
	
    avg=$(echo "($t1 + $t2 + $t3 + $t4) / 4" | bc -l)
    avg=$(printf "%.2f" "$avg")
    total=$(echo "$total + $avg" | bc)
    count=$((count + 1))

    
    results="$results$site $avg"$'\n'
done <<< "$RESULTS"

overall_avg=$(echo "scale=2; $total / $count" | bc)

	
 	forbar1=$(echo $GOOGLE)
	f1=$(echo "$forbar1" | awk '{print ($1 + $2 + $3 + $4) / 4}')
	f1=$(printf "%.0f" "$f1")

        forbar2=$(echo $FACEBOOK)
	f2=$(echo "$forbar2" | awk '{print ($1 + $2 + $3 + $4) / 4}')
        f2=$(printf "%.0f" "$f2")
         
	forbar3=$(echo $TIKTOK)
	f3=$(echo "$forbar3" | awk '{print ($1 + $2 + $3 + $4) / 4}')
        f3=$(printf "%.0f" "$f3")
        
       	forbar4=$(echo $YOUTUBE)
	f4=$(echo "$forbar4" | awk '{print ($1 + $2 + $3 + $4) / 4}')
        f4=$(printf "%.0f" "$f4")

echo "🔥 Overall Average Latency: $overall_avg ms"
echo ""
echo "📊 Sorted By Speed:"
echo "$results" | sort -k2 -n

