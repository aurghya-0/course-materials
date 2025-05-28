= PCC-CS301: Data Structures and Algorithms with C
<pcc-cs301-data-structures-and-algorithms-with-c>
== Unit 4: Sorting & Hashing
<unit-4-sorting-hashing>
=== Topic: Merge Sort - Divide and Conquer, Algorithm, Complexity
<topic-merge-sort---divide-and-conquer-algorithm-complexity>

#horizontalrule

== 1. Introduction and Definitions
<introduction-and-definitions>
- #strong[Sorting];: The process of arranging data in a particular order
  (ascending or descending).
- #strong[Merge Sort];:
  - A comparison-based sorting algorithm based on the #strong[Divide and
    Conquer] paradigm. \
  - It divides the input array into two halves, sorts them recursively,
    and then merges the sorted halves. \
- #strong[Divide and Conquer];: A strategy that solves a problem by
  breaking it down into smaller subproblems, solving each subproblem
  independently, and combining their results.

#horizontalrule

== 2. Intuition and Working Principle
<intuition-and-working-principle>
- Imagine you have a large unsorted list of numbers.
- Divide the list into two roughly equal halves.
- Recursively apply merge sort on each half until you get arrays of size
  one (which are inherently sorted).
- Merge the two smaller sorted arrays to form a bigger sorted array.
- Repeat the merge process until the whole array is sorted.

#strong[Key idea];: Breaking big problems into simpler, manageable
chunks and then merging results efficiently.

#horizontalrule

== 3. Step-by-Step Explanation with Example
<step-by-step-explanation-with-example>
#strong[Example Array];: `[38, 27, 43, 3, 9, 82, 10]`

+ #strong[Divide];: \
  Split into two halves: \
  Left → `[38, 27, 43]` \
  Right → `[3, 9, 82, 10]`
+ #strong[Sort Left Half];:
  - Further divide `[38, 27, 43]` → `[38]` and `[27, 43]` \
  - Sort `[27, 43]` → `[27]` and `[43]` (already sorted) \
  - Merge `[27]` and `[43]` → `[27, 43]` \
  - Merge `[38]` and `[27, 43]` → `[27, 38, 43]`
+ #strong[Sort Right Half];:
  - Divide `[3, 9, 82, 10]` → `[3, 9]` and `[82, 10]` \
  - Sort `[3, 9]` → already sorted \
  - Sort `[82, 10]` → `[82]` and `[10]` → merge to `[10, 82]` \
  - Merge `[3, 9]` and `[10, 82]` → `[3, 9, 10, 82]`
+ #strong[Merge Two Halves];: \
  Merge `[27, 38, 43]` and `[3, 9, 10, 82]` → Final sorted array: \
  `[3, 9, 10, 27, 38, 43, 82]`

#horizontalrule

== 4. Pseudocode or Algorithm
<pseudocode-or-algorithm>
```
MERGE_SORT(arr[], left, right):
    if left < right:
        mid = (left + right) / 2
        MERGE_SORT(arr, left, mid)
        MERGE_SORT(arr, mid+1, right)
        MERGE(arr, left, mid, right)

MERGE(arr[], left, mid, right):
    n1 = mid - left + 1
    n2 = right - mid

    Create arrays L[0..n1-1] and R[0..n2-1]

    for i = 0 to n1-1:
        L[i] = arr[left + i]
    for j = 0 to n2-1:
        R[j] = arr[mid + 1 + j]

    i = 0; j = 0; k = left

    while i < n1 and j < n2:
        if L[i] <= R[j]:
            arr[k] = L[i]
            i = i + 1
        else:
            arr[k] = R[j]
            j = j + 1
        k = k + 1

    // Copy remaining elements (if any) from L[]
    while i < n1:
        arr[k] = L[i]
        i = i + 1
        k = k + 1

    // Copy remaining elements (if any) from R[]
    while j < n2:
        arr[k] = R[j]
        j = j + 1
        k = k + 1
```

#horizontalrule

