= The Basic Model of Computation, Algorithms, Flow-charts, Programming

== 1. Teaching Outline
<teaching-outline>
=== Introduction
<introduction>
- Brief overview of computation and programming
- Why understanding models and algorithms is essential



=== A. The Basic Model of Computation
<a.-the-basic-model-of-computation>
- #strong[Key Definitions:]
  - Computation: The process of executing well-defined steps to solve a
    problem.
  - Model of Computation: Abstract definition of how computations are
    performed (e.g., Turing Machine, finite automata, RAM model).
  - Input, Process, Output: The fundamental elements of computation.
- #strong[Important Points:]
  - Focus on the simplified model: Input → Processing Unit → Output.
  - Explain memory, CPU, and instructions as fundamental components.
- #strong[Examples/Demonstration:]
  - Show a simple description of a computation like addition.
- #strong[Common Mistakes:]
  - Confusing input and output.
  - Not recognizing that computation requires a sequence of steps.
- #strong[Real-world Applications:]
  - All software processes follow this basic model underneath, from
    calculators to complex apps.



=== B. Algorithms
<b.-algorithms>
- #strong[Key Definitions:]
  - Algorithm: A step-by-step procedure or formula for solving a
    problem.
  - Properties: Finiteness, Definiteness, Input, Output, Effectiveness.
- #strong[Important Points / Rules:]
  - Steps should be clear, unambiguous, and ordered.
  - An algorithm must terminate after finite steps.
- #strong[Examples/Demonstration:]
  - Algorithm for finding the maximum of three numbers.
- #strong[Common Mistakes:]
  - Writing steps that are ambiguous.
  - Missing termination criteria.
- #strong[Real-world Applications:]
  - Sorting data, searching in databases, solving puzzles or math
    problems.



=== C. Flow-Charts
<c.-flow-charts>
- #strong[Key Definitions:]
  - Flowchart: A diagram representing an algorithm using symbols.
- #strong[Important Symbols:]
  - Oval: Start/End
  - Parallelogram: Input/Output
  - Rectangle: Process
  - Diamond: Decision/Condition
  - Arrows: Flow of control
- #strong[Rules for Creating Flowcharts:]
  - Start with the Start symbol.
  - Use arrows to connect steps logically.
  - Use decision symbols for branching.
- #strong[Examples/Demonstration:]
  - Flowchart to find if a number is even or odd.
- #strong[Common Mistakes:]
  - Missing arrows or connections.
  - Mixing flow directions.
  - Using wrong symbols.
- #strong[Real-world Applications:]
  - Used in software design, troubleshooting processes.



=== D. Programming Fundamentals in C
<d.-programming-fundamentals-in-c>
- #strong[Key Definitions:]
  - Program: Instructions to a computer written in a programming
    language.
  - Syntax: Rules for writing valid C code.
- #strong[Important Syntax & Rules:]
  - Basic structure of a C program (`#include`, `main()`, variables,
    statements).
  - Data types, variables, operators, control structures (`if`, `else`,
    `for`, `while`).
  - Input/output functions: `printf()`, `scanf()`.
- #strong[Examples/Demonstration:]
  - Write a simple C program to read two numbers and print their sum.
- #strong[Common Mistakes:]
  - Forgetting semicolons.
  - Mismatched braces.
  - Incorrect format specifiers in `scanf`/`printf`.
- #strong[Real-world Applications:]
  - Writing software, automation scripts, embedded systems.



== 2. In-Class Practice Questions
<in-class-practice-questions>
#figure(
  align(center)[#table(
    columns: (4.05%, 36.49%, 25%, 34.46%),
    align: (auto,auto,auto,auto,),
    table.header([No.], [Problem Statement], [Concept Tested], [Hints
      (optional)],),
    table.hline(),
    [1], [Write the algorithm (in pseudocode) to find the largest of two
    numbers.], [Algorithm design and clarity], [Think about the steps:
    input, compare, output result.],
    [2], [Draw a flowchart for the algorithm to check if a number is
    positive, negative, or zero.], [Flowchart construction and symbol
    use], [Use decision diamonds for checking conditions.],
    [3], [Write a C program that takes an integer input and prints
    whether it is odd or even.], [Programming syntax, control
    structures], [Use `%2` operator, `if-else`.],
    [4], [Explain what happens if you forget to include a `return 0;`
    statement at the end of `main()` in a C program.], [Understanding
    program execution & conventions], [Does C standard require explicit
    return for `main()`? Are there compiler warnings?],
    [5], [Given the algorithm below, identify and correct the mistake:
    "Start → Input number → If number \> 10 then print ‘Big' →" (No
    termination step)], [Algorithm completeness and termination], [Every
    algorithm must end; missing output or stop step.],
  )]
  , kind: table
  )



== 3. Homework Practice Questions
<homework-practice-questions>
#figure(
  align(center)[#table(
    columns: (5.5%, 54.13%, 11.01%, 29.36%),
    align: (auto,left,auto,auto,),
    table.header([No.], [Problem Statement], [Difficulty], [Concept
      Tested],),
    table.hline(),
    [1], [Write an algorithm and draw a flowchart to calculate the
    factorial of a given positive integer.], [Medium], [Algorithm
    design, loops, flowcharts],
    [2], [Write a C program to input three numbers and print the
    smallest among them.], [Medium], [Nested `if` statements,
    input/output],
    [3], [Explain in your own words why flowcharts are useful in
    programming and problem solving.], [Easy], [Concept understanding,
    communication],
    [4], [Identify the errors in the below C code snippet and correct
    them:
    ```c
    int main() {
      int x, y;
      scanf("%d", x);
      printf("Value is %d", x)
      return 0;
      ```], [Medium], [Syntax
    errors, input/output handling],
    [5], [Design an algorithm to sum the elements of an array with n
    integers and write a C function that implements it.], [Medium to
    Hard], [Algorithm design, loops, arrays, function basics],
  )]
  , kind: table
  )



= Additional Notes for Instructor
<additional-notes-for-instructor>
- Use live demonstrations to write simple C programs --- project on
  screen or IDE based.
- Frequently pause for questions --- clarify confusion on concepts like
  flowchart symbols or algorithm steps.
- Leverage class participation for flowchart drawing --- draw diagrams
  on board or tablet.
- Use analogies when explaining computation (e.g., cooking recipe as
  algorithm).
- Emphasize the flow of logic in both algorithms and programming ---
  concept of sequence, decision, and repetition.
- Remind students that writing correct algorithms simplifies coding and
  debugging.
- Introduce common programming errors early to build habits for avoiding
  them.