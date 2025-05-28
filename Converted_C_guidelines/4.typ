= Exchanging values of two variables, Summation of a set of numbers, and Reversing digits of an integer

== 1. Teaching Outline
<teaching-outline>
=== Introduction
<introduction>
- Brief overview of why these fundamental concepts are important.
- Explain that these are core programming skills useful in
  problem-solving.



=== Part 1: Exchanging Values of Two Variables
<part-1-exchanging-values-of-two-variables>
#strong[Key Definitions:] - Variable: A storage location identified by a
memory address and a variable name. - Swapping: Interchanging the values
stored in two variables.

#strong[Important Syntax and Rules:]

- Using a temporary variable for swap \

```c
int a = 5, b = 10, temp;
temp = a;
a = b;
b = temp;
```

- Without temporary variable (using arithmetic): \

```c
a = a + b;
b = a - b;
a = a - b;
```

- Without temporary variable (using XOR): \

```c
a = a ^ b;
b = a ^ b;
a = a ^ b;
```

#strong[Examples and Demonstrations:] - Live code swapping two integers.
\- Highlight pros and cons of each method.

#strong[Common Mistakes to Avoid:] - Forgetting the temporary variable,
causing loss of data. - Using arithmetic swap leading to overflow risks
if numbers are large. - Misusing XOR swap without understanding bitwise
operations.

#strong[Real-World Applications:] - Algorithms requiring rearrangement,
sorting elements. - Games or UI requiring position swaps.



=== Part 2: Summation of a Set of Numbers
<part-2-summation-of-a-set-of-numbers>
#strong[Key Definitions:] - Summation: The addition of a sequence of
numbers. - Loop: A control structure that repeats a block of code.

#strong[Important Syntax and Rules:] - Using `for` loop to iterate
through numbers. - Using an accumulator variable to keep sum.

```c
int sum = 0;
for(int i=1; i<=n; i++) {
    sum += i; // or sum += arr[i]; if summing array values
}
```

#strong[Examples and Demonstrations:] - Summing numbers from 1 to 10. -
Sum of an array elements provided by the user.

#strong[Common Mistakes to Avoid:] - Not initializing the sum variable
to zero. - Off-by-one errors in loops. - Incorrect indexing in arrays.

#strong[Real-World Applications:] - Calculating totals like payroll,
scores, or inventory.



=== Part 3: Reversing Digits of an Integer
<part-3-reversing-digits-of-an-integer>
#strong[Key Definitions:] - Integer reversal: Changing the order of
digits in a number from end to start. - Modulus `%` operator: Gives
remainder. - Integer division `/`: Divides and drops the remainder.

#strong[Important Syntax and Rules:] - Extract last digit using `% 10`.
\- Build reversed number by multiplying existing reversed number by 10
and adding the last digit. - Remove last digit by dividing integer by
10.

```c
int reversed = 0;
while(num != 0) {
    int digit = num % 10;
    reversed = reversed * 10 + digit;
    num = num / 10;
}
```

#strong[Examples and Demonstrations:] - Reverse `12345` → `54321`. -
What happens when number is negative or zero?

#strong[Common Mistakes to Avoid:] - Forgetting integer division. - Not
correctly handling zero or negative numbers. - Using incorrect data
types causing overflow.

#strong[Real-World Applications:] - Palindrome checks. - Numerical
problem-solving in math or cryptography.



== 2. In-Class Practice Questions
<in-class-practice-questions>
=== Question 1: Swap Two Variables with a Temporary Variable
<question-1-swap-two-variables-with-a-temporary-variable>
- #strong[Concept Tested:] Basic swap operation \
- #strong[Problem:] Write a program that reads two integers and swaps
  their values using a temporary variable. \
- #strong[Hint:] Use a third variable to temporarily store one value
  during swap.



=== Question 2: Swap Two Variables Without Using a Temporary Variable
<question-2-swap-two-variables-without-using-a-temporary-variable>
- #strong[Concept Tested:] Arithmetic or bitwise swapping \
- #strong[Problem:] Write a program to swap values of two variables
  without using a temporary variable. Use any method you like. \
- #strong[Hint:] Try using addition-subtraction or XOR method.



=== Question 3: Calculate Sum of First n Natural Numbers
<question-3-calculate-sum-of-first-n-natural-numbers>
- #strong[Concept Tested:] Looping and accumulation \
- #strong[Problem:] Given a number `n`, calculate the sum of numbers
  from 1 to n. \
- #strong[Hint:] Use a for loop accumulating the sum.



=== Question 4: Sum of Elements in an Array
<question-4-sum-of-elements-in-an-array>
- #strong[Concept Tested:] Arrays, loops \
- #strong[Problem:] Given an array of integers of size `n`, write code
  to calculate the sum of all elements in the array. \
- #strong[Hint:] Read array elements; loop through all elements, add
  each to sum.



=== Question 5: Reverse a Given Integer Number
<question-5-reverse-a-given-integer-number>
- #strong[Concept Tested:] Modulus and division operations \
- #strong[Problem:] Write a program that takes an integer input and
  prints the reversed number. \
- #strong[Hint:] Use `% 10` to get last digit and divide by `10` to
  remove last digit.



== 3. Homework Practice Questions
<homework-practice-questions>
=== Homework Question 1: Swap Three Variables
<homework-question-1-swap-three-variables>
- #strong[Problem:] Extend swapping concept to rotate values of three
  variables: a → b, b → c, and c → a. \
- #strong[Difficulty:] Medium \
- #strong[Key Concept:] Multiple swaps in sequence.



=== Homework Question 2: Sum of Even Numbers up to n
<homework-question-2-sum-of-even-numbers-up-to-n>
- #strong[Problem:] Write a program to sum only the even numbers from 1
  to n. \
- #strong[Difficulty:] Easy \
- #strong[Key Concept:] Loop, conditionals (if).



=== Homework Question 3: Sum of Odd Numbers in an Array
<homework-question-3-sum-of-odd-numbers-in-an-array>
- #strong[Problem:] Given an array of integers, calculate the total of
  only odd numbers. \
- #strong[Difficulty:] Medium \
- #strong[Key Concept:] Array traversal and conditional sum.



=== Homework Question 4: Reverse Integer and Check if Palindrome
<homework-question-4-reverse-integer-and-check-if-palindrome>
- #strong[Problem:] Reverse the digits of an integer input and report if
  the original number is a palindrome (reads the same backward). \
- #strong[Difficulty:] Medium \
- #strong[Key Concept:] Combining reversal logic and comparison.



=== Homework Question 5: Swap Without Using Arithmetic or Temporary Variable
<homework-question-5-swap-without-using-arithmetic-or-temporary-variable>
- #strong[Problem:] Implement a swap of two integers without a temporary
  variable or arithmetic operations using only bitwise operators.
  Explain why this method works. \
- #strong[Difficulty:] Advanced \
- #strong[Key Concept:] Bitwise XOR operator, logic explanation.



== Additional Tips for Teaching:
<additional-tips-for-teaching>
- Emphasize code tracing: walk through example inputs step-by-step.
- Use visualization tools or colored pens to show swaps and digit
  extraction.
- Encourage students to test boundary cases: zero, negative numbers,
  large values.
- Reinforce coding style: use meaningful variable names and comments.
- Engage students with "what if" questions such as "What happens if one
  variable is zero?" or "What if the integer is negative?"
