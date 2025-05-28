= PCC-CS301 : Data Structures and Algorithms with C
<pcc-cs301-data-structures-and-algorithms-with-c>
== Unit 4: Sorting & Hashing
<unit-4-sorting-hashing>
=== Topic: Heap Sort - Max Heap Construction, Sorting Process, Complexity
<topic-heap-sort---max-heap-construction-sorting-process-complexity>

#horizontalrule

== 1. Introduction and Definitions
<introduction-and-definitions>
- #strong[Heap Sort] is a comparison-based sorting technique based on a
  binary heap data structure.
- A #strong[Max Heap] is a complete binary tree where the value of each
  node is greater than or equal to the values of its children.
- Heap Sort works by first building a max heap from the input data, then
  repeatedly extracting the maximum element to sort the array.

#strong[Key Terms:] \
\- #strong[Heap:] A specialized tree-based data structure. - #strong[Max
Heap:] Root node is the largest element. - #strong[Heapify:] Process to
maintain heap property after modifications. - #strong[Complete Binary
Tree:] All levels are fully filled except possibly the last, which is
filled from left to right.

#horizontalrule

== 2. Intuition and Working Principle
<intuition-and-working-principle>
- Heap Sort transforms the unsorted array into a max heap.
- The largest element is now at the root of the heap.
- Swap the root with the last element of the heap, reduce heap size by
  one.
- Heapify the root node to restore max heap property.
- Repeat the process until the heap size is reduced to one.

#strong[Why use Max Heap?] \
It helps in #strong[efficient extraction of the maximum element]
repeatedly, allowing sorting without extra space.

#horizontalrule

== 3. Step-by-Step Explanation with Example
<step-by-step-explanation-with-example>
Consider the array: \
`[4, 10, 3, 5, 1]`

=== Step 1: Build Max Heap
<step-1-build-max-heap>
- Build max heap from the array (starting from last non-leaf node).

Heap after building max heap:

```
        10
       /  \
      5    3
     /  \
    4    1
```

=== Step 2: Sort Process
<step-2-sort-process>
#figure(
  align(center)[#table(
    columns: (15.07%, 50.68%, 34.25%),
    align: (auto,auto,auto,),
    table.header([Iteration], [Action], [Array State],),
    table.hline(),
    [1], [Swap root (10) with last (1); heapify the
    root], [`[1, 5, 3, 4, 10]`],
    [2], [Heapify root on reduced heap], [`[5, 4, 3, 1, 10]`],
    [3], [Swap root (5) with last element(1)], [`[1, 4, 3, 5, 10]`],
    [4], [Heapify root], [`[4, 1, 3, 5, 10]`],
    [5], [Swap root (4) with last element(1)], [`[1, 3, 4, 5, 10]`],
    [6], [Heapify root], [`[3, 1, 4, 5, 10]`],
    [7], [Swap root (3) with last element(1)], [`[1, 3, 4, 5, 10]`],
    [8], [Heapify root], [`[1, 3, 4, 5, 10]`],
  )]
  , kind: table
  )

Sorted array: \
`[1, 3, 4, 5, 10]`

#horizontalrule

== 4. Pseudocode or Algorithm
<pseudocode-or-algorithm>
```plaintext
HEAPSORT(A)
  n ← length(A)
  
  // Build max heap
  for i from floor(n/2) downto 1 do
    HEAPIFY(A, i, n)
  
  // Extract elements from heap one by one
  for i from n downto 2 do
    swap A[1] and A[i]        // Move current max to end
    HEAPIFY(A, 1, i-1)        // Call max heapify on the reduced heap
  
HEAPIFY(A, i, n)
  left ← 2*i
  right ← 2*i + 1
  largest ← i
  
  if left ≤ n and A[left] > A[largest] then
    largest ← left
  if right ≤ n and A[right] > A[largest] then
    largest ← right
  
  if largest ≠ i then
    swap A[i], A[largest]
    HEAPIFY(A, largest, n)
```

