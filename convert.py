import os
import subprocess

def convert_md_to_typst(folder, output_folder):
    for filename in os.listdir(folder):
        if filename.endswith('.md'):
            md_path = os.path.join(folder, filename)
            typst_filename = filename.replace('.md', '.typ')
            typst_path = os.path.join(output_folder, typst_filename)

            # Pandoc command to convert md to typst
            command = [
                'pandoc', md_path,
                '-o', typst_path,
                "--to", "typst"
            ]

            print(f"Converting: {filename} --> {typst_filename}")
            subprocess.run(command, check=True)

    print("✅ All files converted!")

# Folder containing markdown files
folder = 'C_guidelines'
output = "Converted_C_guidelines"

convert_md_to_typst(folder, output)
