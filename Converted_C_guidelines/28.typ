= Two Dimensional Arrays, Addition and Multiplication of Two Matrices

== 1. Teaching Outline
<teaching-outline>
=== A. Introduction to Two Dimensional Arrays
<a.-introduction-to-two-dimensional-arrays>
- #strong[Key Definitions:]
  - Array: A collection of elements of the same data type stored in
    contiguous memory locations.
  - Two Dimensional Array (2D Array): An array of arrays, often
    visualized like a matrix with rows and columns.
- #strong[Purpose of 2D arrays:] Represent tables, matrices, grids, etc.

=== B. Declaration and Initialization of 2D Arrays in C
<b.-declaration-and-initialization-of-2d-arrays-in-c>
- #strong[Syntax:]

  ```c
  data_type array_name[row_size][column_size];
  ```

- #strong[Example:]

  ```c
  int matrix[3][4]; // A 3x4 matrix (3 rows, 4 columns)
  ```

- #strong[Initialization Examples:]

  ```c
  int matrix[2][3] = {{1, 2, 3}, {4, 5, 6}};
  ```

- #strong[Important Note:] Arrays in C are zero-indexed.

=== C. Accessing and Traversing Elements of 2D Arrays
<c.-accessing-and-traversing-elements-of-2d-arrays>
- Use nested loops (typically `for` loops).

- Example:

  ```c
  for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
          printf("%d ", matrix[i][j]);
      }
      printf("\n");
  }
  ```

- Explain row-major order (how elements are stored in memory).

=== D. Matrix Addition
<d.-matrix-addition>
- #strong[Definition:] Adding two matrices by adding corresponding
  elements.
- #strong[Condition:] Both matrices must be of the same dimension.
- #strong[Mathematical formula:] If A and B are matrices, Result C:
  c\[i\]\[j\] = a\[i\]\[j\] + b\[i\]\[j\]
- #strong[Algorithm:]
  - Check if dimensions match
  - Traverse each element using nested loops
  - Add corresponding elements and store in result matrix

=== E. Matrix Multiplication
<e.-matrix-multiplication>
- #strong[Definition:] Multiplying two matrices where number of columns
  in first matrix equals number of rows in second matrix.
- #strong[Mathematical formula:] Result matrix element at (i,j) = sum
  over k of (a\[i\]\[k\] \* b\[k\]\[j\])
- #strong[Dimension rule:] If A is m x n, and B is n x p, then C is m x
  p.
- #strong[Algorithm:]
  - Validate dimensions
  - Use triple nested loops:
    - Outer loops for rows of A and columns of B
    - Inner loop to do the sum-product for each cell
- Important note on why multiplication dimension matters.

=== F. Common Mistakes to Avoid
<f.-common-mistakes-to-avoid>
- Confusing row and column indexing.
- Ignoring matrix dimension rules (especially for multiplication).
- Forgetting zero-indexing.
- Overlooking initialization before using 2D arrays (e.g., garbage
  values).
- Using incorrect loop boundaries.
- Not allocating appropriate memory size if dynamic memory is discussed
  later.

=== G. Real-World Applications
<g.-real-world-applications>
- Image processing (images as pixel matrices).
- Graph algorithms (adjacency matrices).
- Scientific computing and simulations.
- Data storage and management (tables, grids).

=== H. Summary and Q&A
<h.-summary-and-qa>



== 2. In-Class Practice Questions
<in-class-practice-questions>
=== Question 1: Declare and Initialize a 2D array
<question-1-declare-and-initialize-a-2d-array>
- #strong[Problem:] Declare a 3x3 integer matrix and initialize it with
  numbers 1 through 9.
- #strong[Concept tested:] Declaration, initialization, zero-indexing.
- #strong[Hint:] Use nested braces `{{}}` for initialization.

