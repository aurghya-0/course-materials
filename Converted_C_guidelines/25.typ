= Teaching Guideline: Array Manipulation - Searching (C Programming)
<teaching-guideline-array-manipulation---searching-c-programming>



== 1. Teaching Outline
<teaching-outline>
=== A. Introduction to Array Searching
<a.-introduction-to-array-searching>
- #strong[Definition of Searching];: \
  Finding the presence or position of a specific element within a
  collection (array). \
- #strong[Purpose];: Efficient data retrieval from arrays.

=== B. Key Concepts and Definitions
<b.-key-concepts-and-definitions>
- #strong[Array];: A collection of elements, accessed by indices, stored
  contiguously in memory. \
- #strong[Searching Algorithms];:
  - #emph[Linear Search];: Checks each element sequentially. \
  - #emph[Binary Search];: Efficient search on sorted arrays, repeatedly
    divides the array in half. \
- #strong[Index];: Position of an element in an array. \
- #strong[Sorted Array];: Array elements arranged in
  ascending/descending order (required for Binary Search).

=== C. Important Syntax and Rules (in C)
<c.-important-syntax-and-rules-in-c>
- #strong[Array Declaration];:

  ```c
  int arr[5] = {1, 2, 3, 4, 5};
  ```

- #strong[Access Element];:

  ```c
  int x = arr[2];  // Access third element (index starts at 0)
  ```

- #strong[Linear Search Function Prototype];:

  ```c
  int linearSearch(int arr[], int size, int key);
  ```

- #strong[Binary Search Function Prototype];:

  ```c
  int binarySearch(int arr[], int size, int key);
  ```

- #strong[Loop Constructs] (for traversal): `for`, `while`

=== D. Linear Search
<d.-linear-search>
- #strong[Algorithm Steps];:

  + Start at the first element. \
  + Compare element with the key. \
  + If match, return index. \
  + Move to next element if no match. \
  + If end reached, return -1 (not found).

- #strong[Time Complexity];: O(n)

- #strong[Example];:

  ```c
  int linearSearch(int arr[], int size, int key) {
      for (int i = 0; i < size; i++) {
          if (arr[i] == key) return i;
      }
      return -1;
  }
  ```

=== E. Binary Search
<e.-binary-search>
- #strong[Prerequisite];: Array must be sorted. \

- #strong[Algorithm Steps];:

  + Initialize start and end indices. \
  + Find middle index: `mid = (start + end) / 2`. \
  + Compare middle element with key. \
  + If equal, return mid. \
  + If key \< arr\[mid\], search left half. \
  + Else search right half. \
  + Repeat until found or subarray empty.

- #strong[Time Complexity];: O(log n)

- #strong[Example];:

  ```c
  int binarySearch(int arr[], int size, int key) {
      int start = 0, end = size - 1;

      while (start <= end) {
          int mid = (start + end) / 2;

          if (arr[mid] == key) return mid;
          else if (key < arr[mid]) end = mid - 1;
          else start = mid + 1;
      }
      return -1;
  }
  ```

=== F. Common Mistakes to Avoid
<f.-common-mistakes-to-avoid>
- #strong[Linear Search];:
  - Forgetting to check all elements. \
  - Returning incorrect index or not handling the “not found” case (-1).
- #strong[Binary Search];:
  - Using binary search on unsorted data. \
  - Incorrect calculation of `mid` leading to infinite loops. \
  - Off-by-one errors in updating `start` and `end`. \
  - Integer overflow when computing `mid` (use
    `mid = start + (end - start)/2` to prevent).
- #strong[General];:
  - Confusing array indices (0-based). \
  - Not checking array boundaries during traversal.

=== G. Real-World Applications
<g.-real-world-applications>
- Searching for a username or password in user databases (linear if
  unsorted, binary if sorted). \
- Looking up items in product lists, menus, or catalogs. \
- Algorithms in databases and text processing often rely on searching.