#horizontalrule

== 5. Code Implementation in C
<code-implementation-in-c>
```c
#include <stdio.h>

void heapify(int arr[], int n, int i) {
    int largest = i;         // Initialize largest as root
    int left = 2 * i + 1;    // left child index
    int right = 2 * i + 2;   // right child index
    
    if (left < n && arr[left] > arr[largest])
        largest = left;
    
    if (right < n && arr[right] > arr[largest])
        largest = right;
    
    if (largest != i) {
        // Swap
        int temp = arr[i];
        arr[i] = arr[largest];
        arr[largest] = temp;
        
        // Recursively heapify the affected subtree
        heapify(arr, n, largest);
    }
}

void heapSort(int arr[], int n) {
    // Build max heap
    for (int i = n / 2 - 1; i >= 0; i--)
        heapify(arr, n, i);
    
    // Extract elements from heap
    for (int i = n - 1; i > 0; i--) {
        // Move current root to end
        int temp = arr[0];
        arr[0] = arr[i];
        arr[i] = temp;
        
        // Call max heapify on reduced heap
        heapify(arr, i, 0);
    }
}

void printArray(int arr[], int n) {
    for (int i = 0; i < n; i++)
        printf("%d ", arr[i]);
    printf("\n");
}

int main() {
    int arr[] = {4, 10, 3, 5, 1};
    int n = sizeof(arr) / sizeof(arr[0]);

    printf("Original array:\n");
    printArray(arr, n);
    
    heapSort(arr, n);
    
    printf("Sorted array:\n");
    printArray(arr, n);
    
    return 0;
}
```

#horizontalrule

== 6. Time and Space Complexity Analysis
<time-and-space-complexity-analysis>
#figure(
  align(center)[#table(
    columns: 2,
    align: (auto,auto,),
    table.header([Operation], [Complexity],),
    table.hline(),
    [Building Max Heap], [O(n)],
    [Heapify Operation], [O(log n) (worst-case)],
    [Heap Sort Overall], [O(n log n)],
    [Space Complexity], [O(1) (in-place sort)],
  )]
  , kind: table
  )

- #strong[Explanation:] \
  Building the heap takes linear time because it starts heapifying from
  non-leaf nodes. Sorting involves n extraction steps, each causing a
  heapify operation that takes O(log n), hence O(n log n).

#horizontalrule

== 7. Real-World Applications
<real-world-applications>
- #strong[Priority Queues:] Managing tasks/jobs based on priority.
- #strong[Graph algorithms:] Such as Dijkstra's and Prim's algorithm.
- Efficient sorting when memory space is critical due to in-place
  sorting.
- Used in systems that require dynamically changing data to be sorted
  quickly.

#horizontalrule

== 8. Key Takeaways
<key-takeaways>
- Heap sort uses a binary heap data structure to sort elements
  efficiently.
- Max heap ensures the maximum element is always at the root.
- The process involves building a max heap, then repeatedly extracting
  the max.
- Time complexity is consistently O(n log n), regardless of input data
  distribution.
- Space complexity is minimal (in-place).
- Heap sort is not stable but is efficient for large datasets in limited
  memory.

#horizontalrule

== 9. Practice Questions or Problems
<practice-questions-or-problems>
+ Trace the heap sort process on the array: `[12, 11, 13, 5, 6, 7]`.
  Show all intermediate steps.
+ Implement heap sort to sort a list of floating-point numbers.
+ Modify the heap sort code to build a #strong[min heap] and sort the
  array in descending order.
+ Explain why building a heap takes O(n) time rather than O(n log n).
+ Given an array, how would you check if it already satisfies the max
  heap property?
+ Compare heap sort with quicksort and mergesort in terms of average and
  worst-case performance.

#horizontalrule

#strong[\[Insert diagrams here for max heap tree structure, heapify
process, and sorting steps\]]
