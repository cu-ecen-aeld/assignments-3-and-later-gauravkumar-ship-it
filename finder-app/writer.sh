#!/bin/sh
# Tester script for assignment 1
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

# Create parent directory
mkdir -p "$(dirname "$WRITEDIR")"

# Create/overwrite file
echo "$WRITESTR" > "$WRITEDIR"

exit 0