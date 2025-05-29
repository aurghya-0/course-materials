= Definition of Functions and Recursion in C
<teaching-guideline-definition-of-functions-and-recursion-in-c>

== 1. Teaching Outline
<teaching-outline>
=== Introduction
<introduction>
- Briefly introduce the concept of modular programming.
- Importance of functions in organizing code, improving readability, and
  reusability.

=== Key Definitions
<key-definitions>
- #strong[Function];: A block of code that performs a specific task, is
  reusable, and can be called multiple times.
- #strong[Function Definition];: The code that specifies what the
  function does.
- #strong[Function Declaration (Prototype)];: Tells the compiler about
  the function name, return type, and parameters before it's used.
- #strong[Function Call];: The act of invoking a function to execute the
  code inside it.
- #strong[Recursion];: A programming technique in which a function calls
  itself directly or indirectly to solve a problem.
- #strong[Base Case and Recursive Case];: Core to writing correct
  recursive functions.

=== Important Syntax and Rules in C
<important-syntax-and-rules-in-c>
- #strong[Function Definition Syntax:]

  ```c
  return_type function_name(parameter_list) {
      // function body
  }
  ```

- #strong[Function Call Syntax:]

  ```c
  variable = function_name(arguments);
  ```

- Proper use of return types (`void` for no return).

- Importance of matching function declarations with definitions.

- Scope of variables in functions (local vs global).

- Recursive function requirements:

  - Base case that stops recursion.
  - Recursive call moving towards the base case.

=== Examples and Demonstrations
<examples-and-demonstrations>
- Simple function example: A function to add two integers.
- Using functions with parameters and return values.
- Recursive function example: Factorial of a number.
- Another recursive example: Fibonacci sequence.
- Stepwise execution walkthrough & call stack visualization for
  recursion.

=== Common Mistakes to Avoid
<common-mistakes-to-avoid>
- Forgetting to return a value when the return type is non-void.
- Incorrect or missing function declarations leading to compilation
  errors.
- Infinite recursion due to missing or incorrect base case.
- Passing wrong arguments or mismatching parameter types.
- Misunderstanding parameter scope and unintended side effects.
- Overusing recursion when iteration is simpler.

=== Real-World Applications
<real-world-applications>
- Using functions to modularize large programs (e.g., sorting
  algorithms, input validation).
- Recursive techniques used in:
  - File system traversal
  - Algorithmic problems like tree traversals, divide and conquer (e.g.,
    quicksort, mergesort)
  - Solving mathematical problems (e.g., combinatorial problems)
- Emphasize the role of recursion in simplifying complex problems.



== 2. In-Class Practice Questions
<in-class-practice-questions>
=== Question 1: Basic Function Definition and Call
<question-1-basic-function-definition-and-call>
#strong[Problem:] Write a function called `square` that takes an integer
as input and returns its square. Call the function and print the result
for the number 5.

- #strong[Concept:] Function definition, parameters, return value.
- #strong[Hint:] Remember to use the return keyword.



=== Question 2: Function with Multiple Parameters
<question-2-function-with-multiple-parameters>
#strong[Problem:] Define a function `max` that takes two integers and
returns the larger of the two. Test it with two different pairs of
numbers.

- #strong[Concept:] Function parameters, conditional statements.
- #strong[Hint:] Use `if` or the ternary operator inside the function.



=== Question 3: Understanding Recursion - Factorial
<question-3-understanding-recursion---factorial>
#strong[Problem:] Write a recursive function `factorial` that computes
the factorial of a given non-negative integer n.

- #strong[Concept:] Recursion, base case, recursive call.
- #strong[Hint:] factorial(0) = 1.



=== Question 4: Recursive Sum of Natural Numbers
<question-4-recursive-sum-of-natural-numbers>
#strong[Problem:] Write a recursive function `sumN` that returns the sum
of the first `n` natural numbers.

- #strong[Concept:] Recursion with numeric calculations and reducing
  problem size.
- #strong[Hint:] sumN(n) = n + sumN(n-1), base case sumN(0) = 0.



=== Question 5: Call Stack Tracing
<question-5-call-stack-tracing>
#strong[Problem:] Given the recursive function below, trace and write
down the order of function calls for `func(3)`.

```c
void func(int n) {
  if (n > 0) {
    printf("%d ", n);
    func(n - 1);
  }
}
```

- #strong[Concept:] Understanding the call stack and execution order in
  recursion.
- #strong[Hint:] What happens when n reaches 0?



== 3. Homework Practice Questions
<homework-practice-questions>
=== Question 1: Function to Convert Temperature
<question-1-function-to-convert-temperature>
#strong[Problem:] Write a function `celsiusToFahrenheit` that converts
Celsius temperature to Fahrenheit using the formula `F = (9/5)*C + 32`.
Test it with temperatures 0, 25, and 100.

- #strong[Difficulty:] Easy
- #strong[Concept:] Function with return values and basic arithmetic.



=== Question 2: Recursive Power Function
<question-2-recursive-power-function>
#strong[Problem:] Write a recursive function `power(base, exponent)`
that returns the result of raising `base` to the power of `exponent`
(assume exponent ≥ 0).

- #strong[Difficulty:] Medium
- #strong[Concept:] Recursion with multiple parameters and base cases.



=== Question 3: Understanding Function Prototypes
<question-3-understanding-function-prototypes>
#strong[Problem:] Explain why function prototypes are important in C
programming. Provide an example where a missing prototype leads to a
compilation error.

- #strong[Difficulty:] Conceptual
- #strong[Concept:] Function declaration, compiler behavior, linking
  errors.



=== Question 4: Write a Function to Reverse a String
<question-4-write-a-function-to-reverse-a-string>
#strong[Problem:] Define a function `reverseString(char *str)` that
reverses a string in place.

- #strong[Difficulty:] Medium
- #strong[Concept:] Pointer manipulation, functions, string handling.



=== Question 5: Recursive Fibonacci Function with Optimization Idea
<question-5-recursive-fibonacci-function-with-optimization-idea>
#strong[Problem:] Write a recursive function to compute the nth
Fibonacci number and explain why naive recursion is inefficient for
large n.~Suggest briefly (in comments or explanation) how to optimize
it.

- #strong[Difficulty:] Medium to Advanced
- #strong[Concept:] Recursion, inefficiency, memoization (conceptual).



= Additional Tips for Teaching
<additional-tips-for-teaching>
- Use live coding and immediate feedback tools.
- Visual aids for recursion --- diagrams or stack simulations.
- Encourage students to test boundary conditions (0, negative inputs).
- Promote writing comments to clarify function purpose.
- Regularly recap and link new concepts to previous knowledge.