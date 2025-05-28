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
INPUT_CSV = "c_bootcamp.csv"
OUTPUT_DIR = Path("C_Guidelines")
OUTPUT_DIR.mkdir(exist_ok=True)

def generate_prompt(topic_name):
    return f"""
Topic: {topic_name}

Please generate a detailed teaching guideline for the given topic. The guideline should be structured and comprehensive, suitable for use in a bootcamp setting where clarity, engagement, and concept reinforcement are key.

The guideline must include the following:

1. Teaching Outline
Provide a clear and structured list of subtopics and concepts that the teacher must cover during the class. This should include:
- Key definitions
- Important syntax and rules
- Examples and demonstrations
- Common mistakes to avoid
- Real-world applications (if any)

2. In-Class Practice Questions (Minimum 5)
Design at least five in-class coding or conceptual questions that:
- Progress from basic to advanced difficulty
- Cover all key aspects of the topic
- Encourage class discussion or live coding
- Help solidify understanding

Each question should include:
- A brief problem statement
- The concept it tests
- (Optional) Hints for students

3. Homework Practice Questions (Minimum 5)
Provide five additional questions for students to practice at home. These should:
- Reinforce concepts taught in class
- Encourage independent thinking
- Include a mix of coding and conceptual questions (as relevant)

Each question should include:
- A problem statement
- (Optional) Difficulty level
- (Optional) Key concept tested

Please ensure that the language used is beginner-friendly but technically accurate, and that the content is tailored to learners with basic programming knowledge who are expanding their skills in C.
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
            day = row['Day']
            topic_name = row['Topic']
            # Construct the topic string
            topic = f"{day}"
            prompt = generate_prompt(topic_name)
            print(f"Generating note for: {topic_name}")
            content = call_gpt(prompt)

            # Save output to file
            safe_topic = topic.replace(" ", "_").replace("'", "").replace(":", "_").replace(";","_").replace("-","_").lower()
            out_path = OUTPUT_DIR / f"{safe_topic}.md"
            out_path.write_text(content, encoding='utf-8')
            print(f"Saved to: {out_path}")
            i = i+1

if __name__ == "__main__":
    generate_notes_from_csv(INPUT_CSV)
