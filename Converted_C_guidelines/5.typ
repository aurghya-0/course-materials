= GCD (Greatest Common Divisor) and Primality Testing in C
<teaching-guideline-gcd-greatest-common-divisor-and-primality-testing-in-c>

== 1. Teaching Outline
<teaching-outline>
=== A. Introduction to GCD and Prime Numbers
<a.-introduction-to-gcd-and-prime-numbers>
- #strong[Definition of GCD:]
  - The greatest common divisor (GCD) of two integers is the largest
    positive integer that divides both numbers without leaving a
    remainder.
- #strong[Definition of Prime Number:]
  - A prime number is a natural number greater than 1 that has no
    positive divisors other than 1 and itself.

=== B. Key Concepts and Algorithms
<b.-key-concepts-and-algorithms>
- #strong[Why GCD is Important:]
  - Simplifying fractions, cryptography, algorithms.
- #strong[Methods to Find GCD:]
  + #strong[Naive Approach:] Check every integer from min(a, b) down to
    1.
  + #strong[Euclidean Algorithm:] Uses division and remainder, more
    efficient.
- #strong[Testing if a Number is Prime:]
  - Check divisibility from 2 to sqrt(n).
  - If divisible by any number in the range, not prime.
  - Special cases: numbers ≤ 1 are not prime.

=== C. Important C Syntax & Rules
<c.-important-c-syntax-rules>
- Loops (`for`, `while`)
- Conditional statements (`if`, `else`)
- Function definition and return statements
- Modulo operator `%` for remainder
- Input/output basics (`scanf`, `printf`)

=== D. Example and Demonstrations
<d.-example-and-demonstrations>
- Implement Euclidean algorithm for GCD.
- Implement prime number test function.
- Show sample outputs for multiple test cases.

=== E. Common Mistakes to Avoid
<e.-common-mistakes-to-avoid>
- Forgetting to handle edge cases (e.g., numbers ≤ 1 for prime check).
- Using incorrect loop boundaries causing infinite loops or off-by-one
  errors.
- Not using the modulo operator correctly.
- Not returning the correct value from the function.
- Inefficient algorithms causing slow execution on large inputs.

=== F. Real-World Applications
<f.-real-world-applications>
- Cryptography (e.g., RSA algorithm uses prime numbers).
- Simplifying fractions in calculators and software.
- Network and computer science algorithms.
- Error detection and correction methods.



== 2. In-Class Practice Questions
<in-class-practice-questions>
=== Q1: Write a function to calculate the GCD of two positive integers using the naive approach.
<q1-write-a-function-to-calculate-the-gcd-of-two-positive-integers-using-the-naive-approach.>
- #strong[Concept:] Basic loop and conditional statements, modulo
  operator.
- #strong[Hint:] Loop from min(a,b) down to 1 and check divisibility.

=== Q2: Implement the Euclidean algorithm to find the GCD of two integers.
<q2-implement-the-euclidean-algorithm-to-find-the-gcd-of-two-integers.>
- #strong[Concept:] Efficient GCD calculation using recursion or
  iteration.
- #strong[Hint:] Use the formula `GCD(a, b) = GCD(b, a % b)` until b is
  0.

=== Q3: Write a function to test if a given number is prime using the simplest method (check divisibility by all numbers from 2 to n-1).
<q3-write-a-function-to-test-if-a-given-number-is-prime-using-the-simplest-method-check-divisibility-by-all-numbers-from-2-to-n-1.>
- #strong[Concept:] Loops, conditionals, logic for prime testing.
- #strong[Hint:] Return false as soon as you find a divisor.

=== Q4: Optimize the prime test function by checking up to `sqrt(n)` instead of `n-1`.
<q4-optimize-the-prime-test-function-by-checking-up-to-sqrtn-instead-of-n-1.>
- #strong[Concept:] Algorithm optimization, understanding limits of
  loops.
- #strong[Hint:] Use `sqrt` function from `<math.h>` or estimate integer
  square root.

=== Q5: Combine both concepts: Write a main program that reads two numbers, prints their GCD, and states whether each number is prime.
<q5-combine-both-concepts-write-a-main-program-that-reads-two-numbers-prints-their-gcd-and-states-whether-each-number-is-prime.>
- #strong[Concept:] Function calls, integration of multiple small
  programs.
- #strong[Hint:] Reuse your earlier functions.



== 3. Homework Practice Questions
<homework-practice-questions>
=== HW1: Write a program to find the GCD of three numbers.
<hw1-write-a-program-to-find-the-gcd-of-three-numbers.>
- #strong[Difficulty:] Medium
- #strong[Concept:] Extension of GCD concept, combining functions.

=== HW2: Write a function that prints all prime numbers within a range given by the user.
<hw2-write-a-function-that-prints-all-prime-numbers-within-a-range-given-by-the-user.>
- #strong[Difficulty:] Medium
- #strong[Concept:] Looping through a range, repeated prime testing.

=== HW3: Explain why prime numbers greater than 2 are odd and why checking only for odd divisors can improve prime test efficiency.
<hw3-explain-why-prime-numbers-greater-than-2-are-odd-and-why-checking-only-for-odd-divisors-can-improve-prime-test-efficiency.>
- #strong[Difficulty:] Conceptual
- #strong[Concept:] Pattern recognition, algorithm optimization.

=== HW4: Implement a program that computes the Least Common Multiple (LCM) of two numbers using their GCD.
<hw4-implement-a-program-that-computes-the-least-common-multiple-lcm-of-two-numbers-using-their-gcd.>
- #strong[Difficulty:] Medium
- #strong[Concept:] Relationship between LCM and GCD:
  `LCM(a, b) = |a*b| / GCD(a, b)`

=== HW5: Given an integer, write a program to determine if it is a "perfect number" (equal to the sum of its proper divisors), and use GCD and prime tests where applicable.
<hw5-given-an-integer-write-a-program-to-determine-if-it-is-a-perfect-number-equal-to-the-sum-of-its-proper-divisors-and-use-gcd-and-prime-tests-where-applicable.>
- #strong[Difficulty:] Challenging
- #strong[Concept:] Applying divisors knowledge, loops, and conditional
  logic.



= Additional Teaching Tips
<additional-teaching-tips>
- Start each new concept with a simple example.
- Frequently ask questions to engage the class.
- Use live coding and debugging demonstrations.
- Encourage peer programming in class exercises.
- Summarize key points at the end of the session and revisit them in
  homework.
