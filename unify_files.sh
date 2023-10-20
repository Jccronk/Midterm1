#!/bin/bash
set -x

# Define the categories
categories=("takeoff" "land" "right" "left" "forward" "backward")

# Function to unify files in their parent directory by category
unify_files() {
  local category="$1"
  local category_dir="/home/cronk_jake/data/$category"
  
  # Create the category directory if it doesn't exist
  mkdir -p "$category_dir"
  
  # Move all files of the category to the category directory
  find /home/cronk_jake/data/ -type f -name "*.$category" -exec mv {} "$category_dir/" \;
  
  # Remove the temporary directories for this category
  find /home/cronk_jake/data/ -type d -name "*.$category" -exec rm -r {} \;
  
  echo "Unification for $category complete."
}

# Main loop to process each category
for category in "${categories[@]}"; do
  unify_files "$category"
done
