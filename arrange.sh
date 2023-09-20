#!/bin/bash

source_dir="/home/workspace/SWE_2021_41_2023_2_week_4-main"
files_dir="/home/workspace/SWE_2021_41_2023_2_week_4-main/files"

for file in $files_dir/*
do
    file=${file}
    if [ -f "$file" ]; then
        first_char="$("$file" | cut -c1 | tr '[A-Z]' '[a-z]')"
        mv "$file" "$source_dir/$first_char/"
    fi
done