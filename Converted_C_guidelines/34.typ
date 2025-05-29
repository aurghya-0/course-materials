= Passing Arguments to a Function in C
<teaching-guideline-for-bootcamp-session-passing-arguments-to-a-function-in-c>
== Topic: Call by Value vs Call by Reference
<topic-call-by-value-vs-call-by-reference>



== 1. Teaching Outline
<teaching-outline>
=== A. Introduction to Function Arguments
<a.-introduction-to-function-arguments>
- #strong[Definition:] Explain what it means to pass arguments to
  functions. Arguments are values or variables you give to a function so
  it can use them during execution. \
- Importance of understanding how arguments are passed to functions.

=== B. Call by Value
<b.-call-by-value>
- #strong[Definition:] The function receives a copy of the actual
  argument's value. Changes in the function do not affect the original
  variable. \
- #strong[Syntax and Rules:] Show basic function prototype and call
  where arguments are passed by value.
  - Example: `void increment(int x);` \
- #strong[Demonstration:]
  - Write a simple function that tries to modify an integer argument. \
  - Show that the original variable remains unchanged after the function
    call. \
- #strong[Memory behavior:] Explain that a copy is made in a different
  memory location.

=== C. Call by Reference
<c.-call-by-reference>
- #strong[Definition:] The function receives the address of the
  argument, allowing it to modify the original variable. \
- #strong[How it is done in C:] Use pointers to achieve call by
  reference. \
- #strong[Syntax and Rules:]
  - Function prototype with pointer parameter, e.g.,
    `void increment(int *x);` \
  - Calling function with the address operator `&`. \
- #strong[Demonstration:]
  - Write a function to increment an integer via pointer. \
  - Show that the value of the original variable changes after the
    function call. \
- #strong[Memory behavior:] Discuss how original memory is accessed via
  pointers.

=== D. Comparison: Call by Value vs Call by Reference
<d.-comparison-call-by-value-vs-call-by-reference>
- Side-by-side example highlighting the difference in output and effect
  on original variables. \
- Discuss use-cases where one is preferred over the other.

=== E. Common Mistakes to Avoid
<e.-common-mistakes-to-avoid>
- Forgetting to use the address-of operator `&` when passing a variable
  to a pointer argument. \
- Dereferencing pointers incorrectly inside function. \
- Trying to modify a variable passed by value expecting the original to
  change. \
- Passing uninitialized pointers or incorrect types.

=== F. Real-world Applications
<f.-real-world-applications>
- Modifying multiple values in a function without using global
  variables. \
- Improving memory and time efficiency by avoiding copying large
  structures. \
- Implementing data structures (like linked lists) that require pointer
  manipulation.



== 2. In-Class Practice Questions
<in-class-practice-questions>
=== Question 1:
<question-1>
#strong[Problem:] Write a function that attempts to set an integer
variable to zero using call by value. Call it with a variable
initialized to 10 and print the variable before and after the function
call. \
#strong[Concept Tested:] Understanding call by value behavior. \
#strong[Hint:] Changes inside the function won't affect the original
variable.



=== Question 2:
<question-2>
#strong[Problem:] Modify the previous function to use call by reference
so that the integer variable is actually changed after the function
call. \
#strong[Concept Tested:] Usage of pointers to modify original variables.
\
#strong[Hint:] Pass the address of the variable and dereference the
pointer inside the function.



=== Question 3:
<question-3>
#strong[Problem:] Given a function that takes two integers and swaps
their values, implement it using call by reference, so the swap affects
the originals. \
#strong[Concept Tested:] Practical use of call by reference for swapping
values. \
#strong[Hint:] Use pointers for both arguments.



=== Question 4:
<question-4>
#strong[Problem:] Why won't the swapping function work correctly if you
pass the integers by value? Explain and demonstrate with code. \
#strong[Concept Tested:] Clear understanding of call by value
limitations. \
#strong[Hint:] Trace the variable values inside and outside the
function.



=== Question 5:
<question-5>
#strong[Problem:] Write a function
`void updateArray(int arr[], int size)` that multiplies each element by
2. Is this call by value or call by reference? Explain why. \
#strong[Concept Tested:] Arrays and pointers; concept of call by
reference with arrays. \
#strong[Hint:] Arrays decay to pointers when passed to functions.



== 3. Homework Practice Questions
<homework-practice-questions>
=== Question 1:
<question-1-1>
#strong[Problem:] Write a program that uses a call by reference function
to find the minimum and maximum of two numbers passed as pointers. \
#strong[Difficulty:] Easy \
#strong[Concept Tested:] Working with pointers and multiple outputs via
call by reference.



=== Question 2:
<question-2-1>
#strong[Problem:] Explain in your own words the difference between call
by value and call by reference. Provide two real-world scenarios where
each might be preferred. \
#strong[Difficulty:] Conceptual, medium \
#strong[Concept Tested:] Concept reinforcement and application thinking.



=== Question 3:
<question-3-1>
#strong[Problem:] Implement a function
`void incrementAll(int *arr, int size)` that increments each element of
the array by 1. Show how you would call this function from `main`. \
#strong[Difficulty:] Medium \
#strong[Concept Tested:] Pointer syntax and call by reference with
arrays.



=== Question 4:
<question-4-1>
#strong[Problem:] Consider the following code snippet. Does it print the
modified values of `a` and `b` correctly? Why or why not? Fix the code
if needed.

```c
void changeValues(int a, int b) {
    a = 100;
    b = 200;
}
int main() {
    int a = 10, b = 20;
    changeValues(a, b);
    printf("%d %d\n", a, b);
    return 0;
}
```

#strong[Difficulty:] Easy \
#strong[Concept Tested:] Call by value vs call by reference
understanding.



=== Question 5:
<question-5-1>
#strong[Problem:] Write a function that swaps two strings using call by
reference. Hint: Use double pointers or pointers to pointers. \
#strong[Difficulty:] Advanced \
#strong[Concept Tested:] Pointer manipulation, understanding references
with complex data types.



= Instruction Notes for Teacher
<instruction-notes-for-teacher>
- Begin with simple, relatable examples and gradually increase
  complexity. \
- Use diagrams and memory maps to illustrate how values and pointers
  differ in memory. \
- Encourage students to write and test code live; this topic benefits
  greatly from hands-on practice. \
- Use pair programming or group discussions on tricky pointers concepts
  to reinforce learning. \
- Quickly address common syntax errors to avoid student frustration. \
- When assigning homework, encourage students to explain their code in
  their own words to internalize concepts.