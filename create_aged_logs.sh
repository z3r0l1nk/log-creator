#!/bin/bash

# Base directory for log files
BASE_DIR="/path/to/directory"

# Create subdirectories if they don't exist
mkdir -p "$BASE_DIR/dir1" "$BASE_DIR/dir2" "$BASE_DIR/dir3"

# Function to create dummy log files and age them
create_aged_logs() {
    local dir="$1"
    
    # Create 10 dummy log files
    for i in {1..10}; do
        # Create a dummy log file using dd
        dd if=/dev/zero of="$dir/dummy$i.log" bs=1M count=10 2>/dev/null
        
        # Randomize the age of files (between 5 and 10 days old)
        days=$(( RANDOM % 6 + 5 ))
        touch -d "$days days ago" "$dir/dummy$i.log"
    done
    
    echo "Created and aged log files in $dir"
}

# Create logs in each subdirectory
create_aged_logs "$BASE_DIR/dir1"
create_aged_logs "$BASE_DIR/dir2"
create_aged_logs "$BASE_DIR/dir3"

# Verify the ages of files
echo -e "\nFile ages in the directories:"
find "$BASE_DIR" -name "*.log" -printf "%T+ %p\n" | sort