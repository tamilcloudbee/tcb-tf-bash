#!/bin/bash

# Check if repo path is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <repo_path>"
    exit 1
fi

REPO_PATH="$1"
OUTPUT_FILE="$HOME/Desktop/tfoutput.txt"

# Check if the provided path exists
if [ ! -d "$REPO_PATH" ]; then
    echo "Error: Directory '$REPO_PATH' does not exist."
    exit 1
fi

# Clear the output file if it exists
> "$OUTPUT_FILE"

# Find and display all .tf and .tfvars files, and write to the output file
find "$REPO_PATH" -type f \( -name "*.tf" -o -name "*.tfvars" \) | while read -r file; do
    echo "==============================" >> "$OUTPUT_FILE"
    echo "File: $file" >> "$OUTPUT_FILE"
    echo "------------------------------" >> "$OUTPUT_FILE"
    cat "$file" >> "$OUTPUT_FILE"
    echo -e "\n" >> "$OUTPUT_FILE"
done

echo "Output saved to $OUTPUT_FILE"
