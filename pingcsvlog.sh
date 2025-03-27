#!/bin/bash

log_file=logfile.log
csv=judecsv.csv
visf=visuals.sh

#log function
write_log() {
	echo "$(date + '%d-%m-%y %H:%M:%S') | $1" >> "$log_file"
}

#echo $visf | sed -n '1p' '2p' '3p' '4p' > "$csv"

#sed -n '2,4p' "$visf" > "$csv"

bash "$visf" | head -n 4 > "$csv"

#for websites in "${!results[@]}"; do
#	echo "$websites,${results[$websites]}" >> "$csv"
#	write_log "Recorded $websites latency: ${results[$websites]} ms"
#done

#write_log "Results exported to $csv"

