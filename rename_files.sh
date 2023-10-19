#!/bin/bash

# Define the categories
categories=("takeoff" "land" "right" "left" "forward" "backward")

# Function to rename files in a directory
rename_files() {
  local dir="$1"
  local category="$2"
  local file_list=($(find "$dir" -type f -name "*.$category"))
  local total_files=${#file_list[@]}

  if [ $total_files -eq 0 ]; then
    echo "No files found in category $category in $dir."
    return
  fi

  # Generate a random permutation of numbers from 1 to total_files
  random_numbers=($(shuf -i 1-$total_files))

  for ((i = 0; i < $total_files; i++)); do
    original_file="${file_list[i]}"
    new_filename="${dir}/${category}_${random_numbers[i]}.txt"
    mv "$original_file" "$new_filename"
    echo "Renamed $original_file to $new_filename"
  done
}

# Main loop to process each subdirectory and category
for category in "${categories[@]}"; do
  for dir in /data/*; do
    if [ -d "$dir" ]; then
      rename_files "$dir" "$category"
    fi
  done
done
