= Compilation, Linking and Loading, Testing and Debugging, Documentation
<teaching-guideline-compilation-linking-and-loading-testing-and-debugging-documentation>

== 1. Teaching Outline
<teaching-outline>
=== #strong[A. Compilation, Linking, and Loading]
<a.-compilation-linking-and-loading>
==== i. Key Definitions
<i.-key-definitions>
- #strong[Compilation:] Transforming source code (`.c` files) into
  machine code or an intermediate object file (`.o` files).
- #strong[Linking:] Combining multiple object files and libraries into a
  single executable.
- #strong[Loading:] Placing the executable into memory for execution.
- #strong[Source Code, Object Files, Executable]
- #strong[Preprocessing:] Macro expansion and header inclusion (`.h`
  files).

==== ii. Important Syntax and Rules
<ii.-important-syntax-and-rules>
- Using `gcc` command-line options:
  - `gcc -c file.c` generates object files without linking.
  - `gcc file.o -o executable` links object files.
  - `gcc file.c -o executable` compiles and links in one step.
- Including header files: `#include <stdio.h>` or user-defined headers.
- Use of `extern` keyword for linking across files.

==== iii. Examples and Demonstrations
<iii.-examples-and-demonstrations>
- Write a simple multi-file C program: `main.c` (calls function),
  `functions.c` (defines function).
- Show compilation in steps:
  - Compile `functions.c` to `functions.o`
  - Compile `main.c` to `main.o`
  - Link to create executable
- Show preprocessing with `gcc -E file.c`

==== iv. Common Mistakes to Avoid
<iv.-common-mistakes-to-avoid>
- Forgetting to link object files together.
- Using undefined functions without linking proper object files.
- Multiple definitions (linker errors).
- Forgetting header guards in header files (`#ifndef __HEADER_H__` ..
  `#endif`).

==== v. Real-World Applications
<v.-real-world-applications>
- Modular program building for large projects.
- Using third-party libraries requiring separate linking.
- Debugging linker errors in real projects.



=== #strong[B. Testing and Debugging]
<b.-testing-and-debugging>
==== i. Key Definitions
<i.-key-definitions-1>
- #strong[Testing:] Process of executing code to verify correctness.
- #strong[Debugging:] Locating and fixing bugs.
- Types of bugs: Syntax errors, logic errors, runtime errors.
- Tools: `gdb` debugger, `valgrind`, compiler warnings.

==== ii. Important Syntax and Rules
<ii.-important-syntax-and-rules-1>
- Use `gcc -g` to include debug symbols while compiling.
- Basic `gdb` commands: `break`, `run`, `next`, `step`, `print`,
  `continue`.
- Use `printf` debugging.

==== iii. Examples and Demonstrations
<iii.-examples-and-demonstrations-1>
- Compile example program with debug symbols.
- Use `gdb` to set breakpoints and inspect variables.
- Introduce common runtime errors: segmentation fault, memory leaks.
- Show using `valgrind` for memory leak detection.

==== iv. Common Mistakes to Avoid
<iv.-common-mistakes-to-avoid-1>
- Ignoring compiler warnings.
- Debugging without debug symbols.
- Confusing compiler errors with runtime errors.
- Forgetting to check program input/output during testing.

==== v. Real-World Applications
<v.-real-world-applications-1>
- Debugging critical failures in deployed applications.
- Writing test cases for functions.
- Using automated testing frameworks.



=== #strong[C. Documentation]
<c.-documentation>
==== i. Key Definitions
<i.-key-definitions-2>
- #strong[Documentation:] Written text or illustrations that explain the
  software.
- Types: Code comments, README files, API docs.
- Tools: Doxygen, simple comments.

==== ii. Important Syntax and Rules
<ii.-important-syntax-and-rules-2>
- Commenting styles in C: `// single-line`, `/* multi-line */`
- Documenting functions: parameters, return values.
- Writing clear and concise comments.
- Using header comments to describe file purpose.

==== iii. Examples and Demonstrations
<iii.-examples-and-demonstrations-2>
- Show a well-commented function.
- Write a README with build instructions.
- Introduce a basic Doxygen comment example.

