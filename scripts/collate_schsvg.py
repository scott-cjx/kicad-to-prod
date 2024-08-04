import os

# Define the directories
svg_dir = '/ws/docs/sch'
md_file = os.path.join(svg_dir, 'collected_images.md')

# Get a list of SVG files and sort them in reverse order
svg_files = [f for f in os.listdir(svg_dir) if f.endswith('.svg')]
svg_files.sort(reverse=True)  # Sort in reverse order

# Create or empty the Markdown file
with open(md_file, 'w') as f:
    f.write("# Schematics \n\n")
    
    # Add images to Markdown file
    for svg_file in svg_files:
        file_name = os.path.splitext(svg_file)[0]
        image_path = os.path.join(svg_dir, svg_file)
        f.write(f"![{file_name}]({image_path})\n\n")

print(f"Markdown document created at {md_file}")
