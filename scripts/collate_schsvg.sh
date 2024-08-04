#!/usr/bin/bash

# Define the directories
svg_dir="/ws/docs/sch"
md_file="/ws/docs/sch/sch.md"

# Create or empty the Markdown file
echo "# Collected Schematics Images" > "$md_file"

# Loop through all SVG files in the directory
for svg_file in "$svg_dir"/*.svg; do
  # Extract filename without extension
  file_name=$(basename "$svg_file" .svg)

  # Add image to Markdown file
  echo "![${file_name}](${svg_file})" >> "$md_file"
done

echo "Markdown document created at $md_file"
