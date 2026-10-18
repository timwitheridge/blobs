#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 2 ]]; then
    echo "Usage: $0 <output_filename> <input_file1> [input_file2 ...]" >&2
    exit 1
fi

output=$1
shift

# Concatenate input files in the order supplied.
cat -- "$@" > "$output"

echo "Created $output"
