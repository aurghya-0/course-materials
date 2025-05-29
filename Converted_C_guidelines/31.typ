= Standard Library of C functions

=== 1. Teaching Outline
<teaching-outline>
#strong[Objective:] Introduce students to the C Standard Library
functions, emphasizing their purpose, usage, and benefits to streamline
programming and avoid re-inventing the wheel.



==== A. Introduction to C Standard Library
<a.-introduction-to-c-standard-library>
- #strong[Definition:] What is the Standard Library in C? \
- #strong[Why use it?] Benefits: Code reuse, reliability, efficiency.
- #strong[Header files:] Role and how to include them
  (`#include <stdio.h>`, `#include <stdlib.h>`, etc.)



==== B. Key Categories of Functions
<b.-key-categories-of-functions>
- #strong[Input / Output:] `printf()`, `scanf()`, `getchar()`,
  `putchar()`
- #strong[String handling:] `strlen()`, `strcpy()`, `strcmp()`,
  `strcat()`
- #strong[Mathematical functions:] `abs()`, `pow()`, `sqrt()`
- #strong[Memory management:] `malloc()`, `calloc()`, `free()`,
  `realloc()`
- #strong[Utility functions:] `exit()`, `system()`, `rand()`, `srand()`
- #strong[Character handling:] `isalpha()`, `isdigit()`, `toupper()`,
  `tolower()`

For each category: - Introduce main functions - Important syntax and
usage - Demonstrate with simple example code snippets



==== C. Important Syntax and Rules
<c.-important-syntax-and-rules>
- Including proper header files depending on function used
- Function prototypes - pre-declared in the headers
- Return types and parameters (example:
  `int printf(const char *format, ...)`)
- How to handle return values (e.g., `scanf()` return value check)



==== D. Examples and Demonstrations
<d.-examples-and-demonstrations>
- Live coding simple programs for:
  - Input and output using `printf` and `scanf`
  - String manipulation with `strcpy` and `strlen`
  - Generating random numbers using `rand()`
  - Dynamic memory allocation with `malloc()` and freeing with `free()`



==== E. Common mistakes to avoid
<e.-common-mistakes-to-avoid>
- Forgetting to include necessary header files
- Using uninitialized pointers before memory allocation
- Not freeing dynamically allocated memory (causing memory leaks)
- Misusing format specifiers in `printf` and `scanf`
- Overrunning buffer lengths in string functions



==== F. Real-World Applications
<f.-real-world-applications>
- Using `stdlib` functions to implement calculators, random number games
- Manipulating input strings in user input validation systems
- Efficient handling of resources in system-level or embedded
  programming



=== 2. In-Class Practice Questions
<in-class-practice-questions>
#figure(
  align(center)[#table(
    columns: (25%, 25%, 25%, 25%),
    align: (auto,auto,auto,auto,),
    table.header([\#], [Question], [Concept Tested], [Hint],),
    table.hline(),
    [1], [Write a C program that reads a user's name (string) and prints
    its length using the standard library.], [String handling
    (`strlen`), I/O functions], [Use `printf` and `scanf` with `%s` and
    `strlen()`],
    [2], [Use `rand()` to generate a random number between 1 and 10 and
    print it.], [Random number generation, `stdlib.h` usage], [Remember
    to seed with `srand()` and use modulo operator],
    [3], [Write code that copies one string into another using
    `strcpy()`. Show output before and after copying.], [String
    manipulation functions], [Declare char arrays with enough size],
    [4], [Write a program that dynamically allocates memory for 5
    integers, assigns values, prints them, then frees the
    memory.], [Dynamic memory allocation (`malloc`, `free`)], [Remember
    to use `sizeof(int)` for `malloc` size],
    [5], [Create a program that checks if an input character is a letter
    or digit using appropriate library functions.], [Character handling
    (`isalpha`, `isdigit`)], [Include `<ctype.h>` and test with sample
    inputs],
  )]
  , kind: table
  )



=== 3. Homework Practice Questions
<homework-practice-questions>
#figure(
  align(center)[#table(
    columns: (25%, 25%, 25%, 25%),
    align: (auto,auto,auto,auto,),
    table.header([\#], [Question], [Difficulty], [Concept Tested],),
    table.hline(),
    [1], [Write a program that reads an integer and prints its absolute
    value using `abs()`.], [Easy], [Math functions],
    [2], [Create a function that concatenates two strings using
    `strcat()` and returns the result. Test with two sample
    strings.], [Medium], [String handling],
    [3], [Write a C program that allocates memory for a dynamic array,
    fills it with 10 random float numbers (using `rand()` and
    normalization), then finds and prints the max
    value.], [Hard], [Dynamic memory, random number generation],
    [4], [Explain what happens if you do not free memory allocated using
    `malloc()`. Why is this an issue?], [Conceptual], [Memory
    management, pitfalls],
    [5], [Write a program that takes two numbers as input, calculates
    the power of the first number raised to the second using `pow()` and
    prints the result.], [Medium], [Math library functions],
  )]
  , kind: table
  )



=== Additional Tips for Teaching:
<additional-tips-for-teaching>
- Use live coding demos alongside explanations.
- Encourage students to experiment with changing input values.
- Continuously ask questions to engage the class.
- Create small groups for peer discussion on tricky tasks.
- Reinforce correct syntax and the importance of header files.
- Remind students to run their programs multiple times and test edge
  cases.