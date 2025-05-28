= C Key Words --- Rules & Guidelines for Naming
<teaching-guideline-c-key-words-rules-guidelines-for-naming>



=== 1. Teaching Outline
<teaching-outline>
==== Introduction
<introduction>
- #strong[Why naming rules matter:] Importance of correct naming
  conventions in C programming for readability, maintainability, and
  avoiding errors.
- #strong[What are keywords in C?]
  - Definition: Reserved words that have special meaning and cannot be
    used as identifiers.
  - Examples: `int`, `return`, `if`, `while`, etc.
  - Explain how keywords are predefined identifiers reserved by the
    language.

==== Key Definitions
<key-definitions>
- #strong[Identifiers:] Names used to identify variables, functions,
  arrays, etc.
- #strong[Keywords:] Reserved identifiers with special meaning in C;
  cannot be used as names.
- #strong[Constants:] Fixed values not subject to change --- naming
  follows different guidelines but mention briefly.

==== Important Syntax and Rules for Naming Identifiers in C
<important-syntax-and-rules-for-naming-identifiers-in-c>
- Allowed characters: letters (A-Z, a-z), digits (0-9), and underscore
  (\_).
- An identifier must start with a letter or underscore, #strong[not] a
  digit.
- Case sensitivity: `Var`, `var`, and `VAR` are different identifiers.
- No spaces or special characters (e.g., !, \@, \#, %, etc.) allowed.
- Length limit (implementation-dependent, commonly 31 to 63 characters
  are reliable).
- Keywords #strong[cannot] be used as identifiers.
- Use of underscore for multi-word identifiers (e.g., `total_sum`,
  `maxValue`).
- Naming conventions: camelCase, snake\_case (discuss briefly).

==== Examples and Demonstrations
<examples-and-demonstrations>
- Valid identifiers: `score`, `_value1`, `totalSum`.
- Invalid identifiers:
  - Starting with a number: `2ndValue`
  - Using keywords: `int`, `return`
  - Contains special chars: `my-var`
- Show live coding:
  - Declare variables with valid and invalid names and compile to
    illustrate errors.
  - Attempt to declare a variable named `int` and show compiler error.

==== Common Mistakes to Avoid
<common-mistakes-to-avoid>
- Using keywords as variable names.
- Starting identifier names with digits.
- Leaving spaces or using special characters.
- Forgetting that identifiers are case sensitive.
- Using ambiguous names (e.g., single letters without context).

==== Real-world Applications
<real-world-applications>
- Importance of proper naming in larger projects (e.g., readability for
  teams).
- Code standard practices in industry.
- Briefly mention how improper naming can cause hard-to-debug issues.



=== 2. In-Class Practice Questions
<in-class-practice-questions>



#strong[Q1: Identify Valid Identifiers] \
#emph[Concept Tested:] Rules for valid identifiers \
#emph[Problem:] Given this list of names, which are valid C identifiers?
\
`myVar, 2ndValue, total_sum, float, _temp, user-name` \
#emph[Hint:] Remember the starting character and keywords rule.



#strong[Q2: Correct the Invalid Identifier] \
#emph[Concept Tested:] Error recognition and correction \
#emph[Problem:] Fix the following variable declaration so it adheres to
C naming rules: \
`int 3num = 10;` \
#emph[Hint:] Identifiers cannot start with a digit.



#strong[Q3: Case Sensitivity Check] \
#emph[Concept Tested:] Case sensitivity in C identifier naming \
#emph[Problem:] Are `Data`, `data`, and `DATA` the same or different
variables? Write code that declares these three variables and assign
different values to illustrate your answer. \
#emph[Hint:] Try printing their values.



#strong[Q4: Keyword Usage Tryout] \
#emph[Concept Tested:] Prohibition of keywords as identifiers \
#emph[Problem:] What happens if you try to declare a variable named
`return`? Write code and compile it. \
#emph[Hint:] Check compiler errors and explain why.



#strong[Q5: Naming Convention Discussion] \
#emph[Concept Tested:] Naming conventions and readability \
#emph[Problem:] Given the variable describing user's age, write
variables using snake\_case and camelCase naming conventions. Explain
which one you prefer and why. \
#emph[Hint:] Discuss readability and common team practices.



=== 3. Homework Practice Questions
<homework-practice-questions>



#strong[Q1: Create Valid Variable Names] \
#emph[Problem:] Create five valid and descriptive variable names for a
program tracking a book's title, number of pages, price, author's last
name, and publication year. \
#emph[Difficulty:] Easy \
#emph[Key Concept:] Naming identifiers and clarity.



#strong[Q2: Identify Errors in Declarations] \
#emph[Problem:] Analyze the following declarations and identify errors
(if any). Explain why.

```c
int char_type;
float 1st_score;
double total$amount;
int _valid_name;
```

#emph[Difficulty:] Medium \
#emph[Key Concept:] Syntax and rules for identifiers.



#strong[Q3: Distinguish Identifiers and Keywords] \
#emph[Problem:] List 10 C keywords and 10 valid identifiers that could
be used in programs. Explain why keywords cannot be identifiers. \
#emph[Difficulty:] Medium \
#emph[Key Concept:] Understanding of keywords vs identifiers.



#strong[Q4: Write Code Demonstrating Naming Rules] \
#emph[Problem:] Write a small code snippet that tries to declare
variables with invalid names, then correct those names and print their
values. Comment on what errors were observed and fixed. \
#emph[Difficulty:] Medium \
#emph[Key Concept:] Practical application of naming rules.



#strong[Q5: Naming Conventions in Your Style] \
#emph[Problem:] Choose a small program you have written or create a new
one that uses at least 5 variables and 2 functions. Refactor their names
using a consistent naming convention (camelCase or snake\_case). Explain
your choice. \
#emph[Difficulty:] Hard \
#emph[Key Concept:] Consistency and best practices in naming.



=== Additional Tips for Teaching:
<additional-tips-for-teaching>
- Use live coding for immediate feedback.
- Encourage peer discussion and group problem solving during practice.
- Reinforce concepts by repeatedly referencing rules as bugs emerge.
- Use visual aids such as charts for keyword lists and naming rules.
