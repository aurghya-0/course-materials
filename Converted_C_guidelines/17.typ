= Teaching Guideline: Decision Making within a Program (C Language)
<teaching-guideline-decision-making-within-a-program-c-language>



== 1. Teaching Outline
<teaching-outline>
=== Introduction to Decision Making
<introduction-to-decision-making>
- #strong[Key Definition];: \
  Decision making in programming refers to the ability to choose
  different paths of execution based on certain conditions. This allows
  programs to respond dynamically to input or data.

=== Subtopics & Concepts
<subtopics-concepts>
==== a. Conditional Statements Overview
<a.-conditional-statements-overview>
- #strong[if statement]
  - Syntax and usage \
  - Single statement vs.~block statement \
- #strong[if-else statement]
  - Structure and flow \
  - Nesting if-else \
- #strong[else if ladder]
  - Handling multiple conditions sequentially \
- #strong[switch-case statement]
  - When to use switch \
  - Syntax rules and break statement importance \
  - Default case

==== b. Boolean Expressions and Logical Operators
<b.-boolean-expressions-and-logical-operators>
- #strong[Relational operators];: `<`, `>`, `<=`, `>=`, `==`, `!=` \
- #strong[Logical operators];: `&&` (AND), `||` (OR), `!` (NOT) \
- Truth tables and evaluation order \
- Combining conditions

==== c.~Syntax and Rules
<c.-syntax-and-rules>
- Proper use of parentheses `()` in conditions \
- Curly braces `{}` for blocks of code \
- Semicolon placement and common syntax errors \
- Importance of break in switch statements \
- Scope of variables inside decision blocks

==== d.~Common Mistakes to Avoid
<d.-common-mistakes-to-avoid>
- Using assignment `=` instead of equality `==` in if conditions \
- Missing braces leading to ambiguous code execution \
- Forgetting break in switch cases causing fall-through bugs \
- Over-nesting leading to hard-to-read code \
- Mixing logical operator precedence without parentheses

==== e. Real-World Applications
<e.-real-world-applications>
- Input validation (e.g., checking user input validity) \
- Menu-driven programs using switch-case \
- Grading systems using if-else if ladder \
- Device control decisions (e.g., turning devices ON/OFF based on sensor
  input) \
- Error handling and exception conditions



== 2. In-Class Practice Questions
<in-class-practice-questions>
=== Question 1: Basic if statement
<question-1-basic-if-statement>
#strong[Problem:] Write a program snippet that checks if a number is
positive and prints `"Positive number"` if true. \
#strong[Concept:] Simple if condition \
#strong[Hint:] Use `if (number > 0)`



=== Question 2: if-else for even/odd check
<question-2-if-else-for-evenodd-check>
#strong[Problem:] Write code to check if a number is even or odd and
print the result accordingly. \
#strong[Concept:] if-else condition \
#strong[Hint:] Use modulus operator `%`



=== Question 3: else-if ladder for grade evaluation
<question-3-else-if-ladder-for-grade-evaluation>
#strong[Problem:] Given an integer grade (0-100), write an if-else if
ladder to print the letter grade (A, B, C, D, F). \
#strong[Concept:] Multiple conditional decisions \
#strong[Hint:] Check ranges using inequalities (e.g., `grade >= 90`)



=== Question 4: Switch-case for menu options
<question-4-switch-case-for-menu-options>
#strong[Problem:] Implement a switch-case statement to print the name of
a day based on a number (1 for Sunday, …, 7 for Saturday). \
#strong[Concept:] switch-case statements \
#strong[Hint:] Remember to add `break` after each case



=== Question 5: Logical operators in combined conditions
<question-5-logical-operators-in-combined-conditions>
#strong[Problem:] Write a condition to check if a number is in the range
50 to 100 (inclusive), and also divisible by 5. Print `"Valid"` if true.
\
#strong[Concept:] Combining relational and logical operators (`&&`) \
#strong[Hint:] Use `(number >= 50 && number <= 100 && number % 5 == 0)`



== 3. Homework Practice Questions
<homework-practice-questions>
=== Homework 1: Negative or zero check (Basic)
<homework-1-negative-or-zero-check-basic>
#strong[Problem:] Write a program that reads an integer and prints
`"Negative"`, `"Zero"`, or `"Positive"` using if-else if ladder.



=== Homework 2: Leap year checker (Intermediate)
<homework-2-leap-year-checker-intermediate>
#strong[Problem:] Write code to determine if a year entered by the user
is a leap year. A year is a leap year if it is divisible by 4 but not by
100, except if it is divisible by 400. \
#strong[Key Concept:] Nested if and logical operators



=== Homework 3: Switch-case fall-through (Conceptual)
<homework-3-switch-case-fall-through-conceptual>
#strong[Problem:] Explain what happens if `break` statements are omitted
in a switch-case. Use a small example in your explanation. \
#strong[Key Concept:] Understanding flow control and fall-through
behavior



=== Homework 4: Calculator program (Advanced)
<homework-4-calculator-program-advanced>
#strong[Problem:] Create a simple calculator using switch-case that can
add, subtract, multiply, or divide two numbers based on user input for
the operation (+, -, \*, /). Handle division by zero with an appropriate
message. \
#strong[Key Concept:] switch-case, input handling, basic arithmetic



=== Homework 5: Complex condition logic (Advanced)
<homework-5-complex-condition-logic-advanced>
#strong[Problem:] Write an if-else block to check if a character entered
is a vowel (case-insensitive). Use logical operators to combine
conditions and print `"Vowel"` or `"Not a vowel"`. \
#strong[Key Concept:] Multiple condition checks with logical OR (`||`)



= Additional Notes for Teachers
<additional-notes-for-teachers>
- Encourage live coding and interactive examples during teaching. \
- Use visuals/flowcharts to explain decision paths. \
- Reinforce the importance of readability and avoiding deep nesting. \
- Suggest students test edge cases for their decision logic blocks. \
- Highlight how decision making improves user experience in
  applications.



This guideline should help teachers deliver a clear, engaging session on
decision making in C programming, building foundational skills critical
to writing dynamic programs.
