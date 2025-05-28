= PCC-CS301 : Data Structures and Algorithms with C
<pcc-cs301-data-structures-and-algorithms-with-c>
== Unit 1: Introduction to Searching
<unit-1-introduction-to-searching>
=== Topic: Searching - Comparison - Linear vs Binary Search - Use Cases and Performance Comparison
<topic-searching---comparison---linear-vs-binary-search---use-cases-and-performance-comparison>

#horizontalrule

== 1. Introduction and Definitions
<introduction-and-definitions>
- #strong[Searching:] The process of finding the position of a target
  element (key) within a data structure, typically an array or list.
- #strong[Types of Searching:] Two common basic techniques:
  - #strong[Linear Search (Sequential Search)]
  - #strong[Binary Search]
- #strong[Why searching?] \
  Searching is one of the fundamental operations in data structures and
  algorithms and serves as a building block for many complex operations.

#horizontalrule

== 2. Intuition and Working Principle
<intuition-and-working-principle>
=== Linear Search
<linear-search>
- #strong[Intuition:] Look at each element, one by one, until you find
  the target or reach the end.
- #strong[Best for:] Unsorted or small datasets.
- #strong[Working:] Checks elements sequentially, stopping if it finds
  the target.

=== Binary Search
<binary-search>
- #strong[Intuition:] Repeatedly divide a #strong[sorted] list in half
  to reduce search space.
- #strong[Best for:] Sorted datasets.
- #strong[Working:] Compare middle element with target; if less, search
  right half; if more, search left half.

#horizontalrule

== 3. Step-by-step Explanation with Example
<step-by-step-explanation-with-example>
=== Linear Search Example
<linear-search-example>
Array: `[5, 8, 12, 20, 7]` \
Search for `20`: \
\1. Check `5` → not `20` \
\2. Check `8` → not `20` \
\3. Check `12` → not `20` \
\4. Check `20` → found! Return index `3`.

=== Binary Search Example
<binary-search-example>
Sorted Array: `[3, 7, 15, 20, 25, 30]` \
Search for `20`: \
\1. Middle = index 2 (`15`) \
\2. `20` \> `15`, search right half `[20, 25, 30]` \
\3. Middle = index 4 (`25`) (relative index) \
\4. `20` \< `25`, search left half `[20]` \
\5. Found `20` at index `3`.

#horizontalrule

#emph[Insert diagrams here to visualize linear and binary search steps]

#horizontalrule

== 4. Pseudocode or Algorithm
<pseudocode-or-algorithm>
=== Linear Search
<linear-search-1>
```
LinearSearch(array, target):
  for i from 0 to length(array) - 1:
    if array[i] == target:
      return i    // target found at index i
  return -1         // target not found
```

=== Binary Search
<binary-search-1>
```
BinarySearch(array, target, left, right):
  while left <= right:
    mid = left + (right - left) / 2
    if array[mid] == target:
      return mid
    else if target < array[mid]:
      right = mid - 1
    else:
      left = mid + 1
  return -1          // target not found
```

#horizontalrule

== 5. Code Implementation in C
<code-implementation-in-c>
=== Linear Search in C
<linear-search-in-c>
```c
int linearSearch(int arr[], int n, int target) {
    for (int i = 0; i < n; i++) {
        if (arr[i] == target) {
            return i;  // target found
        }
    }
    return -1;  // target not found
}
```

=== Binary Search in C
<binary-search-in-c>
```c
int binarySearch(int arr[], int left, int right, int target) {
    while (left <= right) {
        int mid = left + (right - left) / 2;

        if (arr[mid] == target)
            return mid;  // target found
        else if (target < arr[mid])
            right = mid - 1;
        else
            left = mid + 1;
    }
    return -1;  // target not found
}
```

#horizontalrule

== 6. Time and Space Complexity Analysis
<time-and-space-complexity-analysis>
#figure(
  align(center)[#table(
    columns: (19.51%, 29.27%, 29.27%, 21.95%),
    align: (auto,auto,auto,auto,),
    table.header([Search Type], [Time Complexity (Best)], [Time
      Complexity (Worst)], [Space Complexity],),
    table.hline(),
    [Linear Search], [O(1)], [O(n)], [O(1)],
    [Binary Search], [O(1)], [O(log n)], [O(1)],
  )]
  , kind: table
  )

- #strong[Linear Search:] Time grows with the size of the array; no
  extra space required.
- #strong[Binary Search:] Much faster for large sorted data; requires
  sorted data beforehand.

#horizontalrule

== 7. Real-world Applications
<real-world-applications>
- #strong[Linear Search:]
  - Searching in unsorted lists \
  - Finding elements in small or unsorted collections \
  - Runtime environments where data is continuously changing or unsorted
- #strong[Binary Search:]
  - Lookup operations in databases \
  - Searching in large sorted datasets (e.g., phone books, dictionaries)
    \
  - Binary search trees, searching in files or sorted arrays

#horizontalrule

== 8. Key Takeaways
<key-takeaways>
- Linear Search is simple, works on unsorted data, but inefficient for
  large data.
- Binary Search is efficient but requires sorted data.
- Always consider whether your data is sorted before choosing the search
  method.
- Binary search significantly reduces search time in large datasets.
- Understanding these basics is crucial for more advanced search
  techniques.

#horizontalrule

== 9. Practice Questions or Problems
<practice-questions-or-problems>
+ Implement linear search to find an element in an array of
  floating-point numbers.
+ Write a program to implement binary search recursively.
+ Given a sorted array, search for multiple target values using both
  search methods and compare their running time.
+ Modify the binary search to return the index of the first occurrence
  if duplicates exist.
+ Why is binary search not suitable for linked lists? Explain and
  suggest alternative approaches.
+ Design a program that decides which search algorithm to use based on
  the sorting status of the array.

#horizontalrule

#emph[End of notes for Unit 1 - Introduction to Searching]
