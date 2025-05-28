# PCC-CS301 : Data Structures and Algorithms with C  
## Unit 4: Sorting & Hashing  
### Topic: Heap Sort - Max Heap Construction, Sorting Process, Complexity

---

## 1. Introduction and Definitions

- **Heap Sort** is a comparison-based sorting technique based on a binary heap data structure.
- A **Max Heap** is a complete binary tree where the value of each node is greater than or equal to the values of its children.
- Heap Sort works by first building a max heap from the input data, then repeatedly extracting the maximum element to sort the array.

**Key Terms:**  
- **Heap:** A specialized tree-based data structure.
- **Max Heap:** Root node is the largest element.
- **Heapify:** Process to maintain heap property after modifications.
- **Complete Binary Tree:** All levels are fully filled except possibly the last, which is filled from left to right.

---

## 2. Intuition and Working Principle

- Heap Sort transforms the unsorted array into a max heap.
- The largest element is now at the root of the heap.
- Swap the root with the last element of the heap, reduce heap size by one.
- Heapify the root node to restore max heap property.
- Repeat the process until the heap size is reduced to one.

**Why use Max Heap?**  
It helps in **efficient extraction of the maximum element** repeatedly, allowing sorting without extra space.

---

## 3. Step-by-Step Explanation with Example

Consider the array:  
`[4, 10, 3, 5, 1]`

### Step 1: Build Max Heap  
- Build max heap from the array (starting from last non-leaf node).

Heap after building max heap:  
```
        10
       /  \
      5    3
     /  \
    4    1
```

### Step 2: Sort Process  

| Iteration | Action                                | Array State             |
|-----------|-------------------------------------|-------------------------|
| 1         | Swap root (10) with last (1); heapify the root | `[1, 5, 3, 4, 10]`     |
| 2         | Heapify root on reduced heap         | `[5, 4, 3, 1, 10]`     |
| 3         | Swap root (5) with last element(1)  | `[1, 4, 3, 5, 10]`     |
| 4         | Heapify root                        | `[4, 1, 3, 5, 10]`     |
| 5         | Swap root (4) with last element(1)  | `[1, 3, 4, 5, 10]`     |
| 6         | Heapify root                        | `[3, 1, 4, 5, 10]`     |
| 7         | Swap root (3) with last element(1)  | `[1, 3, 4, 5, 10]`     |
| 8         | Heapify root                        | `[1, 3, 4, 5, 10]`     |

Sorted array:  
`[1, 3, 4, 5, 10]`

---

## 4. Pseudocode or Algorithm

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

---

## 5. Code Implementation in C

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

---

## 6. Time and Space Complexity Analysis

| Operation           | Complexity           |
|---------------------|---------------------|
| Building Max Heap    | O(n)                |
| Heapify Operation   | O(log n) (worst-case)|
| Heap Sort Overall   | O(n log n)          |
| Space Complexity     | O(1) (in-place sort)|

- **Explanation:**  
Building the heap takes linear time because it starts heapifying from non-leaf nodes. Sorting involves n extraction steps, each causing a heapify operation that takes O(log n), hence O(n log n).

---

## 7. Real-World Applications

- **Priority Queues:** Managing tasks/jobs based on priority.
- **Graph algorithms:** Such as Dijkstra's and Prim's algorithm.
- Efficient sorting when memory space is critical due to in-place sorting.
- Used in systems that require dynamically changing data to be sorted quickly.

---

## 8. Key Takeaways

- Heap sort uses a binary heap data structure to sort elements efficiently.
- Max heap ensures the maximum element is always at the root.
- The process involves building a max heap, then repeatedly extracting the max.
- Time complexity is consistently O(n log n), regardless of input data distribution.
- Space complexity is minimal (in-place).
- Heap sort is not stable but is efficient for large datasets in limited memory.

---

## 9. Practice Questions or Problems

1. Trace the heap sort process on the array: `[12, 11, 13, 5, 6, 7]`. Show all intermediate steps.
2. Implement heap sort to sort a list of floating-point numbers.
3. Modify the heap sort code to build a **min heap** and sort the array in descending order.
4. Explain why building a heap takes O(n) time rather than O(n log n).
5. Given an array, how would you check if it already satisfies the max heap property?
6. Compare heap sort with quicksort and mergesort in terms of average and worst-case performance.

---

**[Insert diagrams here for max heap tree structure, heapify process, and sorting steps]**