import os

def replace_in_files(folder_path, target="#horizontalrule", replacement=""):
    # Walk through all files in the directory and subdirectories
    for root, _, files in os.walk(folder_path):
        for file_name in files:
            file_path = os.path.join(root, file_name)
            try:
                with open(file_path, 'r', encoding='utf-8') as file:
                    content = file.read()

                # Replace the target string
                updated_content = content.replace(target, replacement)

                # Write the updated content back to the file only if changes were made
                if content != updated_content:
                    with open(file_path, 'w', encoding='utf-8') as file:
                        file.write(updated_content)
                    print(f"Updated: {file_path}")
            except (UnicodeDecodeError, PermissionError) as e:
                print(f"Skipped: {file_path} ({e})")

# Example usage
replace_in_files("Converted_C_guidelines", target="#horizontalrule", replacement="")

