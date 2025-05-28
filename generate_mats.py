import csv
from openai import OpenAI  # Make sure to install openai package
from pathlib import Path

def read_api_key(file_path):
    try:
        with open(file_path, 'r') as file:
            api_key = file.read().strip()
            return api_key
    except FileNotFoundError:
        print(f"Error: File '{file_path}' not found.")
    except Exception as e:
        print(f"Error reading API key: {e}")


# Set your OpenAI API key or other LLM config
api_key = read_api_key("api_key.txt")


client = OpenAI(api_key=api_key)

# Path to input topics and output directory
INPUT_CSV = "IoT_Lesson_Plan.csv"
OUTPUT_DIR = Path("IoT_generated_notes")
OUTPUT_DIR.mkdir(exist_ok=True)

def generate_prompt(unit_name, topic_name, subtopcic_description):
    return f"""
You are an expert educator in the field of Internet of Things (IoT) and Smart Sensors.

Write a detailed, free-flowing, and student-friendly class note for the following:

Unit: {unit_name}  
Topic: {topic_name}
Subtopic Focus: {subtopcic_description} 

Instructions:
1. Start with a clear and engaging introduction explaining the importance of this topic in the context of IoT.
2. Cover all relevant concepts, working principles, technical details, and real-world applications.
3. Use examples and analogies to make complex ideas simple and relatable.
4. Where applicable, include diagrams, formulas, or architectures (describe them in text if visual aids are not possible).
5. End the note with a summary of key takeaways.
6. Add at least 5 practice questions related to this topic. Include a mix of short answer, conceptual, and descriptive types.
7. After listing the questions, provide clear and concise answers with brief explanations.

Maintain a natural, teaching-style tone throughout, as if explaining on a whiteboard or in a recorded class.
"""

def call_gpt(prompt):
    response = client.responses.create(
        model="gpt-4.1-mini",
        input=prompt
    )
    return response.output_text

def generate_notes_from_csv(csv_file):
    i = 1
    with open(csv_file, newline='', encoding='utf-8') as file:
        reader = csv.DictReader(file)
        for row in reader:
            unit = row['Unit_Name']
            topic_name = row['Topic_Name']
            subtopic = row['Subtopic_Description']
            # Construct the topic string
            topic = f"{unit} - {topic_name}"
            prompt = generate_prompt(unit, topic_name, subtopic)
            print(f"Generating note for: {topic_name} (Unit: {unit}) - Subtopic: {subtopic}")
            content = call_gpt(prompt)

            # Save output to file
            safe_topic = topic.replace(" ", "_").replace("'", "").replace(":", "_").replace(";","_").replace("-","_").lower()
            out_path = OUTPUT_DIR / f"{safe_topic}.md"
            out_path.write_text(content, encoding='utf-8')
            print(f"Saved to: {out_path}")
            i = i+1

if __name__ == "__main__":
    generate_notes_from_csv(INPUT_CSV)
