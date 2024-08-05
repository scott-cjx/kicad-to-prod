#!/usr/bin/bash

# Define the directories
svg_dir="/ws/docs/sch"
md_file="/ws/docs/sch/sch.md"

# Create or empty the Markdown file
echo "# Collected Schematics Images \n\n" > "$md_file"

# Loop through all SVG files in the directory
for svg_file in "$svg_dir"/*.svg; do
  # Extract filename without extension
  file_name=$(basename "$svg_file" .svg)
  refactored_file_name=$(basename "$svg_file" .svg)

  # Add image to Markdown file
  echo "![${file_name}](${refactored_file_name}.svg) \n\n" >> "$md_file"
done

echo "Markdown document created at $md_file"
