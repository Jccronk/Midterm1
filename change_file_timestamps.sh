#!/bin/bash

# Function to generate a random date within the last 10 days
generate_random_date() {
  local current_time=$(date +%s)
  local random_time=$((current_time - (RANDOM % (10 * 24 * 3600)))
  date -d "@$random_time" "+%Y%m%d%H%M.%S"
}

# Specify the directory where your files are located
directory="/home/cronk_jake/data"

# Iterate through the files in the directory
for file in "$directory"/*; do
  if [ -f "$file" ]; then
    # Generate a random date
    random_date=$(generate_random_date)
    
    # Update the file's timestamp
    touch -t "$random_date" "$file"
    
    echo "Changed timestamp for $file to $random_date"
  fi
done
