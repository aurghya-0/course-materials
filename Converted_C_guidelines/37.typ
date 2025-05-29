= Structures and Arrays --- Arrays of Structures (C Programming)
<teaching-guideline-structures-and-arrays-arrays-of-structures-c-programming>



== 1. Teaching Outline
<teaching-outline>
=== A. Introduction to Structures
<a.-introduction-to-structures>
- #strong[Key Definitions]

  - What is a structure in C? \
  - Use-case of structures to group different data types into one unit.

- #strong[Syntax for Defining a Structure]

  - `struct` keyword
  - Member declarations inside the structure

- #strong[Example:]

  ```c
  struct Student {
      int id;
      char name[50];
      float marks;
  };
  ```

=== B. Declaring Variables of Structure Type
<b.-declaring-variables-of-structure-type>
- Single variable declaration \
- Pointer to a structure variable

=== C. Array of Structures
<c.-array-of-structures>
- #strong[Key Definition:] \
  An array where each element is a structure variable --- useful for
  managing multiple related records.
- #strong[Syntax:]
  - `struct Student students[10];`
- #strong[Accessing elements and members:]
  - Using the dot operator `students[i].id`
  - Using pointers and arrow operator `ptr->marks`

=== D. Initializing Arrays of Structures
<d.-initializing-arrays-of-structures>
- Static initialization (list of values during declaration) \
- Dynamic runtime initialization using loops and user input

=== E. Important Syntax and Rules
<e.-important-syntax-and-rules>
- Structure definition vs.~structure variable declaration \
- Dot (`.`) vs.~arrow (`->`) operators \
- Use of loops to iterate over arrays of structures \
- Restrictions (e.g., cannot assign one entire structure to another in
  older C standards)

=== F. Examples and Demonstrations
<f.-examples-and-demonstrations>
- Create an array of structures to store multiple students' info \
- Demonstrate how to:
  - Input data into each element (e.g., student name, id, marks)
  - Print data for all students \
  - Find the student with highest marks

=== G. Common Mistakes and Pitfalls to Avoid
<g.-common-mistakes-and-pitfalls-to-avoid>
- Forgetting to specify `struct` keyword in older C (no typedef) \
- Incorrect member access (using pointer vs.~variable) \
- Mixing up indices when accessing array elements \
- Uninitialized structure members in the array \
- Buffer overflow when reading strings into char arrays

=== H. Real-World Applications
<h.-real-world-applications>
- Managing data records in small databases (e.g., student records,
  employee records) \
- Simulation of collections or lists without advanced data structures \
- Base for more complex data structures (e.g., arrays of structures of
  arrays)



== 2. In-Class Practice Questions
<in-class-practice-questions>



=== Question 1: Declare and Initialize a Structure
<question-1-declare-and-initialize-a-structure>
- #strong[Problem:] Define a structure named `Book` with members: title
  (string), author (string), and pages (int). Declare one variable and
  initialize it with sample values.
- #strong[Concept Tested:] Structure definition, variable declaration,
  static initialization
- #strong[Hint:] Use arrays of char for strings in structure members.



=== Question 2: Declare an Array of Structures and Access Elements
<question-2-declare-an-array-of-structures-and-access-elements>
- #strong[Problem:] Declare an array of 3 `Book` structures. Assign
  titles and authors to each book and print the details of the second
  book.
- #strong[Concept Tested:] Array of structures, member access via dot
  operator
- #strong[Hint:] Use loops or direct indexing.



=== Question 3: Input Data Into Array of Structures
<question-3-input-data-into-array-of-structures>
- #strong[Problem:] Write a program that allows the user to input
  details (id, name, marks) for 5 students, then prints all the data.
- #strong[Concept Tested:] Arrays of structures, user input, loops,
  printing structured data
- #strong[Hint:] Use fgets or scanf carefully for string input.



=== Question 4: Find Maximum in Array of Structures
<question-4-find-maximum-in-array-of-structures>
- #strong[Problem:] Given the array of 5 students, write logic to find
  and print the student with the highest marks.
- #strong[Concept Tested:] Array traversal, conditional logic on
  structure members
- #strong[Hint:] Keep track of max marks and index or pointer.



=== Question 5: Using Pointers to Access Array of Structures
<question-5-using-pointers-to-access-array-of-structures>
- #strong[Problem:] Using a pointer, iterate over the array of 5
  students and print their names and marks.
- #strong[Concept Tested:] Pointer arithmetic, arrow operator, arrays of
  structures
- #strong[Hint:] `ptr = students;` and `ptr->name`



== 3. Homework Practice Questions
<homework-practice-questions>



=== Homework 1: Structures with Nested Arrays
<homework-1-structures-with-nested-arrays>
- #strong[Problem:] Define a `Course` structure with members: courseName
  (string), courseCode (string), and an array of 3 `Student` structures.
  Write code to initialize one course and all its students.
- #strong[Difficulty:] Intermediate
- #strong[Key Concept:] Nested structures and arrays, complex
  initialization



=== Homework 2: Modify Student Marks Using Function
<homework-2-modify-student-marks-using-function>
- #strong[Problem:] Write a function that accepts the array of students
  and increases the marks of every student by 10%, then prints updated
  marks.
- #strong[Difficulty:] Intermediate
- #strong[Key Concept:] Passing arrays of structures to functions,
  loops, structure member updates



=== Homework 3: Sort Array of Structures
<homework-3-sort-array-of-structures>
- #strong[Problem:] Implement a function to sort an array of students by
  their marks in descending order.
- #strong[Difficulty:] Advanced
- #strong[Key Concept:] Array manipulation, swapping structure elements,
  sorting algorithms



=== Homework 4: Conceptual - Structure Assignment and Memory
<homework-4-conceptual---structure-assignment-and-memory>
- #strong[Problem:] Is it allowed to assign one entire structure
  variable to another? What happens if you do this with array elements?
  Explain with examples.
- #strong[Difficulty:] Conceptual / Beginner
- #strong[Key Concept:] Structure assignment and memory copying in C



=== Homework 5: Real-World Application Mini-Project
<homework-5-real-world-application-mini-project>
- #strong[Problem:] Write a mini program to manage a product list using
  an array of structures. Each product has an id, name, and price.
  Implement functionality to add products, display the list, and find
  the product with the lowest price.
- #strong[Difficulty:] Intermediate
- #strong[Key Concept:] Applying arrays of structures in a practical use
  case



= Additional Teaching Tips:
<additional-teaching-tips>
- Use visual aids to show memory layout of arrays of structures \
- Encourage students to trace code and write output examples \
- Combine live coding and pair programming for collaborative learning \
- Frequently pause for questions and concept checks