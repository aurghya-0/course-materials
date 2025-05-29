= Conditions and Relational Operators in C
<teaching-guideline-conditions-and-relational-operators-in-c>



== 1. Teaching Outline
<teaching-outline>
=== A. Introduction to Conditions and Relational Operators
<a.-introduction-to-conditions-and-relational-operators>
- #strong[Key Definitions:]
  - #strong[Condition:] An expression evaluated to either true or false.
  - #strong[Relational Operators:] Operators used to compare two values.
- #strong[Why Conditions Matter:]
  - Control flow decisions (if, if-else, switch)
  - Making programs dynamic based on inputs or states.



=== B. Key Relational Operators in C
<b.-key-relational-operators-in-c>
#figure(
  align(center)[#table(
    columns: (15.87%, 36.51%, 23.81%, 23.81%),
    align: (auto,auto,auto,auto,),
    table.header([Operator], [Meaning], [Example], [Result],),
    table.hline(),
    [`==`], [Equal to], [`a == b`], [true if equal],
    [`!=`], [Not equal to], [`a != b`], [true if not equal],
    [`<`], [Less than], [`a < b`], [true if a is less than b],
    [`>`], [Greater than], [`a > b`], [true if a is greater than b],
    [`<=`], [Less than or equal to], [`a <= b`], [true if a is less or
    equal to b],
    [`>=`], [Greater than or equal to], [`a >= b`], [true if a is
    greater or equal to b],
  )]
  , kind: table
  )



=== C. Syntax and Rules for Using Conditions
<c.-syntax-and-rules-for-using-conditions>
- Conditions must return a boolean value (`true` or `false`).
- In C, #strong[true] is any non-zero value; #strong[false] is `0`.
- Use conditions inside control statements:

```c
if (condition) {
    // code runs if condition is true
}
```

- Importance of using `==` for comparison (not `=` which is assignment)
- Block scope `{}` for multiple statements under a condition.



=== D. Examples and Demonstrations
<d.-examples-and-demonstrations>
+ #strong[Simple if statement:]

```c
int x = 10;
if (x > 5) {
    printf("x is greater than 5\n");
}
```

#block[
#set enum(numbering: "1.", start: 2)
+ #strong[If-else statement:]
]

```c
int y = 3;
if (y == 3) {
    printf("y equals 3\n");
} else {
    printf("y is not 3\n");
}
```

#block[
#set enum(numbering: "1.", start: 3)
+ #strong[Chained if-else (if-else if-else):]
]

```c
int score = 85;
if (score >= 90) {
    printf("Grade A\n");
} else if (score >= 75) {
    printf("Grade B\n");
} else {
    printf("Grade C or below\n");
}
```

#block[
#set enum(numbering: "1.", start: 4)
+ #strong[Using relational operators in conditions]
]



=== E. Common Mistakes to Avoid
<e.-common-mistakes-to-avoid>
- Using assignment `=` instead of equality `==` inside conditions
  (e.g.~`if (x = 5)` instead of `if (x == 5)`).
- Forgetting braces `{}` especially when multiple statements follow a
  condition.
- Confusing logical operators (`&&`, `||`) with relational operators.
- Not understanding that relational expressions return `1` (true) or `0`
  (false).
- Misreading the `!=` operator.



=== F. Real-World Applications
<f.-real-world-applications>
- Input validation (e.g., checking if user input falls within a valid
  range).
- Decision making in programs (for example, access control:
  `if (age >= 18)`).
- Loop exit conditions.
- Simple game logic (win/lose conditions).



== 2. In-Class Practice Questions
<in-class-practice-questions>



=== Question 1: Basic Relational Operator
<question-1-basic-relational-operator>
#strong[Problem:] Write an `if` statement that checks if a number stored
in variable `num` is less than 100 and prints `"Less than 100"` if true.
\
#strong[Concept:] Using `<` operator in `if` condition. \
#strong[Hint:] Use `if (num < 100)`.



