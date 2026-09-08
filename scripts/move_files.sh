#!/bin/bash

mkdir -p json_and_CSV

if find ./source_files \( -name "*.csv" -o -name "*.json" \) | grep -q .; then
    find ./source_files \( -name "*.csv" -o -name "*.json" \) -exec mv {} json_and_CSV/ \;
    echo "CSV and/or JSON files moved successfully."
else
    echo "No CSV or JSON files in source_files."
fi
