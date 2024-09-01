#!/bin/bash

search_dir="x264_src"

# Recursively find all .s files in the current directory
find $search_dir -type f -name "*.mod.s" | while read mod_s_file; do
  # Generate the corresponding .mod.s file name
  s_file="${mod_s_file%.mod.s}.s"

  # Check if the corresponding .mod.s file exists
  if [ -f "$s_file" ]; then
    # Run diff between the .s and .mod.s file
    echo "Comparing $s_file and $mod_s_file"
    diff "$s_file" "$mod_s_file"
  else
    echo "No corresponding .s file for $mod_s_file"
  fi
done
