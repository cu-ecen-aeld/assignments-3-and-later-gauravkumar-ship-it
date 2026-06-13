#!/bin/sh
# Tester script for assignment 1 : Finder
# Author: Gaurav Kumar

#!/bin/bash

set -e
set -u

# Check valid number of arguments
if [ $# -ne 2 ]; then
    echo "Error: Invalid number of input arguments"
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

WRITEDIR="$1"
WRITESTR="$2"

#Verify the directory exists
if [ ! -d "$WRITEDIR" ]; then
    echo "Error: $WRITEDIR is not a directory"
    exit 1
fi

# Count regular files in directory and subdirectories
FILE_COUNT=$(find "$WRITEDIR" -type f | wc -l)

# Count matching lines
MATCH_COUNT=$(grep -r "$WRITESTR" "$WRITEDIR" 2>/dev/null | wc -l)

echo "The number of files are $FILE_COUNT and the number of matching lines are $MATCH_COUNT"

exit 0
