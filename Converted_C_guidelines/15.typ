#strong[Teaching Guideline: Simple Assignment Statement & Basic
Input/Output Statements in C]



== 1. Teaching Outline
<teaching-outline>
=== I. Introduction to Simple Assignment Statements
<i.-introduction-to-simple-assignment-statements>
- #strong[Definition:] \
  Explanation that an assignment statement in C stores a value into a
  variable. The general format: \
  `variable = expression;` \

- #strong[Purpose:] \
  To assign or update data in a variable for later use.

- #strong[Key Points:]

  - Variables must be declared before assignment. \
  - Assignment operator `=` is different from equality operator `==`. \
  - Expressions on the right side can be constants, variables, or
    results of operations.

=== II. Syntax and Rules of Assignment
<ii.-syntax-and-rules-of-assignment>
- Variable declaration syntax (e.g., `int a;`, `float x;`) \
- Assignment syntax (e.g., `a = 5;`, `x = 3.14;`) \
- Multiple assignments and chained assignments (e.g., `a = b = 10;`) \
- Assignment with arithmetic expressions (e.g., `a = b + 2;`)

=== III. Basic Input/Output in C
<iii.-basic-inputoutput-in-c>
- #strong[Input statement:] \
  Using `scanf()` for user input, format specifiers (`%d`, `%f`, `%c`,
  `%s`) \
  Syntax example: `scanf("%d", &a);` \
- #strong[Output statement:] \
  Using `printf()` to display output, format specifiers usage \
  Syntax example: `printf("Value of a = %d\n", a);`

=== IV. Demonstrations
<iv.-demonstrations>
- Show simple programs combining assignments and I/O \
- Example 1: Assign a constant value to a variable and print it \
- Example 2: Take user input into a variable, assign a new value, and
  display results

=== V. Common Mistakes and How to Avoid Them
<v.-common-mistakes-and-how-to-avoid-them>
- Forgetting the `&` address operator in `scanf()` \
- Mixing assignment `=` with equality `==` \
- Using variables without initialization \
- Format specifier mismatches in `scanf`/`printf` \
- Missing semicolons (`;`) at the end of statements

=== VI. Real-World Applications
<vi.-real-world-applications>
- Gathering user input to make decisions in programs \
- Storing and modifying data dynamically at runtime \
- Basic data processing like simple calculators, data logging, or
  settings input



== 2. In-Class Practice Questions
<in-class-practice-questions>



=== Question 1: Simple Assignment and Output
<question-1-simple-assignment-and-output>
#strong[Problem:] Declare an integer variable `x`, assign it the value
`10`, and print its value. \
#strong[Concept:] Understanding variable declaration, assignment, and
`printf`. \
#strong[Hint:] Use `int x; x = 10; printf("%d", x);`



=== Question 2: User Input and Assignment
<question-2-user-input-and-assignment>
#strong[Problem:] Write a program that asks the user to enter an integer
and stores it in variable `num`. Then print the value entered. \
#strong[Concept:] Using `scanf` and assignments. \
#strong[Hint:] Remember to use `&` in `scanf`.



=== Question 3: Assignment with Arithmetic Expression
<question-3-assignment-with-arithmetic-expression>
#strong[Problem:] Take two integers input from the user, assign their
sum to a variable `sum`, and print it. \
#strong[Concept:] Combining input, assignment, and arithmetic. \
#strong[Hint:] `sum = a + b;`



=== Question 4: Chained Assignment
<question-4-chained-assignment>
#strong[Problem:] Demonstrate chained assignment by assigning `25` to
variables `a`, `b`, and `c`, then print their values. \
#strong[Concept:] Multiple assignments in one statement.



=== Question 5: Format Specifier Mismatch Example
<question-5-format-specifier-mismatch-example>
#strong[Problem:] What happens if you try to print an integer variable
using `%f` in `printf`? Modify the code to fix the issue. \
#strong[Concept:] Format specifiers and type safety. \
#strong[Hint:] `%d` is for integers, `%f` for floats.



== 3. Homework Practice Questions
<homework-practice-questions>



=== Question 1: Declare and Assign
<question-1-declare-and-assign>
Declare variables of types `int`, `float`, and `char`. Assign values to
each and print them correctly with matching format specifiers.



=== Question 2: Input and Calculate Area
<question-2-input-and-calculate-area>
Write a program to input the length and width of a rectangle and compute
its area using assignment statements. Print the area with a descriptive
message.



=== Question 3: Temperature Conversion
<question-3-temperature-conversion>
Input temperature in Celsius from the user, assign the converted
temperature in Fahrenheit to a variable using the formula: \
`F = (C * 9/5) + 32` \
Print the Fahrenheit temperature.



=== Question 4: Assignment vs Equality
<question-4-assignment-vs-equality>
Explain the difference between the assignment operator `=` and equality
operator `==`. Give code examples illustrating common mistakes when
confusing these.



=== Question 5: Debug the Given Code
<question-5-debug-the-given-code>
Given the following code snippet, identify and fix errors related to
assignment and input/output:

```c
int number;  
printf("Enter number: ");  
scanf("%d", number);  
number = 5;  
printf("Number = %f\n", number);
```



#strong[Note:] \
This guideline is designed for a beginner-friendly but technically sound
introduction to simple assignment and input/output in C. Emphasize
active participation with live coding and encourage questions during
demo sessions for concept reinforcement.
