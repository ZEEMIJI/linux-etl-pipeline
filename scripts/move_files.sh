#!/bin/bash
mkdir -p json_and_CSV
find ./source_files \( -name "*.csv" -o -name "*.json" \) -exec mv {} json_and_CSV/ \;