=== Question 2: Print a 2D array
<question-2-print-a-2d-array>
- #strong[Problem:] Write a loop to print the contents of a 4x2 matrix.
- #strong[Concept tested:] Nested loops, accessing 2D array elements.
- #strong[Hint:] Outer loop for rows, inner loop for columns.

=== Question 3: Matrix Addition Implementation
<question-3-matrix-addition-implementation>
- #strong[Problem:] Write a program to add two 2x3 matrices entered by
  the user, then print the result.
- #strong[Concept tested:] Matrix addition logic, input/output handling,
  dimension matching.
- #strong[Hint:] Use nested loops carefully; ensure you add only
  elements with matching indices.

=== Question 4: Check Matrix Dimensions for Multiplication and Multiply
<question-4-check-matrix-dimensions-for-multiplication-and-multiply>
- #strong[Problem:] Given two matrices (with user input for dimensions
  and elements), check if multiplication is possible. If yes, compute
  and print the product.
- #strong[Concept tested:] Dimension validation; matrix multiplication
  logic.
- #strong[Hint:] Remember the rule that columns of first matrix = rows
  of second matrix.

=== Question 5: Debug This Snippet
<question-5-debug-this-snippet>
- #strong[Problem:] Here is a code snippet for matrix addition but it
  produces incorrect output. Identify and fix the error.

```c
for(i=1; i<=2; i++) {
    for(j=1; j<=2; j++) {
        sum[i][j] = a[i][j] + b[i][j];
    }
}
```

- #strong[Concept tested:] Indexing errors, understanding loop
  boundaries.
- #strong[Hint:] C arrays start at 0, so check loop limits.



== 3. Homework Practice Questions
<homework-practice-questions>
=== Question 1: Transpose of a Matrix
<question-1-transpose-of-a-matrix>
- #strong[Problem:] Write a program to compute the transpose of a 3x3
  matrix.
- #strong[Difficulty:] Easy-Medium.
- #strong[Concept tested:] Array element swapping, nested loops.

=== Question 2: Scalar Multiplication of a Matrix
<question-2-scalar-multiplication-of-a-matrix>
- #strong[Problem:] Multiply every element of a 2D matrix by a given
  scalar value.
- #strong[Difficulty:] Easy.
- #strong[Concept tested:] Traversing 2D arrays, scalar multiplication.

=== Question 3: Matrix Multiplication Complexity Analysis (Concept)
<question-3-matrix-multiplication-complexity-analysis-concept>
- #strong[Problem:] Explain why matrix multiplication has O(m#emph[n];p)
  time complexity for multiplying an m x n and n x p matrix.
- #strong[Difficulty:] Medium.
- #strong[Concept tested:] Algorithmic complexity understanding.

=== Question 4: Write a Function for Matrix Addition
<question-4-write-a-function-for-matrix-addition>
- #strong[Problem:] Create a reusable function
  `void matrixAdd(int rows, int cols, int a[][cols], int b[][cols], int result[][cols])`
  that adds two matrices.
- #strong[Difficulty:] Medium.
- #strong[Concept tested:] Function parameters with 2D arrays, passing
  arrays to functions.

=== Question 5: Identify the Error in Dynamic 2D Array Allocation
<question-5-identify-the-error-in-dynamic-2d-array-allocation>
- #strong[Problem:] Given code to allocate memory dynamically for a 2D
  array, identify the error and correct it.

```c
int **matrix = malloc(rows * sizeof(int *));
for(int i=0; i<=rows; i++) {
    matrix[i] = malloc(cols * sizeof(int));
}
```

- #strong[Difficulty:] Medium-Hard.
- #strong[Concept tested:] Dynamic memory allocation, correct loop
  boundaries.



=== Notes for Instructor:
<notes-for-instructor>
- Use visuals like diagrams of matrices to illustrate indexing.
- Engage with live coding for the addition and multiplication
  algorithms.
- Have students pair program for debugging questions.
- Reinforce concepts by relating problems to practical applications.