=== Question 2: Equality Check
<question-2-equality-check>
#strong[Problem:] Given an integer `age`, write an `if-else` statement
that prints `"Adult"` if age is exactly 18, and `"Not 18"` otherwise. \
#strong[Concept:] Checking equality with `==` and using `else`. \
#strong[Hint:] Careful with `==` vs `=`.



=== Question 3: Multiple Conditions with if-else if
<question-3-multiple-conditions-with-if-else-if>
#strong[Problem:] Given a variable `score`, print: - `"Pass"` if score
is 50 or more, - `"Fail"` if less than 50. \
Modify the program to print `"Excellent"` if score is 90 or above. \
#strong[Concept:] Multiple relational checks using if-else if. \
#strong[Hint:] Order matters; check higher score first.



=== Question 4: Detecting Incorrect Assignment in Condition
<question-4-detecting-incorrect-assignment-in-condition>
#strong[Problem:] Explain why the code below may not work as expected
and how to fix it:

```c
int x = 10;
if (x = 20) {
    printf("x is 20\n");
}
```

#strong[Concept:] Difference between assignment `=` and equality `==` in
conditions. \
#strong[Hint:] What does `x = 20` do inside `if`?



=== Question 5: Combining Conditions (Discuss Relational vs Logical)
<question-5-combining-conditions-discuss-relational-vs-logical>
#strong[Problem:] Write a program that prints `"In range"` if a number
`n` is greater than 10 and less than 20, otherwise `"Out of range"`. \
#strong[Concept:] Combining relational expressions with logical `&&`. \
#strong[Hint:] Syntax: `if (n > 10 && n < 20)`.



== 3. Homework Practice Questions
<homework-practice-questions>



=== HW Question 1: Simple Comparison
<hw-question-1-simple-comparison>
#strong[Problem:] Write a program to input two integers and print which
one is larger, or if they are equal. \
#strong[Difficulty:] Easy \
#strong[Concept:] Using `if`, `else if`, and relational operators `>`,
`<`, `==`.



=== HW Question 2: Age Group Classification
<hw-question-2-age-group-classification>
#strong[Problem:] Write a program that reads integer input `age` and
classifies: - Child: 0--12 years, - Teenager: 13--19 years, - Adult: 20
and above, - Invalid: negative ages. \
Print the respective category. \
#strong[Difficulty:] Medium \
#strong[Concept:] Multiple conditions and edge cases.



=== HW Question 3: Leap Year Checker
<hw-question-3-leap-year-checker>
#strong[Problem:] Write a program to check if a given year is a leap
year. - A year is leap if divisible by 400, or divisible by 4 but not
100. \
Print `"Leap Year"` or `"Not a Leap Year"`. \
#strong[Difficulty:] Medium \
#strong[Concept:] Combining relational operators and modulo `%` with
logical `&&` and `||`.



=== HW Question 4: Understanding Condition Results
<hw-question-4-understanding-condition-results>
#strong[Problem:] What will the following code print? Explain why.

```c
int a = 5, b = 10;
if (a > b) {
    printf("A is greater\n");
} else {
    printf("A is not greater\n");
}
printf("%d\n", a > b);
```

#strong[Difficulty:] Conceptual \
#strong[Concept:] Boolean result of relational expressions in C.



=== HW Question 5: Find the Mistake
<hw-question-5-find-the-mistake>
#strong[Problem:] Review the following code snippet. If there is any
mistake in the condition, identify and correct it.

```c
int x = 7;
if (x = 7) {
    printf("x is seven\n");
}
```

#strong[Difficulty:] Easy/Conceptual \
#strong[Concept:] Understanding assignment vs equality.



= Additional Tips for Teaching
<additional-tips-for-teaching>
- Use live coding demos to explain concepts.
- Encourage students to predict output before running.
- Highlight error messages generated from common mistakes.
- Provide instant feedback on in-class exercises.
- Periodically recap to reinforce logic flow involving conditions.