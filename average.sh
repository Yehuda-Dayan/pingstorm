#!/bin/bash


# משתנים כלליים
total=0
count=0
results=""


while read -r site t1 t2 t3 t4; do
    
    avg=$(echo "($t1 + $t2 + $t3 + $t4) / 4" | bc -l)

    
    avg=$(printf "%.2f" "$avg")

  
    total=$(echo "$total + $avg" | bc)
    count=$((count + 1))

    
    results="$results$site $avg"$'\n'

done <<< "$input"

overall_avg=$(echo "scale=2; $total / $count" | bc)

echo "🔥 ממוצע כללי של כל האתרים: $overall_avg ms"
echo ""
echo "📊 ממוצעים לפי מהירות (מהיר -> איטי):"
echo "$results" | sort -k2 -n
