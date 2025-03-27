#!/bin/bash

log_file=logfile.log
csv=judecsv.csv
#log function
write_log() {
	echo "$(date + '%d-%m-%y %H:%M:%S') | $1" >> "log_file"
}

echo "Service,Latency (ms)" > "$csv"
for websites in "${!results[@]}"; do
	echo "$websites,${results[$websites]}" >>"$csv"
	write_log "Recorded $websites latency: ${results[$websites]} ms"
done

write_log "Results exported to $csv"