==== iv. Common Mistakes to Avoid
<iv.-common-mistakes-to-avoid-2>
- Writing unclear or outdated comments.
- Over-commenting trivial code.
- Neglecting documentation of complex logic.
- Not updating docs after code changes.

==== v. Real-World Applications
<v.-real-world-applications-2>
- Sharing code with teams.
- Open source projects needing user documentation.
- Maintaining large codebases.



== 2. In-Class Practice Questions
<in-class-practice-questions>



=== Question 1: Compilation Command Basics (Difficulty: Easy)
<question-1-compilation-command-basics-difficulty-easy>
#strong[Problem statement:] \
You have a single C file `hello.c`. Write the `gcc` command to compile
and generate an executable named `hello`.

#strong[Concept tested:] \
Basic compilation and compilation command syntax.

#strong[Hint:] \
Use `gcc` and the `-o` option.



=== Question 2: Multi-file Compilation (Difficulty: Medium)
<question-2-multi-file-compilation-difficulty-medium>
#strong[Problem statement:] \
Given two files: `main.c` and `utils.c`, where `main.c` calls a function
defined in `utils.c`, outline the commands to compile and link these
into one executable called `app`.

#strong[Concept tested:] \
Compilation of multiple files and linking.

#strong[Hint:] \
Compile each file to object files first, then link.



=== Question 3: Debugging with GDB (Difficulty: Medium)
<question-3-debugging-with-gdb-difficulty-medium>
#strong[Problem statement:] \
You compiled a program with `gcc -g main.c -o main`. How would you use
`gdb` to set a breakpoint at `main` and start running the program?

#strong[Concept tested:] \
Basic debugging commands.

#strong[Hint:] \
Learn `break` and `run` commands in `gdb`.



=== Question 4: Identify Linking Error (Difficulty: Hard)
<question-4-identify-linking-error-difficulty-hard>
#strong[Problem statement:] \
You compiled two files but get an "undefined reference to 'foo'" error
during linking. What could be causing this, and how do you fix it?

#strong[Concept tested:] \
Common linker errors and troubleshooting.

#strong[Hint:] \
Are all object files included in the linking command?



=== Question 5: Writing Good Comments (Difficulty: Easy)
<question-5-writing-good-comments-difficulty-easy>
#strong[Problem statement:] \
Write comments for the following function that calculates the factorial
of a number:

```c
int factorial(int n) {
    if (n <= 1) return 1;
    else return n * factorial(n - 1);
}
```

#strong[Concept tested:] \
Documentation and comments.

#strong[Hint:] \
Explain the purpose and parameters briefly.



== 3. Homework Practice Questions
<homework-practice-questions>



=== Question 1: Compile with Preprocessing (Difficulty: Medium)
<question-1-compile-with-preprocessing-difficulty-medium>
#strong[Problem statement:] \
Use `gcc` to generate the preprocessed output from a file `calc.c`. Name
the output file `calc.i`. Explain what this file contains.



=== Question 2: Debug Your Program (Difficulty: Medium)
<question-2-debug-your-program-difficulty-medium>
#strong[Problem statement:] \
Write a small program with a bug (for example, an off-by-one error).
Compile it with debug symbols and use `gdb` or `printf` to locate the
bug. Submit your corrected code and debugging notes.



=== Question 3: Linker Error Resolution (Difficulty: Hard)
<question-3-linker-error-resolution-difficulty-hard>
#strong[Problem statement:] \
You have three files: `main.c`, `utils.c` and `helper.c`. `main.c` calls
a function defined in `helper.c`, but compiling
`gcc main.c utils.c -o program` causes undefined references. Identify
the problem and fix the compilation commands.



=== Question 4: Write Function Documentation (Difficulty: Easy)
<question-4-write-function-documentation-difficulty-easy>
#strong[Problem statement:] \
Write detailed comments and documentation for a function
`int gcd(int a, int b)` that calculates the Greatest Common Divisor
using Euclid's algorithm.



=== Question 5: Create a README File (Difficulty: Easy)
<question-5-create-a-readme-file-difficulty-easy>
#strong[Problem statement:] \
Create a README file for a small C project that includes: - Project
description - Compilation instructions - How to run the executable -
Known issues or TODOs