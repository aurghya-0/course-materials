= Simple C Programs of the Given Algorithms
<teaching-guideline-simple-c-programs-of-the-given-algorithms>

== 1. Teaching Outline
<teaching-outline>
=== Introduction
<introduction>
- #strong[What is an algorithm?] \
  Step-by-step procedure to solve a problem logically.
- #strong[Why use algorithms in C programming?] \
  Algorithms help design efficient and correct programs.



=== Key Definitions
<key-definitions>
- #strong[Algorithm:] Sequence of instructions to solve a problem.
- #strong[Flowchart:] Visual representation of an algorithm.
- #strong[Pseudocode:] Plain language representation of algorithms.
- #strong[Syntax:] Set of rules for writing valid C programs.
- #strong[Data Types:] int, float, char, etc., used in variables.
- #strong[Control Structures:] if-else, loops (for, while, do-while).



=== Important Syntax and Rules in C
<important-syntax-and-rules-in-c>
- Program structure: `#include` directives, `main()` function, braces
  `{}`, semicolons `;`.
- Variable declaration and initialization.
- Basic input-output: `printf()`, `scanf()`.
- Operators: arithmetic, relational, logical.
- Control statements syntax.
- Function usage (brief intro if time permits).



=== Core Algorithms to Cover (with C program demonstrations)
<core-algorithms-to-cover-with-c-program-demonstrations>
- #strong[Finding the Largest of Three Numbers]
- #strong[Checking Even or Odd Number]
- #strong[Calculating Factorial of a Number]
- #strong[Sum of Natural Numbers using Loop]
- #strong[Simple Fibonacci Series Generation]



=== Examples and Demonstrations
<examples-and-demonstrations>
For each algorithm: - Explain the problem it solves. - Write stepwise
algorithm/pseudocode. - Translate to C code highlighting syntax. -
Compile and run to see output. - Modify code interactively (e.g., change
input values).

Example: - Largest of Three Numbers:

```c
#include <stdio.h>
int main() {
    int a, b, c;
    printf("Enter three numbers: ");
    scanf("%d%d%d", &a, &b, &c);
    if (a >= b && a >= c)
        printf("Largest is %d\n", a);
    else if (b >= a && b >= c)
        printf("Largest is %d\n", b);
    else
        printf("Largest is %d\n", c);
    return 0;
}
```



=== Common Mistakes to Avoid
<common-mistakes-to-avoid>
- Forgetting semicolons.
- Using wrong format specifiers in `scanf()`/`printf()`.
- Mixing up `=` (assignment) and `==` (comparison).
- Incorrect use of logical operators.
- Not initializing variables before use.
- Infinite loops due to wrong loop conditions.



=== Real-World Applications
<real-world-applications>
- Fundamental programming skills needed for software development.
- Problem-solving in embedded systems, game development, and automation.
- Foundation for learning data structures and algorithms.



== 2. In-Class Practice Questions
<in-class-practice-questions>
+ #strong[Problem:] Write a C program that takes one integer input and
  prints whether it is positive, negative, or zero. \
  #strong[Concept Tested:] if-else structure, relational operators. \
  #strong[Hint:] Use `if`, `else if` and `else` statements.

+ #strong[Problem:] Write a C program to print the first 10 even numbers
  using a for loop. \
  #strong[Concept Tested:] for loop and arithmetic operators. \
  #strong[Hint:] Even numbers can be checked using `%` (modulus).

+ #strong[Problem:] Implement a program to find the factorial of a
  number using a while loop. \
  #strong[Concept Tested:] loops, multiplication, variables
  initialization. \
  #strong[Hint:] Factorial of n = n \* (n-1) \* … \* 1.

+ #strong[Problem:] Write a program that checks if a number is a
  palindrome (reads same forwards and backwards) assuming input is a
  3-digit number. \
  #strong[Concept Tested:] integer operations and control statements. \
  #strong[Hint:] Extract digits using `% 10` and `/ 10`.

+ #strong[Problem:] Write a program to generate the first N Fibonacci
  numbers, where N is user input. \
  #strong[Concept Tested:] loops, variable swapping, sequence
  generation. \
  #strong[Hint:] Fibonacci starts with 0 and 1; next = sum of previous
  two.



== 3. Homework Practice Questions
<homework-practice-questions>
+ #strong[Problem:] Write a program to find the smallest of three
  numbers entered by the user. \
  #strong[Difficulty:] Easy \
  #strong[Concept:] Conditional operators and if-else chaining.

+ #strong[Problem:] Write a C program to calculate the sum of digits of
  a given integer. \
  #strong[Difficulty:] Medium \
  #strong[Concept:] Loops, modulus operator, integer arithmetic.

+ #strong[Problem:] Implement a program to display all prime numbers
  between 1 and 100. \
  #strong[Difficulty:] Medium \
  #strong[Concept:] Nested loops, conditional checks, optimization with
  early break.

+ #strong[Problem:] Write a program to reverse a number input by the
  user. \
  #strong[Difficulty:] Medium \
  #strong[Concept:] Loops, arithmetic manipulation, variable updates.

+ #strong[Problem:] Write a program that uses a switch-case statement to
  print the day of the week based on a number input (1-7). \
  #strong[Difficulty:] Easy \
  #strong[Concept:] switch-case structure, input validation.



= Additional Tips for Teaching
<additional-tips-for-teaching>
- Encourage students to write algorithms before coding.
- Use live coding with explanations for better engagement.
- Incorporate peer reviewing by sharing code.
- Repeat common mistakes and debugging practices.
- Use visual aids for control flow and loops.
- Assign pair programming exercises for collaboration.
