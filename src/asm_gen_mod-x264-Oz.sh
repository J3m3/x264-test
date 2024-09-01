#!/bin/bash

# Directory to search for .ll files
search_dir="x264_src"  # You can replace "." with the specific directory you want to search in

# Find all .ll files and run llc on each
find $search_dir -type f -name "*.ll" | while read ll_file; do
  # Generate the output filename by replacing .ll with .o
  output_file="${ll_file%.ll}"

  # Run the llc command
  /home/yjs/workspace/GPUISel-llvm/build/bin/llc --change-topo-order=1 -fast-isel=false "$ll_file" -o "$output_file.mod.s"
  
  echo "Processed: $ll_file -> $output_file"
done