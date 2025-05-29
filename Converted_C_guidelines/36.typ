= Structures Variables, Initialization, Structure Assignment in C
<teaching-guideline-structures-variables-initialization-structure-assignment-in-c>



== 1. Teaching Outline
<teaching-outline>
=== A. Introduction to Structures
<a.-introduction-to-structures>
- #strong[Definition:] What is a structure in C?
  - A user-defined data type that groups different variables under one
    name.
- #strong[Why use structures?]
  - To combine related data of different types.
- #strong[Comparison with arrays:]
  - Arrays hold multiple values of the same type; structures hold
    multiple variables potentially of different types.

=== B. Declaring Structure Types and Variables
<b.-declaring-structure-types-and-variables>
- Syntax for declaring a structure type (`struct`)

  ```c
  struct Person {
      char name[50];
      int age;
      float height;
  };
  ```

- Declaring structure variables

  ```c
  struct Person p1, p2;
  ```

- Using `typedef` for simpler syntax

  ```c
  typedef struct {
      char name[50];
      int age;
      float height;
  } Person;

  Person p1, p2;
  ```

=== C. Initializing Structure Variables
<c.-initializing-structure-variables>
- Initializing during declaration

  ```c
  struct Person p1 = {"Alice", 30, 5.6};
  ```

- Partial initialization

  ```c
  struct Person p2 = {"Bob"};
  ```

- Designated initializers (C99 and later)

  ```c
  struct Person p3 = {.age = 25, .name = "Charlie"};
  ```

- Important note: Initialization only valid at declaration.

=== D. Accessing Structure Members
<d.-accessing-structure-members>
- Using #strong[dot operator] (`.`) with structure variable

  ```c
  p1.age = 31;
  printf("%s is %d years old", p1.name, p1.age);
  ```

=== E. Structure Assignment
<e.-structure-assignment>
- Assigning one structure variable to another

  ```c
  p2 = p1;   // Copies all members
  ```

- Important detail: This is a shallow copy (for members like pointers,
  deeper copy considerations may apply).

- Structures can be passed and returned by value in functions (copy
  semantics).

=== F. Common Mistakes and Pitfalls
<f.-common-mistakes-and-pitfalls>
- Forgetting to include `struct` keyword (if no typedef).
- Initializing structure variables after declaration (not allowed).
- Assuming structure assignment copies pointed data (deep copy needed if
  pointers involved).
- Using incompatible types mistakenly in initialization.
- Not accounting for structure padding and alignment (advanced topic).

=== G. Real-World Applications
<g.-real-world-applications>
- Modeling real-world objects (e.g., Person, Book, Employee).
- Grouping related data in programs, improving code readability and
  maintainability.
- Useful for building complex data structures like linked lists, trees,
  etc.



== 2. In-Class Practice Questions
<in-class-practice-questions>
=== Question 1: Define and Declare
<question-1-define-and-declare>
#strong[Problem:] Define a structure called `Book` which contains a
`title` (string of 50 characters), `author` (string of 50 characters),
and `pages` (integer). Declare a variable of this type.

- #strong[Concept tested:] Structure declaration and variable
  definition.
- #strong[Hint:] Remember to use `char` arrays for strings.



=== Question 2: Initialize and Access
<question-2-initialize-and-access>
#strong[Problem:] Initialize a `Book` variable with the title
`"C Programming"`, author `"Dennis Ritchie"`, and `300` pages. Then
print the author's name.

- #strong[Concept tested:] Structure initialization and member access.
- #strong[Hint:] Initialization must be done at declaration.



=== Question 3: Structure Assignment
<question-3-structure-assignment>
#strong[Problem:] Create two `Book` variables, initialize one, then copy
its contents to the other using assignment. Print the title of the
second book to verify.

- #strong[Concept tested:] Structure assignment and shallow copy.
- #strong[Hint:] Assignment copies all members at once.



=== Question 4: Partial Initialization
<question-4-partial-initialization>
#strong[Problem:] Declare a `Book` variable and initialize only the
`title` member to `"Learn C"`. What are the values of the other members?

- #strong[Concept tested:] Partial initialization behavior.
- #strong[Hint:] Uninitialized members get default zero or garbage
  values.



=== Question 5: Typedef Usage
<question-5-typedef-usage>
#strong[Problem:] Use `typedef` to create a new type `Employee` with
members `id` (int), `name` (string), `salary` (float). Declare two
`Employee` variables.

- #strong[Concept tested:] Usage of typedef for struct simplification.



== 3. Homework Practice Questions
<homework-practice-questions>
=== Homework Question 1
<homework-question-1>
#strong[Problem:] Define a structure named `Student` with members:
`rollNumber` (int), `name` (string of 100 chars), and `marks` (float).
Initialize a student with valid data and print all members.

- #strong[Difficulty:] Easy
- #strong[Key concept:] Defining and initializing structures.



=== Homework Question 2
<homework-question-2>
#strong[Problem:] Write a function `printBook` that accepts a `Book`
structure and prints its details. Demonstrate calling this function with
a `Book` variable.

- #strong[Difficulty:] Medium
- #strong[Key concept:] Passing structures to functions by value.



=== Homework Question 3
<homework-question-3>
#strong[Problem:] Explain what happens when you assign one structure to
another. Are the contents deeply copied? Write a short note and give an
example.

- #strong[Difficulty:] Conceptual
- #strong[Key concept:] Understanding shallow copy in structure
  assignment.



=== Homework Question 4
<homework-question-4>
#strong[Problem:] Modify the `Book` structure to include a pointer to a
`char` representing a review. How would you assign a review string to
this member? What additional considerations are needed?

- #strong[Difficulty:] Advanced (conceptual and practical)
- #strong[Key concept:] Structures with pointer members and memory
  management.



=== Homework Question 5
<homework-question-5>
#strong[Problem:] (Coding) Create an array of 3 `Student` structures.
Initialize them with different data and write code to print the names of
students who scored more than 80 marks.

- #strong[Difficulty:] Medium
- #strong[Key concept:] Array of structures, initializing and filtering
  data.





== Additional Notes for Teaching
<additional-notes-for-teaching>
- #strong[Engagement Tip:] Use live coding to define structures and show
  printing and assignment to reinforce concepts.
- #strong[Visual Aids:] Show diagrams representing structure memory
  layout.
- #strong[Hands-on:] Encourage students to manually trace structure
  assignments and member accesses.
- #strong[Discuss Real-World:] Discuss how structs relate to
  object-oriented concepts to set foundation for future learning.