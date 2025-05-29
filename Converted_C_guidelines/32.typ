= Prototype of a Function: Formal Parameter List, Return Type


== 1. Teaching Outline
<teaching-outline>
=== #strong[A. Introduction to Function Prototypes]
<a.-introduction-to-function-prototypes>
- #strong[Definition:]
  - What is a function prototype?
  - Why do we use function prototypes in C programs?
- #strong[Purpose:]
  - Inform the compiler about the function's name, return type, and
    parameters before its actual definition.
  - Helps in type checking during function calls.

=== #strong[B. Components of a Function Prototype]
<b.-components-of-a-function-prototype>
+ #strong[Return Type]
  - Explains what the function will return (e.g., `int`, `void`,
    `float`).
  - If a function does not return any value, return type is `void`.
+ #strong[Function Name]
  - The identifier used to call the function.
+ #strong[Formal Parameter List]
  - Data types of parameters the function expects.
  - Parameter names are optional in prototypes but recommended for
    clarity.
  - Example: `(int a, float b)` or simply `(int, float)`.

=== #strong[C. Syntax and Rules]
<c.-syntax-and-rules>
- Syntax format:

  ```
  return_type function_name(parameter_type_1, parameter_type_2, ...);
  ```

- Optional parameter names in prototype:

  ```
  int add(int, int);
  ```

- The prototype must #strong[end with a semicolon] `;`.

- Function prototype placement:

  - Typically before the `main()` function or defined in header files.

- Difference between prototype and definition:

  - Prototype declares the function.
  - Definition provides the function body (code).

=== #strong[D. Examples and Demonstrations]
<d.-examples-and-demonstrations>
- #strong[Example 1: Simple prototype and definition]

  ```c
  int add(int, int);  // function prototype

  int main() {
      int result = add(5, 3);
      printf("Result: %d\n", result);
      return 0;
  }

  int add(int a, int b) {  // function definition
      return a + b;
  }
  ```

- #strong[Example 2: Void return type and no parameters]

  ```c
  void greet(void);  // prototype

  int main() {
      greet();
      return 0;
  }

  void greet(void) {
      printf("Hello, welcome to the C bootcamp!\n");
  }
  ```

- #strong[Example 3: Omitting parameter names in prototype]

  ```c
  float multiply(float, float);

  float multiply(float x, float y) {
      return x * y;
  }
  ```

=== #strong[E. Common Mistakes to Avoid]
<e.-common-mistakes-to-avoid>
- Forgetting the semicolon at the end of the prototype.
- Mismatching parameter types between prototype and definition.
- Missing function prototype when calling a function before its
  definition (causes implicit declaration warnings/errors).
- Forgetting to specify `void` in the parameter list of a function with
  no parameters:
  - `void greet();` vs `void greet(void);` --- the latter is correct in
    C.
- Using different return types in prototype and definition.

=== #strong[F. Real-World Applications]
<f.-real-world-applications>
- Large programs with multiple functions split across files.
- Use of header files (`.h`) containing prototypes to enable modularity.
- Helps compiler catch errors early during function calls.
- Used in collaborative development: clear contract of function usage.



== 2. In-Class Practice Questions
<in-class-practice-questions>
=== Question 1: Simple Prototype Declaration
<question-1-simple-prototype-declaration>
#strong[Problem:] Write a function prototype for a function named
`square` that takes an `int` and returns an `int`.

- #strong[Concept Tested:] Syntax of prototype, return type, parameter
  type.
- #strong[Hint:] Focus on the return type and parameter type.



=== Question 2: Void function with no parameters
<question-2-void-function-with-no-parameters>
#strong[Problem:] How do you write a prototype for a function named
`display` that takes no parameters and returns nothing?

- #strong[Concept Tested:] Use of `void` in parameter list and return
  type.
- #strong[Hint:] Remember to use `void` inside the parentheses if no
  parameters.



=== Question 3: Matching Prototype and Definition (Live Coding)
<question-3-matching-prototype-and-definition-live-coding>
#strong[Problem:] Given this prototype - `float divide(float, float);`,
write the function definition to return the division of two floats.

- #strong[Concept Tested:] Matching prototype and definition, working
  with parameters and return values.
- #strong[Hint:] Make sure the return type matches and parameters are
  correctly named.



=== Question 4: Prototype Placement
<question-4-prototype-placement>
#strong[Problem:] What happens if a function is called before its
prototype or definition? Explain or demonstrate with a code snippet.

- #strong[Concept Tested:] Importance of prototypes and compiler
  behavior.
- #strong[Hint:] Try compiling with and without the prototype.



=== Question 5: Prototype with Multiple Parameters and Types
<question-5-prototype-with-multiple-parameters-and-types>
#strong[Problem:] Write a function prototype for `calculate` that takes
an `int`, a `float`, and a `char` and returns a `double`.

- #strong[Concept Tested:] Multiple parameters of mixed types and return
  types.
- #strong[Hint:] Remember to separate parameters with commas and specify
  correct types.



== 3. Homework Practice Questions
<homework-practice-questions>
=== Homework Question 1:
<homework-question-1>
#strong[Problem:] Write prototypes for the following functions and then
define them:

- `int max(int, int)` --- returns the greater of two integers.

- `void print_message(void)` --- prints a welcome message.

- `double power(double, int)` --- takes a double base and an int
  exponent and returns the power value.

- #strong[Difficulty Level:] Easy to Moderate

- #strong[Key Concept:] Writing accurate prototypes and matching
  definitions.



=== Homework Question 2:
<homework-question-2>
#strong[Problem:] Explain in your own words why function prototypes are
important in C programs. Give at least two reasons.

- #strong[Difficulty Level:] Conceptual, Moderate
- #strong[Key Concept:] Understanding the role of prototypes.



=== Homework Question 3:
<homework-question-3>
#strong[Problem:] Given this incomplete program snippet, identify and
fix prototype related errors:

```c
int multiply(int x, int y);

int main() {
    int product = multiply(4, 5);
    printf("%d\n", product);
    return 0;
}

int multiply(int a, int b) {
    return a * b;
}
```

Now, if the prototype was written as `int multiply(int, float);`, what
error(s) might occur?

- #strong[Difficulty Level:] Moderate
- #strong[Key Concept:] Consistency between prototype and function
  definition.



=== Homework Question 4:
<homework-question-4>
#strong[Problem:] What is the output or expected result of the following
code? Explain if the program will compile or generate any warning/error.

```c
void greet();

int main() {
    greet();
    return 0;
}

void greet() {
    printf("Hi there!\n");
}
```

How can you improve the function prototype?

- #strong[Difficulty Level:] Moderate
- #strong[Key Concept:] Difference between empty parameter list and
  `void` parameter.



=== Homework Question 5:
<homework-question-5>
#strong[Problem:] Create a header file `mathutils.h` that contains
prototypes for the following functions: - `int add(int, int);` -
`int subtract(int, int);` - `float average(float, float, float);`

Then write a simple `main.c` to include `mathutils.h` and call these
functions.

- #strong[Difficulty Level:] Moderate to Advanced
- #strong[Key Concept:] Using prototypes in header files, modular
  programming.
