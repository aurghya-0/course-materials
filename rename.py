import os
import re
import pandas as pd
from difflib import get_close_matches

# === Step 1: Clean filenames ===
def clean_filename(filename):
    name, ext = os.path.splitext(filename)

    # Replace double and single underscores with hyphens
    name = name.replace('__', '-').replace('_', '-')

    # Remove commas
    name = name.replace(',', '')

    # Remove unwanted characters (keep letters, numbers, hyphens)
    name = re.sub(r'[^a-zA-Z0-9\-]', '', name)

    # Lowercase
    name = name.lower()

    # Zero-pad numbers (e.g., unit-3 -> unit-03)
    def pad_numbers(match):
        num = int(match.group())
        return f"{num:02d}"

    name = re.sub(r'\d+', pad_numbers, name)

    return f"{name}{ext}"

def clean_all_files(folder):
    for filename in os.listdir(folder):
        if filename.endswith(".md"):
            cleaned_name = clean_filename(filename)
            old_path = os.path.join(folder, filename)
            new_path = os.path.join(folder, cleaned_name)

            if old_path != new_path:
                print(f"Cleaning: {filename} --> {cleaned_name}")
                os.rename(old_path, new_path)

# === Step 2: Rename based on CSV ===
def slugify(text):
    text = text.lower()
    text = text.replace('&', 'and')
    text = re.sub(r'[^a-z0-9]+', '-', text)
    return text.strip('-')

def rename_files_based_on_csv(folder, csv_file):
    df = pd.read_csv(csv_file)

    # Prepare target names
    target_files = []
    for idx, row in df.iterrows():
        unit_num = int(re.search(r'\d+', row['Unit_Name']).group())
        topic = slugify(row['Topic_Name'])
        subtopic = slugify(row['Subtopic_Description'])

        target_files.append({
            'unit': unit_num,
            'seq': idx + 1,
            'topic': topic,
            'subtopic': subtopic,
            'csv_row': row
        })

    # List cleaned files
    existing_files = [f for f in os.listdir(folder) if f.endswith('.md')]

    report = []

    for item in target_files:
        unit_padded = f"{item['unit']:02d}"
        seq_padded = f"{(item['seq']):02d}"

        new_name = f"unit-{unit_padded}-{seq_padded}.md"
        new_path = os.path.join(folder, new_name)

        search_phrase = f"{item['topic']}-{item['subtopic']}"
        matches = get_close_matches(search_phrase, existing_files, n=1, cutoff=0.1)

        if matches:
            old_name = matches[0]
            old_path = os.path.join(folder, old_name)

            print(f"Renaming: {old_name} --> {new_name}")
            os.rename(old_path, new_path)
            existing_files.remove(old_name)

            report.append({
                'original_file': old_name,
                'new_file': new_name,
                'csv_topic': item['csv_row']['Topic_Name'],
                'csv_subtopic': item['csv_row']['Subtopic_Description']
            })
        else:
            print(f"⚠️ No match found for: {search_phrase}")
            report.append({
                'original_file': 'Not Found',
                'new_file': new_name,
                'csv_topic': item['csv_row']['Topic_Name'],
                'csv_subtopic': item['csv_row']['Subtopic_Description']
            })

    # Save report
    report_df = pd.DataFrame(report)
    report_df.to_csv(os.path.join(folder, 'rename_report.csv'), index=False)
    print("✅ Report saved as rename_report.csv")

# === Main ===
folder = 'generated_notes'
csv_file = 'topics.csv'  # Make sure this is in the same dir as script or provide full path

clean_all_files(folder)
rename_files_based_on_csv(folder, csv_file)
