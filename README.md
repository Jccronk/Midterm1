# Bash Scripting Examples

This repository contains Bash scripts to perform various file operations, including renaming files, unifying files, changing file timestamps, and running scripts automatically. Below are descriptions of the scripts and how to use them.

## Rename Files

### Description

The `rename_files.sh` script renames files within specified categories to sequential numbers. It also organizes these files by category and deletes temporary subdirectories.

### Usage

1. Save the script to a file, e.g., `rename_files.sh`.
2. Make it executable with `chmod +x rename_files.sh`.
3. Run the script with `./rename_files.sh`.

## Unify Files

### Description

The `unify_files.sh` script organizes files into their parent directories by category. It ensures no files are overwritten and cleans up temporary subdirectories.

### Usage

1. Save the script to a file, e.g., `unify_files.sh`.
2. Make it executable with `chmod +x unify_files.sh`.
3. Run the script with `./unify_files.sh`.

## Change Timestamps

### Description

The `change_timestamps.sh` script changes the timestamp of files to a random date and time within the last 10 days.

### Usage

1. Save the script to a file, e.g., `change_timestamps.sh`.
2. Make it executable with `chmod +x change_timestamps.sh`.
3. Replace `/path/to/your/files` with the actual directory path.
4. Run the script with `./change_timestamps.sh`.

## Automatic Execution

### Description

The scripts `run_once_a_week` and `run_every_30_seconds` allow you to run the scripts automatically at specified intervals.

### Usage

1. Choose the desired option for automatic execution in the script.
2. Uncomment either `run_once_a_week` or `run_every_30_seconds`.
3. Run the script to perform the specified task at the chosen interval.


