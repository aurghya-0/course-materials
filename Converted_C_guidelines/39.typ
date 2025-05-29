= Address Operators in C
<teaching-guideline-address-operators-in-c>

== 1. Teaching Outline
<teaching-outline>
=== Introduction
<introduction>
- #strong[What is an Address Operator?] \
  The address operator is a special symbol (`&`) used in C programming
  to obtain the memory address of a variable.

=== Key Definitions
<key-definitions>
- #strong[Address Operator (`&`):] \
  The operator that returns the address of a variable in memory.
- #strong[Pointer:] \
  A variable that stores the memory address of another variable.
- #strong[Dereferencing Operator (`*`):] \
  Used to access the value stored at the memory address a pointer is
  holding.

=== Important Syntax and Rules
<important-syntax-and-rules>
- To get the address of a variable:

  ```c
  int x = 10;
  int *p = &x;
  ```

- `&` returns the address of the variable.

- Pointers are declared with `*` and can store addresses.

- Address operator can #strong[only] be applied to variables that have a
  memory location (not constants or expressions).

=== Examples and Demonstrations
<examples-and-demonstrations>
- Declare an integer, get its address, print both the value and the
  address.
- Demonstrate pointer assignment and dereferencing.
- Show what happens when you try to use the address operator on a
  constant or literal (causes an error).
- Use `printf` with `%p` format specifier to print addresses.

Example code snippet to show live demo:

```c
#include <stdio.h>

int main() {
    int a = 5;
    int *ptr = &a;

    printf("Value of a: %d\n", a);
    printf("Address of a: %p\n", &a);
    printf("Pointer ptr holds address: %p\n", ptr);
    printf("Value pointed by ptr: %d\n", *ptr);

    return 0;
}
```

=== Common Mistakes to Avoid
<common-mistakes-to-avoid>
- Trying to get the address of a constant or literal (e.g., `&5` is
  illegal).
- Confusing the address operator `&` with the bitwise AND operator `&`.
- Forgetting that `&` gives you an address, so assigning it incorrectly
  (e.g., mixing pointer types).
- Not understanding that the address returned is of type `type *` where
  `type` is the variable's type.
- Using `%d` in `printf` to print addresses instead of `%p`.

=== Real-World Applications
<real-world-applications>
- Passing arguments to functions by reference.
- Dynamic memory allocation.
- Data structures like linked lists, trees (where addresses/pointers are
  essential).
- Low-level hardware programming and writing efficient C code.



== 2. In-Class Practice Questions
<in-class-practice-questions>
=== Question 1: Basic Address Operator Use
<question-1-basic-address-operator-use>
#strong[Problem:] Declare an `int` variable, assign it a value, then use
the address operator to print its address. \
#strong[Concept Tested:] Basic syntax and use of the address operator. \
#emph[Hint:] Use `%p` to print an address.



=== Question 2: Pointer Initialization
<question-2-pointer-initialization>
#strong[Problem:] Given `int x = 100;`, declare an `int` pointer and
make it point to `x`. Then print the value of `x` using the pointer. \
#strong[Concept Tested:] Initializing pointers using the address
operator and pointer dereferencing.



=== Question 3: Address Operator and Constants
<question-3-address-operator-and-constants>
#strong[Problem:] Try to write a line of code that takes the address of
a constant literal `10`. What error do you get, and why? \
#strong[Concept Tested:] Limitations of the address operator.



=== Question 4: Pointer Arithmetic Demonstration
<question-4-pointer-arithmetic-demonstration>
#strong[Problem:] Declare an array of three integers and use pointers
initialized via the address operator to iterate and print all values. \
#strong[Concept Tested:] Using address operator with arrays and pointer
arithmetic.



=== Question 5: Function Parameters Using Address Operator
<question-5-function-parameters-using-address-operator>
#strong[Problem:] Write a function that swaps two integers using their
addresses passed to it. \
#strong[Concept Tested:] Passing variables by reference using the
address operator.



== 3. Homework Practice Questions
<homework-practice-questions>
=== Question 1: Getting Addresses of Different Data Types
<question-1-getting-addresses-of-different-data-types>
#strong[Problem:] Declare variables of types `char`, `float` and
`double`, then print their addresses using the address operator. Observe
and note the output format. \
#strong[Difficulty:] Easy \
#strong[Concept Tested:] Address operator usage across data types.



=== Question 2: Explain Why This Code is Incorrect
<question-2-explain-why-this-code-is-incorrect>
#strong[Problem:]

```c
int a = 5;
int *p;
p = a;  // Assigning variable a to pointer p without & operator
```

Explain what is wrong with the code and fix it. \
#strong[Difficulty:] Easy \
#strong[Concept Tested:] Correct pointer assignment using address
operator.



=== Question 3: Write a Function that Swaps Two Variables (Without Pointers)
<question-3-write-a-function-that-swaps-two-variables-without-pointers>
#strong[Problem:] Write a swap function that takes two integers by value
and attempts to swap them. Test if it worked in `main`. Then explain why
it didn't work and how using the address operator and pointers changes
this behavior. \
#strong[Difficulty:] Medium \
#strong[Concept Tested:] Understanding of pass-by-value vs
pass-by-reference.



=== Question 4: Null Pointer and Address Operator
<question-4-null-pointer-and-address-operator>
#strong[Problem:] What does a pointer hold if you do not assign it an
address using the `&` operator? What is a "null pointer"? Show code
initializing a pointer to `NULL`. \
#strong[Difficulty:] Medium \
#strong[Concept Tested:] Pointer initialization and null pointers.



=== Question 5: Pointer to Pointer
<question-5-pointer-to-pointer>
#strong[Problem:] Declare an integer variable, then create a pointer to
it, and finally create a pointer to that pointer. Use `printf` with the
address operator and pointers to print all values and addresses
involved. \
#strong[Difficulty:] Advanced \
#strong[Concept Tested:] Multiple levels of pointers and how the address
operator works on each.



= Additional Notes for the Instructor
<additional-notes-for-the-instructor>
- Use diagrams and physical analogies (e.g., mailboxes and addresses)
  when explaining memory addresses.
- Encourage students to run each example live and experiment by
  modifying code.
- Make sure printing addresses uses the `%p` specifier properly cast to
  `(void *)`.
- Make use of debugging tools or step through code to show how pointers
  and addresses work in memory.
- Reinforce that the address operator obtains numbers (memory
  addresses), while dereferencing accesses the value at that address.