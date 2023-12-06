#!/bin/bash

# Function to count the number of rows in the parking_data.CSV
count_rows() {
    local file=$1

    # Check if the file exists
    if [[ ! -f "$file" ]]; then
        echo "File not found: $file"
        return 1
    fi

    # Count the number of lines in the file
    local lines=$(wc -l < "$file")
    echo "The file has $lines rows."
}

# Main script execution
filename="parking_data.csv"
count_rows "$filename"
