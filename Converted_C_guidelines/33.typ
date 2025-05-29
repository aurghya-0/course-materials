= Function Call and Examples in C Programming
<teaching-guideline-function-call-and-examples-in-c-programming>

== 1. Teaching Outline
<teaching-outline>
=== A. Introduction to Functions and Function Calls
<a.-introduction-to-functions-and-function-calls>
- #strong[Definition of a Function];: A block of code designed to
  perform a specific task, reusable multiple times.
- #strong[What is a Function Call?];: The action of executing a function
  by its name in the program.
- Importance of functions for #strong[code modularity, readability, and
  reusability];.

=== B. Key Concepts and Definitions
<b.-key-concepts-and-definitions>
- #strong[Function Declaration (Prototype)]
  - Syntax: `return_type function_name(parameter_list);`
  - Purpose: Tell the compiler about the function signature.
- #strong[Function Definition]
  - Syntax:

    ```c
    return_type function_name(parameter_list) {
       // function body
    }
    ```
- #strong[Function Call]
  - Syntax: `function_name(arguments);`
  - How control transfers from the caller to the function and back.
- #strong[Parameters vs Arguments]
  - Parameters: Variables listed in the function definition.
  - Arguments: Actual values passed to the function when called.
- #strong[Return Values]
  - What a function returns and how the caller uses it.
- #strong[Void functions];: Functions that do not return a value.

=== C. Important Syntax and Rules
<c.-important-syntax-and-rules>
- Every function except `main()` must have a declared or defined
  prototype before calls (or at least be defined above the point of
  call).
- The number and types of arguments in a function call must match the
  function parameters.
- Function calls can be nested or used within expressions.
- Functions can call other functions (including recursive calls).
- Use of the `return` statement to exit a function and optionally return
  data.
- Type compatibility in parameters and return types.

=== D. Examples and Demonstrations
<d.-examples-and-demonstrations>
+ #strong[Simple function call with no parameters and no return:]

  ```c
  void sayHello() {
      printf("Hello, World!\n");
  }

  int main() {
      sayHello();
      return 0;
  }
  ```

+ #strong[Function with parameters and return type:]

  ```c
  int add(int a, int b) {
      return a + b;
  }

  int main() {
      int sum = add(5, 3);
      printf("%d\n", sum); // Output: 8
      return 0;
  }
  ```

+ #strong[Function calling another function:]

  ```c
  void printSquare(int x) {
      printf("%d\n", x * x);
  }

  int main() {
      int num = 4;
      printSquare(num);
      return 0;
  }
  ```

+ #strong[Using function prototypes]

=== E. Common Mistakes to Avoid
<e.-common-mistakes-to-avoid>
- Forgetting the semicolon after a function prototype.
- Calling functions before they are declared or defined.
- Mismatch between number/type of arguments and parameters.
- Not using the returned value from a function with a non-void return
  type.
- Not including `return` in functions that require it.
- Using functions without including relevant headers (like `stdio.h` for
  `printf`).
- Confusing parameters and arguments.

=== F. Real-World Applications
<f.-real-world-applications>
- Breaking down complex problems into smaller, manageable functions.
- Modular design in large projects.
- Code reuse: libraries and APIs rely heavily on functions.
- Event-driven programming (e.g., callback functions).
- Mathematical computations, input validation, data processing.



== 2. In-Class Practice Questions
<in-class-practice-questions>
=== Question 1: Basic Function Call
<question-1-basic-function-call>
#strong[Problem];: Write a function `greet` that prints "Welcome to C
programming!" and call it from `main`. \
#strong[Concept tested];: Basic function definition and calling a void
function. \
#strong[Hint];: No input parameters and no return value.



=== Question 2: Function with Parameters and Return Type
<question-2-function-with-parameters-and-return-type>
#strong[Problem];: Define a function `multiply` that takes two integers
and returns their product. Call it in `main` and print the result. \
#strong[Concept tested];: Function parameters, return type, function
call with arguments. \
#strong[Hint];: Use `int multiply(int, int);` prototype.



=== Question 3: Function Prototype Usage
<question-3-function-prototype-usage>
#strong[Problem];: What happens if you call a function before its
declaration/prototype? Modify the program to fix any errors you get by
adding the proper function prototype. \
#strong[Concept tested];: Importance of function prototypes. \
#strong[Hint];: Try calling the function in `main` but define it below
`main`.



=== Question 4: Nested Function Calls
<question-4-nested-function-calls>
#strong[Problem];: Write two functions: \
\- `int square(int x)` returns the square of a number \
\- `int cube(int x)` calls `square` to get `x * x` and multiplies it
again by `x`. \
Call `cube` in `main` and print the result for 3. \
#strong[Concept tested];: Calling functions inside other functions. \
#strong[Hint];: `cube` returns `square(x) * x`.



=== Question 5: Common Mistakes Debugging
<question-5-common-mistakes-debugging>
#strong[Problem];: Given a code snippet with mismatched parameter types
or missing return statements, ask students to identify and fix the
error. Example:

```c
int add(int a, int b) {
    printf("Sum is %d", a + b);
}
int main() {
    int result = add(2, 3);
    printf("%d", result);
    return 0;
}
```

#strong[Concept tested];: Understanding return values and function
signatures. \
#strong[Hint];: `add` should return the sum instead of just printing it.



== 3. Homework Practice Questions
<homework-practice-questions>
=== Question 1: Write and Call a Function to Find Maximum
<question-1-write-and-call-a-function-to-find-maximum>
Write a function `maxOfTwo` that takes two integers and returns the
larger one. Use it inside `main` to find and print the max of 7 and 10.
\
\- #strong[Difficulty];: Basic \
\- #strong[Concept];: Conditional choice inside functions, return
values.



=== Question 2: Function without Return Value and with Parameters
<question-2-function-without-return-value-and-with-parameters>
Create a function `printMessage` that takes a string as a parameter and
prints `"Message: <string>"`. Call this function three times with
different messages. \
\- #strong[Difficulty];: Basic \
\- #strong[Concept];: Passing strings (char arrays) to functions.



=== Question 3: Recursion Simple Example
<question-3-recursion-simple-example>
Define a recursive function `factorial` that computes the factorial of a
non-negative integer n.~Call this function to find factorial of 5 and
print the result. \
\- #strong[Difficulty];: Intermediate \
\- #strong[Concept];: Function calling itself (recursion), return
values.



=== Question 4: Function that Modifies Values using Pointers
<question-4-function-that-modifies-values-using-pointers>
Write a function `swap` that swaps the values of two integers using
pointers. Test this in `main`. \
\- #strong[Difficulty];: Intermediate \
\- #strong[Concept];: Passing pointers, modifying variables inside
functions.



=== Question 5: Conceptual Question on Function Calls
<question-5-conceptual-question-on-function-calls>
Explain what happens internally when a function is called in C. Describe
how parameters are passed and what occurs when the function returns to
the caller. \
\- #strong[Difficulty];: Conceptual \
\- #strong[Concept];: Call stack, parameter passing by value, return
mechanism.



= Notes for the Instructor
<notes-for-the-instructor>
- Use live coding to demonstrate examples, emphasizing how function
  calls transfer control.
- Encourage students to predict output before running code.
- Show stack-like diagrams briefly when explaining calls and returns.
- Use pair programming or small group discussions for debugging
  exercises.
- Reinforce the difference between declaration, definition, and
  invocation.
- Utilize errors from common mistakes as teachable moments.