== 2. In-Class Practice Questions
<in-class-practice-questions>
=== Question 1: Find Element with Linear Search
<question-1-find-element-with-linear-search>
#strong[Problem:] Given an array `int arr[5] = {2, 4, 6, 8, 10}`, write
a function to find the index of element `6`. \
#strong[Concept Tested:] Linear search basics. \
#strong[Hint:] Check each element in order.



=== Question 2: Handle Element Not Found Case
<question-2-handle-element-not-found-case>
#strong[Problem:] Modify the linear search function to return `-1` if
the element is not present. Test it with key = `7` on the above array. \
#strong[Concept Tested:] Proper handling of “not found” scenario.



=== Question 3: Binary Search Implementation
<question-3-binary-search-implementation>
#strong[Problem:] Write a function that performs binary search on a
sorted array `int arr[6] = {1, 3, 5, 7, 9, 11}` to find element `7`. \
#strong[Concept Tested:] Binary search logic; searching sorted array. \
#strong[Hint:] Implement while loop with start, end, mid.



=== Question 4: Binary Search on Unsorted Array
<question-4-binary-search-on-unsorted-array>
#strong[Problem:] What happens if you apply binary search on array
`int arr[5] = {5, 1, 4, 2, 3}` for key `4`? Explain. \
#strong[Concept Tested:] Importance of sorting for binary search;
conceptual understanding.



=== Question 5: Debugging Binary Search
<question-5-debugging-binary-search>
#strong[Problem:] Review this binary search code snippet, identify and
fix errors:

```c
int binarySearch(int arr[], int size, int key) {
    int start = 0, end = size;
    while (start < end) {
        int mid = (start + end) / 2;
        if (arr[mid] == key) return mid;
        else if (key < arr[mid]) end = mid;
        else start = mid + 1;
    }
    return -1;
}
```

#strong[Concept Tested:] Off-by-one errors; loop conditions. \
#strong[Hint:] Compare loop boundaries with standard binary search
template.



== 3. Homework Practice Questions
<homework-practice-questions>
=== Homework 1: Implement Linear Search for Character Array
<homework-1-implement-linear-search-for-character-array>
#strong[Problem:] Implement linear search for
`char arr[] = {'a','e','i','o','u'}` to find a specific vowel. Return
its index or -1. \
#strong[Difficulty:] Easy \
#strong[Concept:] Linear search on characters.



=== Homework 2: Write Recursive Binary Search
<homework-2-write-recursive-binary-search>
#strong[Problem:] Write a recursive function to perform binary search on
a sorted integer array and return index of the key. \
#strong[Difficulty:] Medium \
#strong[Concept:] Recursion; binary search.



=== Homework 3: Count Occurrences with Linear Search
<homework-3-count-occurrences-with-linear-search>
#strong[Problem:] Given array `int arr[8] = {1, 3, 3, 7, 8, 3, 9, 3}`,
count how many times number `3` appears using linear search methodology.
\
#strong[Difficulty:] Medium \
#strong[Concept:] Looping + counting matches.



=== Homework 4: Modify Binary Search to Return First Occurrence
<homework-4-modify-binary-search-to-return-first-occurrence>
#strong[Problem:] In a sorted array `int arr[] = {2, 4, 4, 4, 5, 6}`,
modify binary search to return the first index of `4` (even if multiple
4s exist). \
#strong[Difficulty:] Hard \
#strong[Concept:] Binary search variants; duplicates handling.



=== Homework 5: Conceptual - Compare Linear vs Binary Search
<homework-5-conceptual---compare-linear-vs-binary-search>
#strong[Problem:] Write a short explanation comparing linear search and
binary search in terms of efficiency, when to use each, and limitations.
\
#strong[Difficulty:] Easy \
#strong[Concept:] Theory-based understanding.



== Additional Teaching Tips
<additional-teaching-tips>
- Use real-time coding and debugging sessions to engage students. \
- Encourage hands-on practice after each concept. \
- Use visual aids for binary search (e.g., showing array halves
  visually). \
- Discuss efficiency benefits to motivate learning binary search over
  linear search for sorted data.



This guideline aims to build a strong foundational understanding of
searching in arrays, blending theory, practice, and real-world context
suited for a dynamic bootcamp setting.
