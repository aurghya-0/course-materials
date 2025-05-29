import os
import subprocess

# Path to the folder containing Typst files
FOLDER_PATH = "path/to/your/folder"

def compile_typst_files(folder):
    for filename in os.listdir(folder):
        if filename.endswith(".typ"):
            typst_file = os.path.join(folder, filename)
            pdf_file = os.path.splitext(typst_file)[0] + ".pdf"
            try:
                print(f"Compiling {typst_file}...")
                subprocess.run(["typst", "compile", typst_file, pdf_file], check=True)
                print(f"Compiled to {pdf_file}")
            except subprocess.CalledProcessError as e:
                print(f"Failed to compile {typst_file}: {e}")

if __name__ == "__main__":
    compile_typst_files("Converted_C_Guidelines")
