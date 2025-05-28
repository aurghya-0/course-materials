#strong[Teaching Guideline for “Basics of Structures in C”]



== 1. Teaching Outline
<teaching-outline>
=== #strong[Introduction to Structures]
<introduction-to-structures>
- #strong[Definition];: Explain what a structure is---a user-defined
  data type in C that groups variables of different types under a single
  name.
- #strong[Why use Structures?];: To store related data items together,
  improving organization and readability.

=== #strong[Key Concepts and Syntax]
<key-concepts-and-syntax>
- #strong[Declaring a Structure]

  ```c
  struct StructureName {
      dataType member1;
      dataType member2;
      // ... more members
  };
  ```

- #strong[Creating Structure Variables]

  - Declaring variables of the structure type.

  ```c
  struct StructureName variable1, variable2;
  ```

- #strong[Accessing Structure Members]

  - Using dot operator (`.`) for structure variables.

- #strong[Initializing Structures]

  - How to initialize during or after declaration.

- #strong[Nested Structures (Brief Introduction)]

  - Structures containing other structures.

=== #strong[Important Rules]
<important-rules>
- Members can be of different data types.

- Structures cannot contain functions (except in C++, not covered here).

- Size of a structure equals the sum of sizes of its members (plus
  possible padding).

- Use `typedef` to simplify the struct declaration:

  ```c
  typedef struct {
      int x;
      int y;
  } Point;
  ```

=== #strong[Examples and Demonstrations]
<examples-and-demonstrations>
- Define a simple structure for `Student`:

  ```c
  struct Student {
      int id;
      char name[50];
      float marks;
  };
  ```

- Declare and initialize student variables.

- Write a program snippet to input and display student information.

- Show array of structures for multiple records.

=== #strong[Common Mistakes to Avoid]
<common-mistakes-to-avoid>
- Forgetting the semicolon `;` after structure definition.
- Trying to assign one structure variable to another directly (explain
  when/how this works).
- Confusing `struct` keyword obligation before structure variables.
- Misusing dot operator or confusing it with pointer operator (`->`).

=== #strong[Real-world Applications]
<real-world-applications>
- Storing employee, student, or product information in programs.
- Basis for advanced data structures like linked lists, trees, etc.
- Handling related data collectively instead of multiple independent
  variables.



== 2. In-Class Practice Questions
<in-class-practice-questions>
=== Question 1: Define and Declare
<question-1-define-and-declare>
#strong[Problem:] Define a structure called `Book` with members: `title`
(string), `price` (float), and `pages` (int). Declare a variable of this
structure and initialize it with sample data. \
#strong[Concept:] Structure declaration, defining members, variable
creation, initialization. \
#strong[Hint:] Use an array of characters for the string (e.g.,
`char title[100];`).



=== Question 2: Access and Display
<question-2-access-and-display>
#strong[Problem:] Given a `struct Book` variable, write code to print
each member clearly. \
#strong[Concept:] Accessing structure members, using dot operator. \
#strong[Hint:] Use `printf` and ensure you print string and numeric
values correctly.



=== Question 3: Input Data into a Structure
<question-3-input-data-into-a-structure>
#strong[Problem:] Create a program snippet that asks the user to input
data for a `Student` structure with `id`, `name`, and `marks` fields,
then display it. \
#strong[Concept:] Taking input for structure members, string handling
with `scanf` or `fgets`. \
#strong[Hint:] Use `%s` in `scanf` for strings and `%d` or `%f` for
numbers.



=== Question 4: Array of Structures
<question-4-array-of-structures>
#strong[Problem:] Declare an array of 3 `Employee` structures, each with
`emp_id`, `emp_name`, and `salary`. Initialize it with values and print
the details of all employees. \
#strong[Concept:] Arrays of structures, loops to traverse and access
members. \
#strong[Hint:] Use `for` loop for printing all records.



=== Question 5: Copying and Assigning Structures
<question-5-copying-and-assigning-structures>
#strong[Problem:] Write a code snippet that copies one structure
variable to another and then modifies a member to show that they are
individual copies. \
#strong[Concept:] Structure assignment and understanding of shallow
copy. \
#strong[Hint:] Direct assignment of structures is allowed in C; verify
with printing before/after.



== 3. Homework Practice Questions
<homework-practice-questions>
=== Question 1: Structure with Nested Structures
<question-1-structure-with-nested-structures>
#strong[Problem:] Define a `struct` called `Date` (with `day`, `month`,
`year`) and another `struct` called `Event` which contains `event_name`
and a `Date` structure. Write a program to input and display event
details. \
#strong[Difficulty:] Medium \
#strong[Concept:] Nested structures.



=== Question 2: Using `typedef` for Structures
<question-2-using-typedef-for-structures>
#strong[Problem:] Rewrite the `Student` structure using `typedef` so
that you can declare variables without the `struct` keyword. Declare two
students and print their details. \
#strong[Difficulty:] Easy \
#strong[Concept:] `typedef` keyword and its use with structures.



=== Question 3: Calculate Average Marks
<question-3-calculate-average-marks>
#strong[Problem:] Using an array of 5 `Student` structures, calculate
the average of their marks and print it. \
#strong[Difficulty:] Medium \
#strong[Concept:] Arrays of structures, looping, summation of structure
members.



=== Question 4: Structure Size and Memory Layout
<question-4-structure-size-and-memory-layout>
#strong[Problem:] Write a program to print the size (in bytes) of a
structure `Person` having an `int` age, `char` gender, and `double`
weight. Explain why the size might be larger than the sum of member
sizes. \
#strong[Difficulty:] Advanced \
#strong[Concept:] Memory padding and alignment in structures.



=== Question 5: Real-World Application Design
<question-5-real-world-application-design>
#strong[Problem:] Design a structure to represent a `Car` with members:
`make` (string), `model` (string), `year` (int), and `price` (float).
Write a program to enter details for 3 cars and find the most expensive
car. \
#strong[Difficulty:] Medium \
#strong[Concept:] Practical application of structures, comparison among
structure elements.



=== Closing Tips for the Teacher
<closing-tips-for-the-teacher>
- Use diagrams to depict memory layout of structures.
- Reinforce with live coding demonstrations.
- Encourage questions and peer discussion for better grasp.
- Provide code snippets as starting templates.
- Use simple analogies (e.g., structure is like a “box” containing
  related items).



This guideline ensures clarity, hands-on learning, and progressive
mastery of C structures suitable for bootcamp learners.
