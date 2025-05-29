= Loop Statements in C
<teaching-guideline-loop-statements-in-c>



== 1. Teaching Outline
<teaching-outline>
=== Introduction to Loop Statements
<introduction-to-loop-statements>
- #strong[Definition:] What is a loop?
  - A loop allows repeating a block of code multiple times based on a
    condition.
- #strong[Why loops are important:]
  - Automate repetitive tasks.
  - Save time and reduce errors compared to writing repeated code
    manually.



=== Types of Loops in C
<types-of-loops-in-c>
- #strong[for loop]
- #strong[while loop]
- #strong[do-while loop]



=== Syntax and Rules
<syntax-and-rules>
==== For Loop
<for-loop>
- Basic syntax:

  ```c
  for (initialization; condition; increment/decrement) {
      // statements
  }
  ```

- Execution flow explanation:

  - Initialization happens once.
  - Condition is checked before each iteration.
  - Statements execute if condition is true.
  - Increment/decrement runs after each iteration.

- Example:

  ```c
  for(int i = 0; i < 5; i++) {
      printf("%d\n", i);
  }
  ```

==== While Loop
<while-loop>
- Basic syntax:

  ```c
  while(condition) {
      // statements
  }
  ```

- Execution flow explanation:

  - Condition checked first.
  - If true, statements execute.
  - Repeat until condition becomes false.

- Example:

  ```c
  int i = 0;
  while(i < 5) {
      printf("%d\n", i);
      i++;
  }
  ```

==== Do-While Loop
<do-while-loop>
- Basic syntax:

  ```c
  do {
      // statements
  } while(condition);
  ```

- Execution flow explanation:

  - Statements execute first.
  - Condition checked after execution.
  - Ensures code inside loop runs at least once.

- Example:

  ```c
  int i = 0;
  do {
      printf("%d\n", i);
      i++;
  } while(i < 5);
  ```



=== Important Concepts and Rules
<important-concepts-and-rules>
- Loop variables and scope.
- Condition must eventually become false to avoid infinite loops.
- Nested loops: Using one loop inside another.
- Loop control statements: `break`, `continue`.
  - `break` exits loop immediately.
  - `continue` skips current iteration, continues next.



=== Examples and Demonstrations
<examples-and-demonstrations>
- Print numbers 1 to 10 using each loop type.
- Sum of first N natural numbers.
- Nested loop example: print multiplication table.
- Using `break`: Exit loop if a certain condition met.
- Using `continue`: Skip even numbers while printing 1 to 10.



=== Common Mistakes to Avoid
<common-mistakes-to-avoid>
- Forgetting to update the loop variable → leads to infinite loops.
- Off-by-one errors in the loop condition.
- Incorrect loop condition (e.g., using assignment `=` instead of
  comparison `==`).
- Misunderstanding the difference between `while` and `do-while`.
- Using `break` or `continue` incorrectly causing logic issues.
- Not initializing loop variables properly.



=== Real-World Applications
<real-world-applications>
- Iterating through arrays or strings.
- Repeatedly taking user input until valid.
- Processing or filtering data sets.
- Building patterns or shapes in console output.
- Running timed or limited cycles in program logic.



== 2. In-Class Practice Questions
<in-class-practice-questions>
=== Question 1: Basic For Loop
<question-1-basic-for-loop>
#strong[Problem:] Write a `for` loop that prints numbers from 0 to 5. \
#strong[Concept:] Basic for loop syntax and iteration. \
#strong[Hint:] Remember the loop condition should stop after 5.



=== Question 2: While Loop with Update
<question-2-while-loop-with-update>
#strong[Problem:] Use a `while` loop to print odd numbers between 1 and
15. \
#strong[Concept:] `while` loop condition and incrementing variable
inside loop. \
#strong[Hint:] Increment by 2 each iteration or check odd condition
inside.



=== Question 3: Do-While Loop Usage
<question-3-do-while-loop-usage>
#strong[Problem:] Write a program that asks the user to enter a positive
number and uses a `do-while` loop to keep asking until the input is
positive. \
#strong[Concept:] Do-while guarantees the loop body runs at least once.
\
#strong[Hint:] Use `scanf` to get input and check condition after.



=== Question 4: Nested Loops --- Multiplication Table
<question-4-nested-loops-multiplication-table>
#strong[Problem:] Use nested `for` loops to print the multiplication
table from 1 to 5. \
#strong[Concept:] Nested loops and inner/outer loop controls. \
#strong[Hint:] Outer loop controls rows, inner controls columns.



=== Question 5: Break and Continue Control Statements
<question-5-break-and-continue-control-statements>
#strong[Problem:] Write a loop to print numbers from 1 to 10 but skip 5
and stop the loop completely if the number reaches 8. \
#strong[Concept:] Using `continue` and `break` inside loops. \
#strong[Hint:] Use conditions inside the loop body.



== 3. Homework Practice Questions
<homework-practice-questions>
=== Homework 1: Sum of Even Numbers
<homework-1-sum-of-even-numbers>
#strong[Problem:] Write a program using any loop type to calculate the
sum of all even numbers between 1 and 50. \
#strong[Difficulty:] Easy \
#strong[Concept:] Looping with condition and accumulation.



=== Homework 2: Reverse Counting
<homework-2-reverse-counting>
#strong[Problem:] Print numbers from 10 down to 1 using a `for` loop. \
#strong[Difficulty:] Easy \
#strong[Concept:] Loop decrement.



=== Homework 3: Validate Input Using Loops
<homework-3-validate-input-using-loops>
#strong[Problem:] Prompt the user repeatedly to enter an integer between
10 and 20 (inclusive). Use a `while` or `do-while` loop to validate
input and continue prompting until valid. \
#strong[Difficulty:] Moderate \
#strong[Concept:] Input validation with loop conditions.



=== Homework 4: Nested Loop Pattern Printing
<homework-4-nested-loop-pattern-printing>
#strong[Problem:] Use nested loops to print this pattern:

```
*
**
***
****
*****
```

#strong[Difficulty:] Moderate \
#strong[Concept:] Nested loops and pattern printing.



=== Homework 5: Detect Prime Numbers Using Loop
<homework-5-detect-prime-numbers-using-loop>
#strong[Problem:] Write a program to check if a given number is prime by
using a loop to check divisibility. \
#strong[Difficulty:] Advanced beginner \
#strong[Concept:] Loop with conditional checks and break inside loops.


#strong[Note:] For all coding exercises, encourage students to: - Write
clean, readable code. - Add comments explaining their logic. - Think
about edge cases (e.g., zero, negative inputs etc.).
