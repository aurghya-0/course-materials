= Initializing a One-Dimensional Array in C
<teaching-guideline-for-topic-initializing-a-one-dimensional-array-in-c>

== 1. Teaching Outline
<teaching-outline>
=== A. Introduction to Arrays
<a.-introduction-to-arrays>
- #strong[Definition:] What is a one-dimensional array? \
  An array is a collection of elements of the same data type stored in
  contiguous memory locations.
- #strong[Why use arrays?] \
  To store multiple values in a single variable and access them using an
  index.

=== B. Key Concepts and Terminology
<b.-key-concepts-and-terminology>
- Elements, Index, Size, and Data Type of an array.
- Array indices start at 0 in C.

=== C. Declaring a One-Dimensional Array
<c.-declaring-a-one-dimensional-array>
- Syntax: `data_type array_name[size];`
- Example: `int numbers[5];` declares an array of 5 integers.

=== D. Initializing Arrays
<d.-initializing-arrays>
- #strong[At declaration:]
  - Partial initialization: `int a[5] = {1, 2};` (rest elements
    initialized to 0) \
  - Full initialization: `int a[5] = {10, 20, 30, 40, 50};` \
  - Implicit size declaration: `int a[] = {1, 2, 3};` (size inferred)
- #strong[After declaration:] \
  Assigning values using indices, e.g., `a[0] = 5;`

=== E. Accessing Array Elements
<e.-accessing-array-elements>
- Using the index: `a[0]`, `a[1]`, etc.
- Printing array elements with loops.

=== F. Important Syntax and Rules
<f.-important-syntax-and-rules>
- Arrays must have a fixed size (must be constant integer in many cases)
  at compile-time.
- Accessing out-of-bound indices leads to undefined behavior.
- Array elements are stored in contiguous memory addresses.

=== G. Common Mistakes to Avoid
<g.-common-mistakes-to-avoid>
- Forgetting that array index starts at 0.
- Accessing elements outside the declared size.
- Not initializing arrays leading to garbage values.
- Mismatched data types during initialization or assignment.
- Forgetting to specify size or initializer list properly.

=== H. Demo and Examples:
<h.-demo-and-examples>
- Example 1: Declaring and initializing an array at declaration. \
- Example 2: Partial initialization and printing the default initialized
  elements. \
- Example 3: Assigning values after declaration using loop/input. \
- Example 4: Accessing array elements and printing them using loops.

=== I. Real-World Applications
<i.-real-world-applications>
- Storing grades of students.
- Maintaining a list of temperatures over days.
- Buffering inputs from a file or user.
- Arrays underpin data structures like strings, lists, and more complex
  types.



== 2. In-Class Practice Questions
<in-class-practice-questions>
+ #strong[Question:] Declare an integer array of size 7 and initialize
  all elements to zero at the time of declaration.

  - #emph[Concept:] Array declaration and initialization syntax. \
  - #emph[Hint:] Use brace initializer with all zeros or partial
    initialization with first element zero.

+ #strong[Question:] Given `int a[5] = {2, 4, 6};`, what will be the
  values of `a[3]` and `a[4]`?

  - #emph[Concept:] Partial initialization default values. \
  - #emph[Hint:] Uninitialized elements are initialized to 0.

+ #strong[Question:] Write a program to input 5 integer numbers from the
  user and store them in an array. Then print the array elements.

  - #emph[Concept:] Assigning values after declaration and looping
    through array.

+ #strong[Question:] What is wrong with the following code?

  ```c
  int numbers[3];
  numbers[3] = 10;
  ```

  - #emph[Concept:] Array index out-of-bounds. \
  - #emph[Hint:] Remember valid indices.

+ #strong[Question:] Write a program that declares an integer array
  without specifying size but initializes it to `{1, 2, 3, 4, 5}`. Print
  all elements.

  - #emph[Concept:] Implicit size declaration and initialization.



== 3. Homework Practice Questions
<homework-practice-questions>
+ #strong[Problem:] Declare a float array of size 4 and initialize only
  the last two elements as 3.5 and 7.5. Print all the elements.

  - #emph[Difficulty:] Easy \
  - #emph[Concept:] Partial initialization and default values.

+ #strong[Problem:] Write a program that fills an array of size 10 with
  its index multiplied by 3 (e.g., element 0 is 0 \* 3 = 0, element 1 is
  3, etc.) and prints the array.

  - #emph[Difficulty:] Medium \
  - #emph[Concept:] Using loops to initialize arrays.

+ #strong[Problem:] Explain what happens if you access an array element
  beyond its declared size in C. Write a small code snippet to
  demonstrate (without causing a crash).

  - #emph[Difficulty:] Medium \
  - #emph[Concept:] Array bounds and undefined behavior.

+ #strong[Problem:] Create a program to input 6 integer values into an
  array and find the average value of the array elements.

  - #emph[Difficulty:] Medium \
  - #emph[Concept:] Summation and average calculation using arrays.

+ #strong[Problem:] Without running the program, predict the output of
  the following code snippet:

  ```c
  int arr[5] = {5};
  for (int i = 0; i < 5; i++)
     printf("%d ", arr[i]);
  ```

  - #emph[Difficulty:] Easy \
  - #emph[Concept:] Understanding partial initialization behavior.
