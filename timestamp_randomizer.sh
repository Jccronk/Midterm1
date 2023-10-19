#!/bin/bash

# Function to generate a random date within the last 10 days
generate_random_date() {
  local current_time=$(date +%s)
  local random_time=$((current_time - (RANDOM % (10 * 24 * 3600)))
  date -d "@$random_time" "+%Y%m%d%H%M.%S"
}

# Function to display file information
display_file_info() {
  local file="$1"
  echo "File: $file"
  echo "Before change:"
  ls -l "$file"
}

# Specify the directory where your files are located
directory="/path/to/your/files"

# Option to run the script automatically once a week
run_once_a_week() {
  while true; do
    for file in "$directory"/*; do
      if [ -f "$file" ]; then
        display_file_info "$file"
        random_date=$(generate_random_date)
        touch -t "$random_date" "$file"
        echo "After change:"
        ls -l "$file"
      fi
    done
    sleep 604800 # Sleep for 7 days (604800 seconds)
  done
}

# Option to run the script automatically every 30 seconds
run_every_30_seconds() {
  for i in {1..3}; do
    for file in "$directory"/*; do
      if [ -f "$file" ]; then
        display_file_info "$file"
        random_date=$(generate_random_date)
        touch -t "$random_date" "$file"
        echo "After change:"
        ls -l "$file"
      fi
    done
    sleep 30
  done
}

# Choose the desired option for automatic execution
# Uncomment the line you want to use:

# Run the script automatically once a week
#run_once_a_week

# Run the script automatically every 30 seconds three times
#run_every_30_seconds
