= Logical Operator AND (& &)
<teaching-guideline-logical-operator-and>



== 1. Teaching Outline
<teaching-outline>
=== A. Introduction to Logical Operators
<a.-introduction-to-logical-operators>
- Brief overview of logical operators in programming.
- Logical AND as one of the fundamental logical operators.

=== B. Key Definitions
<b.-key-definitions>
- #strong[Logical Operator AND (`&&`)];: Returns true if #emph[both]
  operands are true.
- Difference between #strong[Logical AND (`&&`)] and #strong[Bitwise AND
  (`&`)];.
- Boolean context in C (`0` is false, non-zero is true).

=== C. Syntax and Rules
<c.-syntax-and-rules>
- Syntax of logical AND: `expression1 && expression2`
- Both expressions are evaluated left to right with
  #strong[short-circuit evaluation];.
  - If first expression is false, second is NOT evaluated.
- Return type is typically an integer: `1` (true) or `0` (false).

=== D. Examples and Demonstrations
<d.-examples-and-demonstrations>
- Simple demo using `if` statements with logical AND.
- Demonstrate short-circuit behavior.
- Using logical AND in `while` loops and conditionals.
- Combining multiple AND operators.

=== E. Common Mistakes to Avoid
<e.-common-mistakes-to-avoid>
- Confusing bitwise AND (`&`) with logical AND (`&&`).
- Forgetting that logical AND results in 0 or 1, not necessarily the
  original values.
- Misunderstanding short-circuit behavior leading to side effects not
  happening.
- Using logical AND on non-boolean expressions and misunderstanding
  output.

=== F. Real-world Applications
<f.-real-world-applications>
- Validating multiple conditions before executing code (e.g., input
  validation).
- Controlling flow in loops.
- Ensuring multiple flags/conditions are met before performing
  operations.



== 2. In-Class Practice Questions
<in-class-practice-questions>
=== Question 1: #strong[Basic Logical AND Evaluation]
<question-1-basic-logical-and-evaluation>
#strong[Problem:] Write a simple C program that prints "Success" if two
integer variables, `a` and `b`, are both positive.

- Concept: Use of logical AND in conditionals.
- Hint: Use `if (a > 0 && b > 0)`.



=== Question 2: #strong[Short-Circuit Demonstration]
<question-2-short-circuit-demonstration>
#strong[Problem:] Write a program where the first condition in a logical
AND expression is false (e.g., `0`), and the second prints a message to
the screen if evaluated. Check if the second condition gets triggered.

- Concept: Short-circuit evaluation.
- Hint: Use functions or `printf()` in the second condition.



=== Question 3: #strong[Multiple Conditions with AND]
<question-3-multiple-conditions-with-and>
#strong[Problem:] Check if three integers `x, y, z` are all even numbers
using logical AND.

- Concept: Combining multiple AND operators.
- Hint: Use `(x % 2 == 0) && (y % 2 == 0) && (z % 2 == 0)`.



=== Question 4: #strong[AND in Loop Condition]
<question-4-and-in-loop-condition>
#strong[Problem:] Write a `while` loop that continues as long as two
variables, `counter` is less than 10 #strong[AND] `flag` is non-zero.

- Concept: Using logical AND in loops.
- Hint: `while (counter < 10 && flag != 0)`.



=== Question 5: #strong[Logical AND vs Bitwise AND]
<question-5-logical-and-vs-bitwise-and>
#strong[Problem:] Given two integers `p` and `q`, print results of
`p && q` and `p & q`. Explain the difference in output.

- Concept: Distinguishing logical AND and bitwise AND.
- Hint: Use values like `p = 4`, `q = 0`.



== 3. Homework Practice Questions
<homework-practice-questions>
=== Homework 1: #strong[Validate User Input]
<homework-1-validate-user-input>
#strong[Problem:] Write a program that prompts the user to enter an age
and a score. Print "Valid Input" if the age is between 18 and 60
(inclusive) #strong[AND] score is above 75.

- Difficulty: Easy
- Concept: Logical AND in real-world validation.



=== Homework 2: #strong[Check Multiple Flags]
<homework-2-check-multiple-flags>
#strong[Problem:] Suppose you have three flags (`flag1`, `flag2`,
`flag3`) each either `0` or `1`. Write a program that prints "All Flags
ON" only if all flags are `1` using logical AND.

- Difficulty: Medium
- Concept: Logical AND with multiple variables.



=== Homework 3: #strong[Logical AND with Functions]
<homework-3-logical-and-with-functions>
#strong[Problem:] Write two functions: `isEven(int)` and
`isPositive(int)`. Write an expression using logical AND to print
"Number is positive and even" if both conditions hold true for an
integer input.

- Difficulty: Medium
- Concept: Using functions with logical AND.



=== Homework 4: #strong[Short-Circuit Side Effects]
<homework-4-short-circuit-side-effects>
#strong[Problem:] Predict the output of the following code:

```c
int a = 0;
if (a != 0 && (++a > 0)) {
    printf("True\n");
} else {
    printf("False\n");
}
printf("a = %d\n", a);
```

Explain why `a` changes (or not).

- Difficulty: Advanced
- Concept: Short-circuiting preventing side effects.



=== Homework 5: #strong[Logical AND in Array Filtering]
<homework-5-logical-and-in-array-filtering>
#strong[Problem:] Given an array of integers, write a program to print
only those elements that are positive #strong[AND] even using a loop and
logical AND.

- Difficulty: Medium
- Concept: Logical AND applied to array processing.



= #strong[Additional Teaching Tips]
<additional-teaching-tips>
- Use lots of live coding and walk through examples step-by-step.
- Encourage students to modify conditions and observe outputs.
- Implement mini "debugging" sessions where students guess outputs
  before running.
- Link logical AND to real-life decision-making scenarios to improve
  intuition.
- Use diagrams or truth tables to visually explain `&&` behavior if
  needed.