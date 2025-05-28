= Arithmetic Operators and Expressions, Constants and Literals (C Programming)
<teaching-guideline-arithmetic-operators-and-expressions-constants-and-literals-c-programming>

== 1. Teaching Outline
<teaching-outline>
=== A. Introduction to Arithmetic Operators and Expressions
<a.-introduction-to-arithmetic-operators-and-expressions>
- #strong[Key Definitions:]
  - #emph[Arithmetic Operators];: Symbols used to perform mathematical
    operations on variables and constants.
  - #emph[Expression];: A combination of variables, constants, and
    operators that evaluate to a value.
- #strong[Important Operators in C:]
  - Addition (`+`)
  - Subtraction (`-`)
  - Multiplication (`*`)
  - Division (`/`)
  - Modulus (`%`) --- remainder of division (integers only)
- #strong[Syntax and Rules:]
  - Basic arithmetic syntax: `result = operand1 operator operand2;`
  - Operator precedence and associativity in expressions:
    - Multiplication, division and modulus have higher precedence than
      addition and subtraction.
    - Associativity is left to right for these operators.
  - Use of parentheses `()` to override precedence.
  - Division between integers results in an integer (floor of division).
- #strong[Examples and Demos:]
  - Simple arithmetic operations.
  - Expressing complex calculations using multiple operators and
    parentheses.
  - Demonstrate integer vs.~floating point division.
- #strong[Common Mistakes to Avoid:]
  - Confusing assignment `=` with equality `==`.
  - Integer division truncating decimal parts unintentionally.
  - Using modulus operator on floating point numbers.
  - Forgetting operator precedence, causing unexpected results.
- #strong[Real-World Applications:]
  - Basic calculators.
  - Financial calculations (simple interest etc.).
  - Algorithms involving mathematical formulas.



=== B. Constants and Literals in C
<b.-constants-and-literals-in-c>
- #strong[Key Definitions:]
  - #emph[Constant];: A fixed value that does not change during program
    execution.
  - #emph[Literal];: A notation for representing fixed values directly
    in source code.
- #strong[Types of Constants and Literals:]
  - Integer literals (`100`, `-50`)
  - Floating-point literals (`3.14`, `-0.001`)
  - Character literals (`'a'`, `'Z'`)
  - String literals (`"Hello"`)
  - Boolean literals (in stdbool.h: `true`, `false`)
- #strong[Syntax and Rules for Constants and Literals:]
  - Integer literals: can be decimal, octal (starts with 0), or
    hexadecimal (starts with 0x).
  - Floating-point literals: can use decimal notation or scientific
    notation.
  - Character literals use single quotes.
  - String literals use double quotes and are arrays of characters.
  - Constants can be created using `#define` or `const` keyword.
- #strong[Examples and Demonstrations:]
  - Declaring constants using `const int DAYS = 7;`
  - Defining constants with `#define PI 3.14159`
  - Using different literal types in expressions.
- #strong[Common Mistakes to Avoid:]
  - Forgetting to add a semicolon after constant declarations.
  - Trying to change a constant's value.
  - Misunderstanding escape sequences in character literals.
  - Using uninitialized constants.
- #strong[Real-World Applications:]
  - Defining fixed values such as the number of days in a week or tax
    rates.
  - Using constants improves code readability and maintainability.



== 2. In-Class Practice Questions
<in-class-practice-questions>
=== Question 1: Basic Arithmetic Operations
<question-1-basic-arithmetic-operations>
- #strong[Problem:] Write a C program to add, subtract, multiply, and
  divide two integers entered by the user.
- #strong[Concept Tested:] Basic arithmetic operators and integer
  division.
- #strong[Hint:] Remember that integer division truncates decimal parts.

=== Question 2: Understanding Modulus Operator
<question-2-understanding-modulus-operator>
- #strong[Problem:] Write a program that checks if a number entered by
  the user is even or odd using the modulus operator.
- #strong[Concept Tested:] Modulus operator (%) usage.
- #strong[Hint:] Even numbers have remainder 0 when divided by 2.

=== Question 3: Operator Precedence
<question-3-operator-precedence>
- #strong[Problem:] What is the output of the expression
  `3 + 4 * 5 / 2 - 1` in C? Explain why.
- #strong[Concept Tested:] Operator precedence and associativity.
- #strong[Hint:] Compute multiplication and division before addition and
  subtraction.

=== Question 4: Using Constants in Expressions
<question-4-using-constants-in-expressions>
- #strong[Problem:] Define a constant `PI` with value 3.14 using `const`
  keyword. Use it to calculate the area of a circle given its radius.
- #strong[Concept Tested:] Using constants and floating-point
  arithmetic.
- #strong[Hint:] Area = PI \* radius \* radius.

=== Question 5: Combining Literals and Variables
<question-5-combining-literals-and-variables>
- #strong[Problem:] Write a program to calculate and print the total
  price after adding a fixed tax rate (e.g., 5%) to a product price
  given by the user. Use a defined constant for the tax rate.
- #strong[Concept Tested:] Constants, literals, arithmetic expressions.
- #strong[Hint:] Total price = price + (price \* tax\_rate).



== 3. Homework Practice Questions
<homework-practice-questions>
=== Question 1: Calculate Simple Interest
<question-1-calculate-simple-interest>
- #strong[Problem:] Write a program that calculates simple interest
  using the formula: `SI = (P * R * T) / 100` where `P` is principal,
  `R` is rate of interest, and `T` is time in years. Define all three
  values as constants.
- #strong[Difficulty:] Easy
- #strong[Key Concept:] Constants and arithmetic expressions.

=== Question 2: Character Literal Manipulation
<question-2-character-literal-manipulation>
- #strong[Problem:] Write a program that inputs a character and prints
  its ASCII value and the next character in the alphabet.
- #strong[Difficulty:] Medium
- #strong[Key Concept:] Character literals and arithmetic with
  characters.

=== Question 3: Integer vs Floating-Point Division
<question-3-integer-vs-floating-point-division>
- #strong[Problem:] Write a program where you divide two numbers - first
  as integers, then as floats - and observe the differences. Print both
  results.
- #strong[Difficulty:] Medium
- #strong[Key Concept:] Data types, division behavior, expressions.

=== Question 4: Complex Expression Evaluation
<question-4-complex-expression-evaluation>
- #strong[Problem:] Without running the code, manually evaluate the
  following expression: `7 + 3 * (10 / (12 / (3 + 1) - 1))` Assume all
  are integers.
- #strong[Difficulty:] Hard
- #strong[Key Concept:] Operator precedence, nested expressions.

=== Question 5: Define and Use Multiple Constants
<question-5-define-and-use-multiple-constants>
- #strong[Problem:] Define constants for the number of months in a year,
  weeks in a month, and days in a week. Calculate how many days are in a
  year using these constants and print the result.
- #strong[Difficulty:] Easy
- #strong[Key Concept:] Using multiple constants and arithmetic
  expressions.



= Additional Teaching Tips
<additional-teaching-tips>
- Use live coding and interactive debugging to illustrate key points.
- Incorporate visual aids such as operator precedence tables.
- Reinforce learning with mini-quizzes or rapid-fire Q&A sessions.
- Frequently pause for questions and encourage peer discussions.
- Provide real-time feedback on student code and approach.
