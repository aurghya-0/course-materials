Certainly! Below is a comprehensive teaching guideline for the topic
#strong["If statement, if-else statement"] tailored for a C programming
bootcamp. It is designed to maximize clarity, engagement, and
reinforcement of concepts.



= Teaching Guideline: If Statement and If-Else Statement in C
<teaching-guideline-if-statement-and-if-else-statement-in-c>



== 1. Teaching Outline
<teaching-outline>
=== A. Introduction to Conditional Statements
<a.-introduction-to-conditional-statements>
- #strong[Definition:] Explain what a conditional statement is --- a
  programming construct that allows the execution of certain code blocks
  only if specific conditions are true.
- #strong[Importance:] Why decisions matter in programming (controlling
  flow).

=== B. Key Definitions
<b.-key-definitions>
- #strong[if statement:] A statement that executes a block of code if
  its condition evaluates to true.
- #strong[if-else statement:] A statement that executes one block of
  code if the condition is true, and another if it is false.
- #strong[Condition/Expression:] An expression that evaluates to either
  true (non-zero) or false (zero).
- #strong[Boolean context in C:] Any non-zero value is true, zero is
  false.

=== C. Syntax and Structure
<c.-syntax-and-structure>
+ #strong[If statement syntax:]

  ```c
  if (condition) {
      // code to execute if condition is true
  }
  ```

+ #strong[If-else statement syntax:]

  ```c
  if (condition) {
      // code if condition is true
  } else {
      // code if condition is false
  }
  ```

+ #strong[Important notes:]

  - Curly braces `{}` are optional for a single statement, but
    recommended for clarity.
  - Conditions must be enclosed in parentheses.
  - Conditions typically involve comparison operators (`==`, `!=`, `<`,
    `>`, `<=`, `>=`).

=== D. Examples and Demonstrations
<d.-examples-and-demonstrations>
- #strong[Simple if example:]

  ```c
  int num = 10;
  if (num > 5) {
      printf("Number is greater than 5\n");
  }
  ```

- #strong[If-else example:]

  ```c
  int age = 20;
  if (age >= 18) {
      printf("You are an adult.\n");
  } else {
      printf("You are a minor.\n");
  }
  ```

- #strong[Single statement without braces:]

  ```c
  if (num == 0)
      printf("Zero\n");
  ```

=== E. Common Mistakes to Avoid
<e.-common-mistakes-to-avoid>
- Forgetting parentheses around conditions.
- Misusing assignment `=` instead of equality `==` inside conditions.
- Omitting curly braces and causing confusion with multiple statements.
- Not understanding that any non-zero value is true, zero is false.
- Using float/double equality checks without care (advanced, mention
  briefly).

=== F. Real-World Applications
<f.-real-world-applications>
- #strong[Input validation:] Check if user input meets criteria.
- #strong[Decision-making:] Branch logic to offer different outputs or
  steps.
- #strong[Simple security checks:] For instance, password validation.
- #strong[Controlling game logic:] Conditions for moving to next level
  or scoring.
- Useful even in embedded systems, data processing, and user interfaces.



== 2. In-Class Practice Questions
<in-class-practice-questions>
=== Question 1: Basic Condition Check
<question-1-basic-condition-check>
#strong[Problem:] Write an `if` statement that prints "Even number" if a
variable `num` contains an even number. \
#strong[Concept tested:] Basic if statement and modulo operator.

#emph[Hint:] Use `num % 2 == 0` for even check.



=== Question 2: If-Else Decision Making
<question-2-if-else-decision-making>
#strong[Problem:] Write an if-else that checks whether an input integer
`score` is at least 50. Print "Pass" if true, else print "Fail". \
#strong[Concept tested:] If-else syntax and relational operators.



=== Question 3: Single Statement Without Braces
<question-3-single-statement-without-braces>
#strong[Problem:] Write an if statement without braces that prints
"Positive" if a variable `x` is greater than zero. \
#strong[Concept tested:] Single statement if without `{}`.

#emph[Hint:] Remember only the next statement after if is part of the
conditional.



=== Question 4: Nested If-Else (Conceptual)
<question-4-nested-if-else-conceptual>
#strong[Problem:] How would you write code that checks if a number `n`
is positive, zero, or negative and print a message accordingly? \
#strong[Concept tested:] Nesting if-else or multiple else if statements.



=== Question 5: Common Mistake Debugging
<question-5-common-mistake-debugging>
#strong[Problem:] What is wrong with this code? Fix it.

```c
int a = 5;
if (a = 10) {
    printf("a is 10\n");
} else {
    printf("a is not 10\n");
}
```

#strong[Concept tested:] Difference between assignment `=` and equality
`==`.



== 3. Homework Practice Questions
<homework-practice-questions>
=== HW Question 1: Temperature Check (Basic)
<hw-question-1-temperature-check-basic>
Write a program that reads an integer temperature value and prints: -
"Cold" if temp \< 10 - "Warm" if temperature is between 10 and 30
(inclusive) - "Hot" if temperature is above 30 \
#emph[Key concepts:] if, if-else if-else ladder



=== HW Question 2: Voting Eligibility (Conditional)
<hw-question-2-voting-eligibility-conditional>
Write a program to check if a person is eligible to vote. The program
should take age as input and print "Eligible to vote" if age is 18 or
above, otherwise print "Not eligible". \
#emph[Difficulty:] Easy \
#emph[Concept tested:] Simple if-else



=== HW Question 3: Largest of Two Numbers
<hw-question-3-largest-of-two-numbers>
Write a program that takes two numbers as input and prints the greater
number using if-else. \
#emph[Concept tested:] if-else comparison



=== HW Question 4: Grade Classification (Intermediate)
<hw-question-4-grade-classification-intermediate>
Write a program that takes a score (0 - 100) and prints the grade: - A
if score ≥ 90 - B if score is ≥ 75 but less than 90 - C if score is ≥ 50
but less than 75 - F otherwise \
#emph[Concept:] Chained if-else, logical operators



=== HW Question 5: Debugging and Explanation (Conceptual)
<hw-question-5-debugging-and-explanation-conceptual>
Explain what is wrong with the following snippet and correct it:

```c
int x = -5;
if (x > 0);
    printf("Positive number\n");
else
    printf("Non-positive number\n");
```

#emph[Concept tested:] Semicolon after if, proper condition block



= Additional Teaching Tips
<additional-teaching-tips>
- Use live coding to demonstrate each example.
- Encourage students to type and run examples themselves.
- Pair programming or small group discussions for the nested if-else
  problem.
- Use visual flowcharts to explain how if-else branching works.
- Explain how conditions are evaluated to motivate using correct
  operators.
- Reinforce the "common mistakes" slide by intentionally making errors
  and debugging aloud.
- Always relate back to real-world usage scenarios for motivation.



This guideline ensures a thorough understanding of basic conditional
statements in C and provides varied practice for students at different
skill levels.
