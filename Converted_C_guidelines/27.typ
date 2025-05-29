= Finding the Largest/Smallest Element in an Array (in C)
<teaching-guideline-finding-the-largestsmallest-element-in-an-array-in-c>

== 1. Teaching Outline
<teaching-outline>
=== A. Introduction to Arrays and Elements
<a.-introduction-to-arrays-and-elements>
- #strong[Definition of an Array:] A collection of elements of the same
  data type stored at contiguous memory locations.
- #strong[Element in an Array:] Individual data items stored in the
  array, accessible by index.

=== B. Key Definitions
<b.-key-definitions>
- #strong[Maximum Element:] The largest value present in the array.
- #strong[Minimum Element:] The smallest value present in the array.

=== C. Important Syntax and Rules in C
<c.-important-syntax-and-rules-in-c>
- #strong[Declaring Arrays:]

  ```c
  int arr[10]; // An array of 10 integers
  ```

- #strong[Accessing Elements:]

  ```c
  arr[0];  // First element
  arr[i];  // Element at index i, 0 <= i < size
  ```

- #strong[Looping Through Arrays:] Using `for` loop for traversing all
  elements.

  ```c
  for (int i = 0; i < size; i++) {
      // Access arr[i]
  }
  ```

- #strong[Finding Largest/Smallest Element:]

  - Initialize max/min with the first element.
  - Compare each element to current max/min and update accordingly.

=== D. Step-by-Step Algorithm to Find Largest/Smallest Element
<d.-step-by-step-algorithm-to-find-largestsmallest-element>
+ Initialize variables `max` and `min` to the first element `arr[0]`.
+ Loop through the array from index 1 to last index.
+ For each element:
  - If element \> current `max`, update `max`.
  - If element \< current `min`, update `min`.
+ After the loop ends, `max` and `min` contain the largest and smallest
  elements.

=== E. Code Demonstration (Example)
<e.-code-demonstration-example>
```c
#include <stdio.h>

int main() {
    int arr[] = {12, 3, 45, 7, 1, 90, 23};
    int size = sizeof(arr)/sizeof(arr[0]);
    int max = arr[0];
    int min = arr[0];

    for (int i = 1; i < size; i++) {
        if (arr[i] > max) {
            max = arr[i];
        }
        if (arr[i] < min) {
            min = arr[i];
        }
    }

    printf("Largest element is %d\n", max);
    printf("Smallest element is %d\n", min);

    return 0;
}
```

=== F. Common Mistakes to Avoid
<f.-common-mistakes-to-avoid>
- #strong[Not initializing max/min before loop:] Initializing to zero or
  an arbitrary number instead of the first array element can lead to
  incorrect results, especially with arrays that contain negative
  values.
- #strong[Using wrong loop boundaries:] Loop should start from 1 if
  max/min initialized with index 0; otherwise, the first element is
  compared twice.
- #strong[Ignoring empty array cases:] Always ensure the array has at
  least one element to avoid runtime errors.
- #strong[Incorrect data types:] Make sure data type of variables is
  compatible with array data type (e.g., int, float).
- #strong[Off-by-one errors in loops:] Ensure loop runs from 0 to
  size-1.

=== G. Real-World Applications
<g.-real-world-applications>
- Analyzing data sets to find extrema (max/min temperature, financial
  highs/lows).
- Finding boundaries in array-based data structures.
- Algorithm optimization by quickly identifying candidates for further
  operations (e.g., max profit in stock prices).
- Pre-processing in sorting and searching algorithms.



== 2. In-Class Practice Questions
<in-class-practice-questions>
=== Question 1: Find the Largest Element (Basic)
<question-1-find-the-largest-element-basic>
#strong[Problem Statement:] Write a program to find and print the
largest number in the array: `{10, 20, 15, 2, 25}`. \
#strong[Concept Tested:] Initialization and basic loop traversal to find
max. \
#strong[Hint:] Start max with the first array element.



=== Question 2: Find the Smallest Element (Basic)
<question-2-find-the-smallest-element-basic>
#strong[Problem Statement:] Modify the previous program to find and
print the smallest number in the same array. \
#strong[Concept Tested:] Similar to max, but using comparison for
minimum value.



=== Question 3: Find Both Largest and Smallest in One Pass (Intermediate)
<question-3-find-both-largest-and-smallest-in-one-pass-intermediate>
#strong[Problem Statement:] Write a program to find both the largest and
smallest elements in the array `{3, 5, 7, 2, 8, -1, 4}` using a single
loop. \
#strong[Concept Tested:] Efficient traversal and comparison for two
variables simultaneously. \
#strong[Hint:] Initialize both max and min with the first element.



=== Question 4: Handling Negative and Zero Elements (Intermediate)
<question-4-handling-negative-and-zero-elements-intermediate>
#strong[Problem Statement:] Given the array `{-10, 0, -20, 5, 15}`, find
and print the largest and smallest numbers. \
#strong[Concept Tested:] Correct initialization and handling of negative
values. \
#strong[Hint:] Do not initialize max or min with zero or any arbitrary
number unless you know the input domain.



=== Question 5: Find Largest/Smallest in User Input Array (Advanced)
<question-5-find-largestsmallest-in-user-input-array-advanced>
#strong[Problem Statement:] Write a program that asks the user to enter
`n` integers, stores them in an array, and then finds and prints the
largest and smallest elements. \
#strong[Concept Tested:] Dynamic input handling, use of loops, and
finding min/max. \
#strong[Hint:] Use `scanf` inside a loop to read input.



== 3. Homework Practice Questions
<homework-practice-questions>
=== Question 1: Code to Find Largest and Its Index (Coding)
<question-1-code-to-find-largest-and-its-index-coding>
Write a program that finds the largest number in an array and also
returns the index at which it occurs.



=== Question 2: Code to Find Smallest and Its Index (Coding)
<question-2-code-to-find-smallest-and-its-index-coding>
Modify the above program to find the smallest number and its index in
the array.



=== Question 3: Concept: Why Initialize max/min with `arr[0]`? (Conceptual)
<question-3-concept-why-initialize-maxmin-with-arr0-conceptual>
Explain why initializing the max/min variable with the first element of
the array is better than initializing with 0 or an arbitrary number.



=== Question 4: Code: Finding Largest and Smallest in a Float Array (Coding)
<question-4-code-finding-largest-and-smallest-in-a-float-array-coding>
Write a program to find the largest and smallest elements in an array of
floating-point numbers like `{3.5, 4.8, 1.2, 9.0, 2.6}`.



=== Question 5: Concept: What Happens If the Array is Empty? (Conceptual)
<question-5-concept-what-happens-if-the-array-is-empty-conceptual>
Discuss what will happen when trying to find the largest or smallest
element in an empty array and how to handle this situation gracefully in
code.



= Additional Notes for the Teacher:
<additional-notes-for-the-teacher>
- Encourage students to dry-run code with example arrays.
- Use debugging print statements when relevant.
- Promote use of functions to modularize code.
- Emphasize understanding over just writing code---ask students to
  verbalize their thought process.
- Use pair programming or group discussion for in-class practice.
- Consider a small quiz or flashcards for quick conceptual recall.
