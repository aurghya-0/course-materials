= Character Set, Variables and Identifiers, Built-in Data Types in C
<teaching-guideline-character-set-variables-and-identifiers-built-in-data-types-in-c>



=== 1. Teaching Outline
<teaching-outline>



==== A. Introduction to Character Set in C
<a.-introduction-to-character-set-in-c>
- #strong[Definition];: \
  The character set defines all valid characters used in the code
  (letters, digits, and special symbols). \

- #strong[Components of the Character Set in C];:

  - Letters (A-Z, a-z) \
  - Digits (0-9) \
  - Special Characters (`_`, `+`, `-`, `*`, `/`, `=`, `{`, `}`, `;`,
    etc.) \
  - White spaces (space, tab, newline) \

- #strong[Importance];: \
  Helps the compiler recognize tokens like keywords, identifiers,
  literals, operators, etc.

- #strong[Example];: Show a few lines of code emphasizing valid vs
  invalid characters.

- #strong[Common mistakes];: \
  Using invalid/special characters in identifiers or wrong ASCII
  characters.



==== B. Variables and Identifiers
<b.-variables-and-identifiers>
- #strong[Definitions];:
  - #strong[Variable];: Named location in memory to store data. \
  - #strong[Identifier];: Name given to variables, functions, arrays,
    etc.
- #strong[Rules for Naming Identifiers];:
  - Must start with a letter (A-Z, a-z) or underscore (`_`). \
  - Can contain letters, digits, and underscores. \
  - Cannot be a keyword or reserved word in C. \
  - Case sensitive (`var1` and `Var1` are different). \
  - No special symbols except underscore allowed.
- #strong[Best Practices];:
  - Use meaningful and descriptive names. \
  - Avoid single-letter names except for counters or indexes.
- #strong[Examples and demos];:
  - Valid: `age, _count, score1` \
  - Invalid: `1stNumber, total$sum, float`
- #strong[Common mistakes to avoid];:
  - Starting with a digit \
  - Using spaces in variable names \
  - Using keywords as identifiers



==== C. Built-in Data Types in C
<c.-built-in-data-types-in-c>
- #strong[Key Data Types];:

  - #strong[int];: Integer numbers, e.g., 5, -10 \
  - #strong[float];: Floating-point numbers, e.g., 3.14 \
  - #strong[double];: Double-precision floating numbers (more precision
    than float) \
  - #strong[char];: Single character, e.g., 'A', 'b' \
  - #strong[void];: Represents no type (used for functions that return
    nothing)

- #strong[Purpose];: Define the size and type of data variables can
  hold.

- #strong[Memory size and range (brief)];:

  - int: Usually 4 bytes (range approx. -2 billion to +2 billion) \
  - float: 4 bytes, single precision \
  - double: 8 bytes, double precision \
  - char: 1 byte (stores ASCII)

- #strong[Syntax to declare variables with types];:

  ```c
  int age;
  float temperature;
  char grade;
  double balance;
  ```

- #strong[Example];:

  ```c
  int num = 10;
  char letter = 'A';
  float pi = 3.14f;
  ```

- #strong[Type compatibility & implicit conversions];: \
  Discuss casting and the consequences of mixing types (e.g., float
  assigned to int).

- #strong[Common mistakes to avoid];:

  - Using uninitialized variables \
  - Assigning incompatible types without casting \
  - Storing characters in integer variables expecting strings



==== D. Real-World Applications / Importance
<d.-real-world-applications-importance>
- Use of variables and data types in programs such as:
  - Storing user input (age, name, scores) \
  - Performing arithmetic calculations \
  - Deciding control flows based on stored values
- Importance of choosing the right data types to optimize memory usage
  and ensure correctness.



=== 2. In-Class Practice Questions
<in-class-practice-questions>



+ #strong[Problem];: Identify the valid and invalid identifiers from the
  following list: `age, 2ndPlayer, total_score, _temp, void, my-var`
  - Concept tested: Identifiers naming rules \
  - Hint: Remember the starting character rule and reserved keywords.
+ #strong[Problem];: Declare variables for the following data: age
  (integer), price (floating-point), grade (character). Assign them
  initial values and print them.
  - Concept tested: Declaration, initialization, printing \
  - Hint: Use `int`, `float`, `char` and `printf`.
+ #strong[Problem];: What will happen if you try to assign a
  floating-point value to an integer variable? Write a code snippet to
  demonstrate this and explain the result.
  - Concept tested: Data type compatibility and implicit conversion \
  - Hint: Assign `float x = 5.9; int y = x;`
+ #strong[Problem];: Write a program snippet to declare two variables
  with the same name but different cases (`Total` and `total`). Assign
  each a distinct value and print them.
  - Concept tested: Case sensitivity in identifiers \
  - Hint: Observe the output carefully.
+ #strong[Problem];: Given the variable declaration `char c = 'A';`,
  write code to print the ASCII value of the character stored in `c`.
  - Concept tested: `char` data type and ASCII representation \
  - Hint: Print using `%d` format specifier in printf.



=== 3. Homework Practice Questions
<homework-practice-questions>



+ #strong[Problem];: List 10 valid and 10 invalid variable names and
  explain why each invalid name is wrong.
  - Difficulty: Easy \
  - Concept: Identifier rules
+ #strong[Problem];: Write a C program that takes three variables: an
  integer, a float, and a char. Input values from the user and print
  them back with appropriate messages.
  - Difficulty: Medium \
  - Concept: Variable declaration, input/output, data types
+ #strong[Problem];: Explain what would happen if you try to use a
  variable before declaring it. Provide sample code that causes a
  compilation error and fix it.
  - Difficulty: Easy \
  - Concept: Variable declaration and scope
+ #strong[Problem];: Write C code that demonstrates implicit type
  conversion from `int` to `float` and explicit type casting from
  `float` to `int`. Explain the output in comments.
  - Difficulty: Medium \
  - Concept: Type casting and implicit conversion
+ #strong[Problem];: What is the difference between `float` and `double`
  in C? Write code to show their declaration and assign them values with
  different precisions.
  - Difficulty: Medium \
  - Concept: Data types precision difference
