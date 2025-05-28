#import "@preview/noteworthy:0.2.0": *

#show: noteworthy.with(
  paper-size: "a4",
  font: "New Computer Modern",
  language: "EN",
  title: "Basic Terminologies of Data Structures",
  author: "Aurghyadip Kundu",
  contact-details: "aurghyadip.kundu@nshm.com",
  toc-title: "Table of Contents",
  watermark: "DRAFT",
)



= Introduction and Definitions
<introduction-and-definitions>
- #strong[Data Structure];: A systematic way to organize, manage, and
  store data to enable efficient access and modification.

- #strong[Algorithm];: A finite set of well-defined instructions to
  solve a specific problem.

- #strong[Elementary Data Organization];: Basic ways data can be
  arranged such as sequences (arrays), records, files.

- #strong[Key Terminologies];:

  - #strong[Data];: Raw facts or figures. \
  - #strong[Information];: Processed data meaningful to users. \
  - #strong[Data item];: An element or value, like a number or
    character. \
  - #strong[Data object];: Group of related data items. \
  - #strong[Field];: An attribute or column in a data structure. \
  - #strong[Record];: A collection of fields (e.g., student record). \
  - #strong[File];: A collection of related records.



= Intuition and Working Principle
<intuition-and-working-principle>
- Data Structures help organize data so algorithms can process data
  efficiently. \
- Analogous to organizing books in a library: classification (by author,
  subject), storage (shelf), and retrieval become easy and quick. \
- Working Principle: Use a structured format (like arrays, linked lists,
  trees) that suits the application need, balancing access speed, memory
  use, and complexity.



= Step-by-Step Explanation with Example
<step-by-step-explanation-with-example>
== Example: Using Arrays (Elementary Data Organization)
<example-using-arrays-elementary-data-organization>
Suppose you want to store marks of 5 students.

#strong[Step 1:] Declare an array to hold 5 integers (marks).

#strong[Step 2:] Store marks in array cells.

#strong[Step 3:] Access or modify marks using array index.

#figure(
  align(center)[#table(
    columns: 6,
    align: (auto,auto,auto,auto,auto,auto,),
    table.header([Index (i)], [0], [1], [2], [3], [4],),
    table.hline(),
    [Marks], [75], [82], [90], [68], [77],
  )]
  , kind: table
  )

- Access the 3rd student's mark: `marks[2]` → 90. \
- Update the 5th student's mark to 80: `marks[4] = 80`.



= Pseudocode or Algorithm
<pseudocode-or-algorithm>
== Algorithm: Insert element in an Array
<algorithm-insert-element-in-an-array>
```
Algorithm InsertElement(Array A, Element x, Position pos)
Input: Array A, Element x to insert, Position pos where to insert (0-based)
Output: Updated array with x inserted at pos

1. For i from length(A)-1 down to pos do:
       A[i+1] = A[i]
2. A[pos] = x
3. Increase size of array by 1
End
```



= Code Implementation in C
<code-implementation-in-c>
```c
#include <stdio.h>

void insertElement(int arr[], int *size, int capacity, int element, int position) {
    if (*size >= capacity) {
        printf("Array is full. Cannot insert element.\n");
        return;
    }
    if (position > *size || position < 0) {
        printf("Invalid position.\n");
        return;
    }
    
    // Shift elements rightwards
    for (int i = *size - 1; i >= position; i--) {
        arr[i + 1] = arr[i];
    }
    // Insert element
    arr[position] = element;
    (*size)++;
}

int main() {
    int arr[10] = {10, 20, 30, 40, 50};
    int size = 5, capacity = 10;
    int element = 25, position = 2;

    printf("Before insertion: ");
    for(int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");

    insertElement(arr, &size, capacity, element, position);

    printf("After insertion: ");
    for(int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
    return 0;
}
```



= Time and Space Complexity Analysis
<time-and-space-complexity-analysis>
#figure(
  align(center)[#table(
    columns: (21.35%, 26.97%, 25.84%, 25.84%),
    align: (auto,auto,auto,auto,),
    table.header([*Operation*], [*Data Structure*], [*Time
      Complexity*], [*Space Complexity*],),
    table.hline(),
    [Access (random)], [Array], [$O(1)$], [$O(n)$ (to store $n$ items)],
    [Insert (middle)], [Array], [$O(n)$ (due to shifting)], [$O(n)$],
    [Insert (end)], [Array (if space free)], [$O(1)$], [$O(n)$],
  )]
  , kind: table
  )

- Arrays provide constant time access but inserting in the middle
  requires shifting elements $arrow O(n)$. \
- Space complexity depends on storage size.



= Real-world Applications
<real-world-applications>
- Arrays used in:
  - Databases (storing records) \
  - Image processing (pixel storage) \
  - Organizing data streams \
  - Scheduling and calendar apps
- Understanding classification of data structures allows choosing the
  efficient structure for tasks such as:
  - Managing collections (lists, trees, graphs) \
  - Optimizing searching and sorting algorithms \
  - Memory management



= Key Takeaways
<key-takeaways>
- Data Structures organize data for efficient processing.
- Basic terms: data, record, file, etc. provide a foundation.
- Arrays are primary elementary data organizations offering fast access.
- Choosing the right data structure depends on use-case: trade-off
  between access time, insertion/deletion speed, and memory.
- Classification of data structures into primitive, non-primitive
  (linear, non-linear) helps in selecting the appropriate one.



= Practice Questions or Problems
<practice-questions-or-problems>
+ Define data, record, and file with examples. \
+ Explain the difference between primitive and non-primitive data
  structures. \
+ Write C code to delete an element at a given position from an array. \
+ Given an array of integers, write a function to insert an element at
  the beginning. \
+ List three scenarios where arrays are not the best data structure and
  suggest alternatives. \
+ Draw a diagram showing the classification of data structures (to be
  done in class). \
+ Explain why insertion in the middle of an array takes O(n) time. \
+ Write pseudocode to search for an element in an unsorted array.



#emph[Space reserved for diagrams and illustrations on: \
\- Basic data organization \
\- Classification tree of data structures \
\- Example of array insertion]


