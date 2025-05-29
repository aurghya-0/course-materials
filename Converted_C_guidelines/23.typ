= What is an Array?, Declaring an Array”

== 1. Teaching Outline
<teaching-outline>
=== I. Introduction to Arrays
<i.-introduction-to-arrays>
- #strong[Definition of an Array] \
  Explain that an array is a collection of elements of the same data
  type stored in contiguous memory locations.
- #strong[Why use Arrays?] \
  Discuss the benefits: organizing data, efficient access, avoiding
  multiple variables for related data.
- #strong[Analogy] \
  Use real-world analogies like a row of lockers or a bookshelf with
  indexed compartments.

=== II. Key Concepts & Terminology
<ii.-key-concepts-terminology>
- #strong[Elements/Items];: Individual values stored.
- #strong[Index];: Position of elements in the array, starting at 0 in
  C.
- #strong[Size/Length];: Number of elements the array can store.
- #strong[Data type];: All elements must be of the same data type.

=== III. Syntax and Rules for Declaring Arrays in C
<iii.-syntax-and-rules-for-declaring-arrays-in-c>
- #strong[Basic Declaration Syntax]

  ```c
  data_type array_name[array_size];
  ```

- #strong[Examples]

  ```c
  int numbers[5];       // Array of 5 integers
  char letters[10];     // Array of 10 characters
  float temperatures[7]; // Array of 7 floats
  ```

- #strong[Important Rules]

  - Array size must be a positive integer constant.
  - Indexing starts from 0 up to array\_size-1.
  - Arrays are zero-indexed in C.
  - Memory is allocated contiguously.
  - Declaring without initialization reserves memory but contains
    garbage values.

=== IV. Initialization of Arrays
<iv.-initialization-of-arrays>
- #strong[Static Initialization at Declaration]

  ```c
  int primes[5] = {2, 3, 5, 7, 11};
  ```

- #strong[Partial Initialization] (uninitialized elements get zero)

  ```c
  int nums[5] = {1, 2};
  ```

- #strong[Implicit Size Deduction]

  ```c
  int vals[] = {10, 20, 30};  // size 3 inferred
  ```

=== V. Accessing and Modifying Array Elements
<v.-accessing-and-modifying-array-elements>
- Access syntax: `array_name[index]`

- Example:

  ```c
  numbers[0] = 10;
  int x = numbers[0];
  ```

=== VI. Common Mistakes to Avoid
<vi.-common-mistakes-to-avoid>
- Declaring array size with zero or negative value.
- Accessing out-of-bound array indices (index \< 0 or index \>=
  array\_size).
- Forgetting that arrays are zero-indexed.
- Mixing data types in one array.
- Assuming arrays auto-initialize to zero (unless partially
  initialized).
- Using uninitialized arrays.

=== VII. Real-World Applications (Brief)
<vii.-real-world-applications-brief>
- Storing multiple sensor readings.
- Managing lists like names, scores, or IDs.
- Supporting algorithms like sorting and searching.
- Foundation for more complex data structures (e.g., matrices, strings).



== 2. In-Class Practice Questions
<in-class-practice-questions>
=== Question 1: Basic Declaration
<question-1-basic-declaration>
#strong[Problem:] Declare an integer array that can store 10 elements. \
#strong[Concept:] Array declaration, syntax. \
#strong[Hint:] Use `int` for the data type and specify size inside
square brackets.



=== Question 2: Access and Modify
<question-2-access-and-modify>
#strong[Problem:] Given an array `int marks[5]`, write code to set the
third element's value to 85, then print it. \
#strong[Concept:] Accessing and modifying array elements, zero-based
indexing.



=== Question 3: Initialization
<question-3-initialization>
#strong[Problem:] Declare and initialize an array named `scores` with
values `90, 70, 85, 60, 100` at declaration time. \
#strong[Concept:] Array initialization syntax.



=== Question 4: Indexing Boundary
<question-4-indexing-boundary>
#strong[Problem:] What happens if you try to access `numbers[10]` in
`int numbers[10]` array? Write code to attempt this and predict the
behavior. \
#strong[Concept:] Array bounds, out-of-bound access. \
#strong[Hint:] Discuss runtime error or undefined behavior.



=== Question 5: Size and Length
<question-5-size-and-length>
#strong[Problem:] Write a C program snippet to print all elements of an
integer array `arr` of size 4, initialized with `{1, 2, 3, 4}`. \
#strong[Concept:] Using loops to access array elements, understanding
size.



== 3. Homework Practice Questions
<homework-practice-questions>
=== Homework 1: Declaring Different Types
<homework-1-declaring-different-types>
#strong[Problem:] Declare arrays for the following data types and sizes:
\
\- 8 floats \
\- 26 characters \
\- 15 integers \
#strong[(Optional Difficulty: Easy)] \
#strong[Concept:] Multiple declarations and types.



=== Homework 2: Partial Initialization
<homework-2-partial-initialization>
#strong[Problem:] Declare an integer array of size 6 and initialize only
the first two elements as 10 and 20. Print all elements and explain what
you observe. \
#strong[Concept:] Partial initialization behavior.



=== Homework 3: Find Array Length Using `sizeof`
<homework-3-find-array-length-using-sizeof>
#strong[Problem:] Write a program that declares an integer array of 7
elements and uses the `sizeof` operator to calculate and print the
number of elements in the array. \
#strong[Concept:] Using `sizeof` to determine array length in C.



=== Homework 4: Conceptual - Array vs Variables
<homework-4-conceptual---array-vs-variables>
#strong[Problem:] Explain the advantages of using an array to store ten
integers instead of declaring ten separate integer variables. Write your
answer in 3-4 sentences. \
#strong[Concept:] Conceptual understanding of arrays' benefits.



=== Homework 5: Accessing Elements Safely
<homework-5-accessing-elements-safely>
#strong[Problem:] Write a function in C that safely prints an element of
an array given its index. It should check if the index is valid; if not,
it prints an error message. \
Function signature:

```c
void printElement(int arr[], int size, int index);
```

#strong[Concept:] Handling array bounds, function parameters.





= Additional Teaching Tips
<additional-teaching-tips>
- #strong[Use Visual Aids:] Draw arrays with boxes and indexes on the
  whiteboard or slides.
- #strong[Live Coding:] Demonstrate declaration and element access in a
  simple program.
- #strong[Group Discussion:] After example demos, ask learners to
  suggest possible mistakes when using arrays.
- #strong[Reinforcement:] End lesson with a brief recap quiz or
  flashcards.
- #strong[Encourage Questions:] To clarify confusing points like
  indexing and initialization.