== 5. Code Implementation in C
<code-implementation-in-c>
```c
#include <stdio.h>

void merge(int arr[], int left, int mid, int right) {
    int n1 = mid - left + 1;
    int n2 = right - mid;

    int L[n1], R[n2];

    // Copy data to temp arrays L[] and R[]
    for (int i = 0; i < n1; i++)
        L[i] = arr[left + i];
    for (int j = 0; j < n2; j++)
        R[j] = arr[mid + 1 + j];

    int i = 0, j = 0, k = left;

    // Merge temp arrays back into arr[left..right]
    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k++] = L[i++];
        } else {
            arr[k++] = R[j++];
        }
    }

    // Copy remaining elements of L[], if any
    while (i < n1) {
        arr[k++] = L[i++];
    }

    // Copy remaining elements of R[], if any
    while (j < n2) {
        arr[k++] = R[j++];
    }
}

void mergeSort(int arr[], int left, int right) {
    if (left < right) {
        int mid = left + (right - left) / 2;

        mergeSort(arr, left, mid);
        mergeSort(arr, mid + 1, right);

        merge(arr, left, mid, right);
    }
}

void printArray(int arr[], int size) {
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

int main() {
    int arr[] = {38, 27, 43, 3, 9, 82, 10};
    int size = sizeof(arr) / sizeof(arr[0]);

    printf("Original array:\n");
    printArray(arr, size);

    mergeSort(arr, 0, size - 1);

    printf("Sorted array:\n");
    printArray(arr, size);

    return 0;
}
```

#horizontalrule

== 6. Time and Space Complexity Analysis
<time-and-space-complexity-analysis>
#figure(
  align(center)[#table(
    columns: (25.61%, 58.54%, 15.85%),
    align: (auto,auto,auto,),
    table.header([Complexity Type], [Analysis], [Result],),
    table.hline(),
    [#strong[Best Case];], [All splits and merges occur
    regardless], [O(n log n)],
    [#strong[Worst Case];], [Similar to best as divide and merge always
    occur], [O(n log n)],
    [#strong[Average Case];], [Average over random data], [O(n log n)],
    [#strong[Space Complexity];], [Requires additional arrays for
    merging], [O(n)],
  )]
  , kind: table
  )

- #strong[Explanation];:
  - Merge Sort divides the array into halves (log n divisions). \
  - Each level merges n elements, leading to O(n) work per level. \
  - Total work: O(n log n). \
  - Requires extra space for temporary arrays during merging.

#horizontalrule

== 7. Real-World Applications
<real-world-applications>
- #strong[Stable Sorting Requirement];: When the stability of sorting
  matters (like sorting records by multiple fields).
- #strong[Large Data Sorting];: Efficient even for large datasets; often
  used in external sorting where data doesn't fit in memory.
- #strong[Parallel Processing];: Its divide and conquer nature makes it
  suitable for parallel implementations.
- #strong[Merge in Databases];: Used while merging sorted lists in
  database systems or file systems.
- #strong[Linked lists Sorting];: Performs well on linked lists (unlike
  Quick Sort).

#horizontalrule

== 8. Key Takeaways
<key-takeaways>
- Merge sort is a classic example of the Divide and Conquer algorithm.
- It consistently runs in O(n log n) time, which is efficient for many
  practical uses.
- Requires additional space, unlike some in-place sorts (like Quick
  Sort).
- Stable sort --- maintains relative order of equal elements.
- Preferred when stability or guaranteed performance is critical.

#horizontalrule

== 9. Practice Questions or Problems
<practice-questions-or-problems>
+ #strong[Implement Merge Sort on a linked list.] \
+ Given two sorted arrays, write a program to merge them into one sorted
  array using the merging technique of Merge Sort. \
+ Analyze and compare the time and space efficiency of Merge Sort and
  Quick Sort on different data sets. \
+ Modify the Merge Sort algorithm to sort in descending order. \
+ Trace the Merge Sort algorithm step-by-step given the input array:
  `[12, 11, 13, 5, 6, 7]`. Draw the recursive calls and merge steps. \
+ What changes would be needed in the merge function if the input is a
  string array instead of integers?

#horizontalrule

\[Insert diagrams illustrating the divide and merge steps here\]

\[Insert stepwise array splits and merges illustration here\]

#horizontalrule

#strong[End of notes for Merge Sort]
