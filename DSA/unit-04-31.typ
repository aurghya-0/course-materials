= PCC-CS301 : Data Structures and Algorithms with C
<pcc-cs301-data-structures-and-algorithms-with-c>
== Unit 4: Sorting & Hashing
<unit-4-sorting-hashing>
=== Topic: Selection Sort - Algorithm, Dry Run, Complexity
<topic-selection-sort---algorithm-dry-run-complexity>

#horizontalrule

== 1. Introduction and Definitions
<introduction-and-definitions>
- #strong[Sorting] is the process of arranging data in a particular
  order---usually ascending or descending.
- #strong[Selection Sort] is a simple comparison-based sorting
  algorithm.
- It divides the input list into two parts:
  - The sublist of items already sorted, which is built up from left to
    right at the front (beginning) of the list. \
  - The sublist of items remaining to be sorted, occupying the rest of
    the list.

#strong[Definition:] \
Selection Sort repeatedly finds the minimum (or maximum) element from
the unsorted part and places it at the beginning (or end) of the sorted
part.

#horizontalrule

== 2. Intuition and Working Principle
<intuition-and-working-principle>
- Imagine you have a deck of cards and want to sort them by value.
- You look through the entire deck for the smallest card and place it at
  the first position.
- Then you look through the remaining cards, find the next smallest, and
  place it at the second position.
- Repeat until the entire deck is sorted.

In short: \
#strong[Select the smallest element → Swap with the first unsorted
element → Move boundary by one → Repeat.]

#horizontalrule

== 3. Step-by-Step Explanation with Example
<step-by-step-explanation-with-example>
Consider the array: \
`[29, 10, 14, 37, 13]`

#figure(
  align(center)[#table(
    columns: (9.72%, 65.28%, 25%),
    align: (auto,auto,auto,),
    table.header([Pass], [Explanation], [Array After Pass],),
    table.hline(),
    [1], [Find min (10), swap with 29 (index
    0)], [`[10, 29, 14, 37, 13]`],
    [2], [Find min (13) from index 1+, swap with
    29], [`[10, 13, 14, 37, 29]`],
    [3], [Find min (14) from index 2+, already in
    place], [`[10, 13, 14, 37, 29]`],
    [4], [Find min (29) from index 3+, swap with
    37], [`[10, 13, 14, 29, 37]`],
  )]
  , kind: table
  )

Sorted array: `[10, 13, 14, 29, 37]`

#horizontalrule

== 4. Pseudocode or Algorithm
<pseudocode-or-algorithm>
```
SelectionSort(array, n)
    for i from 0 to n-2 do
        minIndex = i
        for j from i+1 to n-1 do
            if array[j] < array[minIndex] then
                minIndex = j
        if minIndex != i then
            swap(array[minIndex], array[i])
```

#horizontalrule

== 5. Code Implementation in C
<code-implementation-in-c>
```c
#include <stdio.h>

void selectionSort(int arr[], int n) {
    int i, j, minIndex, temp;

    for (i = 0; i < n - 1; i++) {
        minIndex = i;

        // Find the minimum element in the unsorted part
        for (j = i + 1; j < n; j++) {
            if (arr[j] < arr[minIndex]) {
                minIndex = j;
            }
        }

        // Swap only if needed
        if (minIndex != i) {
            temp = arr[minIndex];
            arr[minIndex] = arr[i];
            arr[i] = temp;
        }
    }
}

void printArray(int arr[], int n) {
    for (int i=0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

int main() {
    int arr[] = {29, 10, 14, 37, 13};
    int n = sizeof(arr) / sizeof(arr[0]);

    printf("Original array: ");
    printArray(arr, n);

    selectionSort(arr, n);

    printf("Sorted array: ");
    printArray(arr, n);

    return 0;
}
```

#horizontalrule

== 6. Time and Space Complexity Analysis
<time-and-space-complexity-analysis>
#figure(
  align(center)[#table(
    columns: (22.58%, 30.65%, 46.77%),
    align: (auto,auto,auto,),
    table.header([Aspect], [Complexity], [Explanation],),
    table.hline(),
    [#strong[Time Complexity (Best)];], [O(n²)], [Even if array is
    sorted, comparisons remain the same.],
    [#strong[Time Complexity (Worst)];], [O(n²)], [All elements are
    unsorted; full passes are needed.],
    [#strong[Time Complexity (Average)];], [O(n²)], [Typical case same
    as worst case.],
    [#strong[Space Complexity];], [O(1)], [In-place sorting, constant
    extra space.],
    [#strong[Stability];], [No], [Swapping min may move equal elements
    out of order.],
  )]
  , kind: table
  )

#horizontalrule

== 7. Real-World Applications
<real-world-applications>
- Small datasets where simplicity outweighs speed.
- Cases where memory is limited (in-place sorting).
- Educational purposes to introduce sorting algorithms.
- Useful when writing simple firmware or embedded systems due to low
  memory needs.

#horizontalrule

== 8. Key Takeaways
<key-takeaways>
- Selection Sort is easy to understand and implement.
- It always performs O(n²) comparisons regardless of initial data order.
- It is not efficient for large datasets compared to algorithms like
  Quick Sort or Merge Sort.
- Performs sorting in-place, requiring no extra memory.
- Not stable by default; equal elements may change relative order.

#horizontalrule

== 9. Practice Questions or Problems
<practice-questions-or-problems>
+ Manually perform selection sort on the array `[64, 25, 12, 22, 11]`
  and write each pass result.
+ Modify the selection sort code to sort the array in descending order.
+ Write a program to count the number of swaps made during selection
  sort.
+ Explain why selection sort is not stable with an example.
+ Compare and contrast selection sort with bubble sort in terms of their
  working principle and complexity.
+ Implement selection sort for an array of strings to sort
  alphabetically.
+ Given an array, apply selection sort and find the position of an
  element after sorting.
+ Explore optimization ways to improve selection sort, if any.

#horizontalrule

#emph[Leave space here for diagrams illustrating the selection process
and array partitioning during each pass.]
