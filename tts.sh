#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "Text read from file: $line"
    gtts-cli $line -l 'en-uk' -o $line.mp3
done < "$1"

