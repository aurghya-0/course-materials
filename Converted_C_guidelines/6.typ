= Organize Numbers, Square Root, Factorial, Fibonacci in C
<teaching-guideline-organize-numbers-square-root-factorial-fibonacci-in-c>

=== 1. Teaching Outline
<teaching-outline>

==== A. Introduction and Key Definitions
<a.-introduction-and-key-definitions>
- #strong[Ascending Order];: Sorting numbers from smallest to largest.
- #strong[Square Root];: A value that, when multiplied by itself, gives
  the original number.
- #strong[Factorial (n!)];: Product of all positive integers up to n
  (e.g., 5! = 5×4×3×2×1 = 120).
- #strong[Fibonacci Sequence];: A series where each number is the sum of
  the two preceding ones, starting from 0 and 1.

==== B. Important Syntax and Rules
<b.-important-syntax-and-rules>
+ #strong[Arrays and Loops]

  - Declaration and initialization (e.g., `int arr[5];`)
  - Traversing arrays using `for` loops.

+ #strong[Sorting Numbers]

  - Simple sorting algorithms (Bubble Sort explained for beginners).
  - Using nested loops to compare and swap values.

+ #strong[Math Functions]

  - Using `math.h` for square root: `#include <math.h>` and `sqrt()`
    function.
  - Know that `sqrt()` returns a `double`.

+ #strong[Factorial Computation]

  - Using loops (iteration) or recursion.
  - Handling edge cases (0! = 1).

+ #strong[Fibonacci Sequence Generation]

  - Iterative approach with loops.
  - Recursive approach (simple understanding encouraged, but beware of
    inefficiency).



==== C. Examples and Demonstrations
<c.-examples-and-demonstrations>
- #strong[Sorting Example];: Sort 5 numbers input by user.
- #strong[Square Root Example];: Compute square root of a user input
  using `sqrt()`.
- #strong[Factorial Example];: Compute factorial of a user input using
  iterative method.
- #strong[Fibonacci Example];: Print first `n` Fibonacci numbers
  iteratively.



==== D. Common Mistakes to Avoid
<d.-common-mistakes-to-avoid>
- Forgetting to include `<math.h>` and not linking with `-lm` if
  necessary.
- Using float for factorial (should use `long long` for bigger values).
- Infinite loops due to incorrect loop conditions.
- Confusing array indexing boundaries (off-by-one errors).
- Stack overflow in recursion if factorial or Fibonacci is implemented
  naively for large numbers.



==== E. Real-World Applications (Brief Discussion)
<e.-real-world-applications-brief-discussion>
- Sorting: Data organization and retrieval systems.
- Square root: Calculations in geometry, physics.
- Factorial: Combinatorics, probability calculations.
- Fibonacci: Algorithms, stock market analyses, nature modeling.



=== 2. In-Class Practice Questions
<in-class-practice-questions>



==== Question 1: Sort an Array in Ascending Order
<question-1-sort-an-array-in-ascending-order>
- #strong[Problem:] Write a program to input 5 integers and sort them in
  ascending order using Bubble Sort.
- #strong[Concept Tested:] Arrays, loops, basic sorting algorithm.
- #strong[Hint:] Compare adjacent elements and swap if out of order.



==== Question 2: Compute and Print Square Root
<question-2-compute-and-print-square-root>
- #strong[Problem:] Take a positive integer input and print its square
  root using the `sqrt()` function.
- #strong[Concept Tested:] Using math library functions, data types
  conversion.
- #strong[Hint:] Include `<math.h>` and remember to compile with `-lm`.



==== Question 3: Calculate Factorial Iteratively
<question-3-calculate-factorial-iteratively>
- #strong[Problem:] Write a program that computes the factorial of a
  given non-negative integer iteratively.
- #strong[Concept Tested:] Loops, data types, factorial logic.
- #strong[Hint:] Result can grow large; consider using `long long`.



==== Question 4: Generate Fibonacci Sequence Iteratively
<question-4-generate-fibonacci-sequence-iteratively>
- #strong[Problem:] Print the first `n` numbers of the Fibonacci
  sequence iteratively.
- #strong[Concept Tested:] Loops, logic for sequence generation.
- #strong[Hint:] Start with 0 and 1, then add the last two numbers to
  get the next.



==== Question 5: Recursive Factorial Function
<question-5-recursive-factorial-function>
- #strong[Problem:] Implement a recursive function to compute factorial
  and test it for values from 0 to 5.
- #strong[Concept Tested:] Recursion fundamentals.
- #strong[Hint:] Base case is factorial of 0 = 1.



=== 3. Homework Practice Questions
<homework-practice-questions>



==== Question 1: Sort an Array with User-defined Size
<question-1-sort-an-array-with-user-defined-size>
- Write a program that takes `n` integers from user input and sorts them
  in ascending order using Bubble Sort.
- #emph[Difficulty:] Beginner-Intermediate
- #emph[Key Concept:] Dynamic use of arrays and loops.



==== Question 2: Square Root Without Using `sqrt()`
<question-2-square-root-without-using-sqrt>
- Implement a program to compute the square root of a number using the
  approximation method (e.g., Babylonian/Newton method).
- #emph[Difficulty:] Intermediate
- #emph[Key Concept:] Looping, approximation algorithms.



==== Question 3: Factorial Using Recursion with Input Validation
<question-3-factorial-using-recursion-with-input-validation>
- Write a recursive factorial program that validates input (no negative
  numbers). If input is invalid, prompt again.
- #emph[Difficulty:] Intermediate
- #emph[Key Concept:] Recursion, input validation.



==== Question 4: Fibonacci Using Recursion with Memoization (Conceptual)
<question-4-fibonacci-using-recursion-with-memoization-conceptual>
- Research how memoization can optimize Fibonacci recursion. Write a
  simple recursive Fibonacci program and explain the problem with
  repeated calculations.
- #emph[Difficulty:] Intermediate-Advanced (Research-based)
- #emph[Key Concept:] Recursion efficiency, optimization.



==== Question 5: Sort Floating Point Numbers
<question-5-sort-floating-point-numbers>
- Modify sorting program to work with floating-point numbers (e.g.,
  array of `double`) instead of integers.
- #emph[Difficulty:] Intermediate
- #emph[Key Concept:] Data types, sorting with different types.
