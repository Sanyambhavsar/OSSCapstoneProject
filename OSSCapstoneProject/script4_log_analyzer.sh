#!/bin/bash
# Script 4: Log Analyzer

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "File not found"
    exit 1
fi

while read LINE; do
    echo "$LINE" | grep -iq "$KEYWORD" && COUNT=$((COUNT+1))
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times"

grep -i "$KEYWORD" "$LOGFILE" | tail -5
