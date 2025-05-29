= Insertion and Deletion of an Element from an Array (C Programming)

== 1. Teaching Outline
<teaching-outline>
=== Introduction
<introduction>
- Brief overview: Arrays in C, their fixed size, and why insertion and
  deletion operations are important.
- Difference between arrays and other data structures like linked lists
  concerning dynamic insertion/deletion.

=== Key Definitions
<key-definitions>
- #strong[Array];: A collection of elements identified by index.
- #strong[Insertion in Array];: Adding a new element at a specific
  position.
- #strong[Deletion from Array];: Removing an element from a specific
  position.
- #strong[Index];: Position of an element in the array.
- #strong[Shifting Elements];: Moving elements to maintain array order
  after insertion or deletion.

=== Important Syntax and Rules
<important-syntax-and-rules>
- Declaring arrays in C:

  ```c
  int arr[100]; // size fixed at compile time
  ```

- Reading elements into an array.

- Accessing elements using index: `arr[i]`

- Insertion rules:

  - Valid indexes for insertion: `0` to `current size` of the array.
  - To insert element at index `pos`, shift all elements from `pos` to
    end of array one step right.
  - Increment size after insertion.

- Deletion rules:

  - Valid indexes for deletion: `0` to `current size - 1`.
  - To delete element at index `pos`, shift all following elements one
    step left.
  - Decrement size after deletion.

- Boundary conditions:

  - Checking for overflow (insertion beyond maximum capacity)
  - Checking for underflow (deletion from empty array)

=== Examples and Demonstrations
<examples-and-demonstrations>
- Write a sample program demonstrating insertion of an element at the
  beginning, middle, and end.
- Write a sample program demonstrating deletion of an element from the
  beginning, middle, and end.
- Use diagrams to visualize shifting elements during insertion and
  deletion.

=== Common Mistakes to Avoid
<common-mistakes-to-avoid>
- Forgetting to shift elements during insertion or deletion.
- Inserting or deleting using invalid indexes.
- Not updating the array size properly.
- Overwriting elements when shifting.
- Buffer overflow: exceeding array's maximum size.
- Using uninitialized variables for size/index.

=== Real-world Applications
<real-world-applications>
- Dynamic data manipulation where array sizes are fixed but data needs
  update.
- Maintaining lists where elements can be added or removed frequently.
- Basics underlying dynamic array implementations, such as `ArrayList`
  in Java or `vector` in C++.



== 2. In-Class Practice Questions
<in-class-practice-questions>
=== Question 1: Basic Insertion
<question-1-basic-insertion>
- #strong[Problem:] Write a function to insert an integer at the end of
  an array.
- #strong[Concept Tested:] Understanding array indexing, insertion at
  last position, updating size.
- #strong[Hint:] Position = current size.

=== Question 2: Delete Element from the Beginning
<question-2-delete-element-from-the-beginning>
- #strong[Problem:] Implement a function to delete the first element of
  an array.
- #strong[Concept Tested:] Shifting elements after deletion, updating
  size.
- #strong[Hint:] Shift all elements one index left.

=== Question 3: Insert Element at a Specific Index
<question-3-insert-element-at-a-specific-index>
- #strong[Problem:] Write a function to insert an integer at a given
  index in the array.
- #strong[Concept Tested:] Valid index checking, element shifting to the
  right, size increment.
- #strong[Hint:] Shift elements from the end moving right before
  inserting.

=== Question 4: Deletion at a Specific Index
<question-4-deletion-at-a-specific-index>
- #strong[Problem:] Implement function to delete an element at a given
  index.
- #strong[Concept Tested:] Valid index checking, element shifting to the
  left, size decrement.
- #strong[Hint:] After deletion, shift all elements after that position
  left.

=== Question 5: Handle Overflow and Underflow
<question-5-handle-overflow-and-underflow>
- #strong[Problem:] Modify insertion and deletion functions to handle
  overflow (array full) and underflow (array empty) conditions safely.
- #strong[Concept Tested:] Array boundary checks, error handling.
- #strong[Hint:] Check array size against maximum before insertion,
  check size before deletion.



== 3. Homework Practice Questions
<homework-practice-questions>
=== Question 1
<question-1>
- #strong[Problem:] Write a C function that takes an array, its size, an
  element, and inserts it at the beginning of the array.
- #strong[Difficulty:] Easy
- #strong[Key Concept:] Insertion at beginning, shifting all elements
  right.

=== Question 2
<question-2>
- #strong[Problem:] Given an array and a position, delete the element at
  that position and return the modified array.
- #strong[Difficulty:] Easy
- #strong[Key Concept:] Deletion by shifting elements, index validation.

=== Question 3
<question-3>
- #strong[Problem:] Write a program to find and delete the first
  occurrence of a given element from the array.
- #strong[Difficulty:] Medium
- #strong[Key Concept:] Searching, deletion at dynamic index.

=== Question 4
<question-4>
- #strong[Problem:] Implement a function that inserts multiple elements
  consecutively into an array at a specified position.
- #strong[Difficulty:] Medium
- #strong[Key Concept:] Multiple insertions, shifting elements
  accordingly.

=== Question 5
<question-5>
- #strong[Problem (Conceptual):] Explain why arrays in C have fixed size
  and discuss how insertion and deletion operations differ in arrays vs
  linked lists.
- #strong[Difficulty:] Medium
- #strong[Key Concept:] Understanding static arrays limitations and
  comparison with dynamic data structures.