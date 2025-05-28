= Find Square Root of a Quadratic Equation (C Programming)
<teaching-guideline-find-square-root-of-a-quadratic-equation-c-programming>

== 1. Teaching Outline
<teaching-outline>
=== A. Introduction to Quadratic Equations
<a.-introduction-to-quadratic-equations>
- #strong[Key definitions:]
  - Quadratic equation format: ( ax^2 + bx + c = 0 )
  - Coefficients: ( a, b, c )
  - Roots/solutions: solutions (x) satisfying equation
  - Discriminant (D = b^2 - 4ac)
- #strong[Importance of discriminant:]
  - (D \> 0): Two distinct real roots
  - (D = 0): One real root (repeated)
  - (D \< 0): Complex roots (non-real)

=== B. Square Root and Discriminant in Solving Quadratics
<b.-square-root-and-discriminant-in-solving-quadratics>
- Using the quadratic formula: \[ x = \]
- Role of the square root function (`sqrt`) for discriminant calculation
- Handling different cases based on discriminant

=== C. Important C Syntax & Rules
<c.-important-c-syntax-rules>
- Including math library: `#include <math.h>`
- Using `sqrt(double)` function from math library
- Data types: `double` or `float` for roots (precision)
- Validating input to avoid division by zero (e.g., (a ))
- Conditional statements for discriminant checks
- Printing formatted output with `printf` and format specifiers
  (e.g.~`%lf` for double)
- Linking math library during compilation (`-lm` flag)

=== D. Step-by-Step Example Demonstration
<d.-step-by-step-example-demonstration>
- Show example: (2x^2 + 5x - 3 = 0)
- Calculate discriminant in C
- Calculate roots using sqrt
- Print roots
- Show behavior for different discriminant values

=== E. Common Mistakes to Avoid
<e.-common-mistakes-to-avoid>
- Forgetting `#include <math.h>`
- Not adding `-lm` flag during compilation
  (`gcc program.c -o program -lm`)
- Using `int` instead of `double` for roots (less precise)
- Not checking if (a=0) (then not a quadratic equation)
- Trying to sqrt a negative discriminant without handling complex roots
- Poor input validation
- Printing without formatting specifiers or wrong specifiers

=== F. Real-world Applications
<f.-real-world-applications>
- Physics (projectile motion: time to hit ground)
- Engineering (circuit analysis, mechanical systems)
- Computer graphics (parabolas for trajectories)
- Financial modeling (polynomial fitting, curve approximation)



== 2. In-Class Practice Questions
<in-class-practice-questions>
=== Question 1: Calculate Discriminant of Quadratic Equation
<question-1-calculate-discriminant-of-quadratic-equation>
#strong[Problem:] Write a C program to input (a), (b), and (c) and
calculate the discriminant (D = b^2 - 4ac). Print the value of
discriminant. \
#strong[Concept:] Computing discriminant, basic arithmetic,
input/output. \
#strong[Hint:] Use `scanf` for input and `printf` for output.



=== Question 2: Determine Nature of Roots
<question-2-determine-nature-of-roots>
#strong[Problem:] Given (a), (b), and (c), write a program to print if
roots are real and distinct, real and equal, or complex. \
#strong[Concept:] Conditional statements, understanding discriminant
value classification.



=== Question 3: Find Real Roots of Quadratic Equation
<question-3-find-real-roots-of-quadratic-equation>
#strong[Problem:] Extend previous program. If roots are real, calculate
and print both roots using quadratic formula and `sqrt` function.
Otherwise, print "Complex roots". \
#strong[Concept:] Using math library, square root function, formula
implementation.



=== Question 4: Handle Edge Case When (a=0)
<question-4-handle-edge-case-when-a0>
#strong[Problem:] Modify your program to check if input (a=0). If yes,
print "Not a quadratic equation". Otherwise, proceed to find roots. \
#strong[Concept:] Input validation, conditional branching.



=== Question 5: Implement Complex Roots Calculation
<question-5-implement-complex-roots-calculation>
#strong[Problem:] If discriminant is negative, calculate the real and
imaginary parts of the complex roots and print them in `p ± qi` format.
\
#strong[Concept:] Complex roots concept, arithmetic with negative
discriminant.



== 3. Homework Practice Questions
<homework-practice-questions>
=== Homework 1: Validate Input and Loop to Solve Multiple Equations
<homework-1-validate-input-and-loop-to-solve-multiple-equations>
#strong[Problem:] Write a program that repeatedly asks user to input
coefficients (a,b,c) and outputs roots. Stop when the user enters zero
for all coefficients. \
#strong[Difficulty:] Medium \
#strong[Concept:] Loops, input validation, reusing quadratic root logic.



=== Homework 2: Implement a Function to Find Roots
<homework-2-implement-a-function-to-find-roots>
#strong[Problem:] Implement a function
`void findRoots(double a, double b, double c)` that calculates and
prints roots. Call this function in `main()` after user input. \
#strong[Difficulty:] Medium \
#strong[Concept:] Functions, parameter passing, modular programming.



=== Homework 3: Solve Quadratic Equation from a File
<homework-3-solve-quadratic-equation-from-a-file>
#strong[Problem:] Given a text file where each line contains three
coefficients (a,b,c) separated by space, write a program to read file,
solve quadratic equations, and write results to output file. \
#strong[Difficulty:] Advanced \
#strong[Concept:] File I/O, loops, function reuse.



=== Homework 4: Graphical Interpretation (Conceptual)
<homework-4-graphical-interpretation-conceptual>
#strong[Problem:] Write a short essay or program pseudocode explaining
how roots relate to the graph of the quadratic equation (parabola) and
its intersection points on the x-axis. \
#strong[Difficulty:] Easy (conceptual) \
#strong[Concept:] Linking math with programming, visualization.
