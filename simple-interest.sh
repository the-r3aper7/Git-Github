#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 principal rate time"
    exit 1
fi

interest=$(echo "scale=2; $1 * $2 * $3 / 100" | bc)
total=$(echo "scale=2; $1 + $interest" | bc)

echo "Simple Interest: $interest"
echo "Total Amount: $total"
