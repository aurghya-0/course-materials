# PCC-CS301: Data Structures and Algorithms with C  
## Unit 4: Sorting & Hashing  
### Topic: Sorting Comparison - Comparative Analysis of All Techniques

---

## 1. Introduction and Definitions

**Sorting** is a fundamental operation in data processing where a collection of items (numbers, strings, etc.) is arranged in a certain order (usually ascending or descending).

**Sorting Techniques:** Different algorithms used to order data efficiently. Each sorting algorithm differs in terms of approach, efficiency, and use case.

**Purpose of Comparison:** Understand how different sorting algorithms perform under various conditions, to select the best algorithm for the problem.

---

## 2. Intuition and Working Principle

Sorting algorithms generally operate by comparing and rearranging elements in the data set.

- **Comparison-based Sorting**: Sort by comparing elements and swapping/rearranging based on comparisons (e.g., Bubble Sort, Merge Sort).
- **Non-comparison Sorting**: Use properties of the data to sort without direct comparisons (e.g., Counting Sort, Radix Sort).

**Intuition**: Efficiency depends on how many comparisons/swaps/moves are made, and on the algorithm’s structure (recursive, iterative, divide-and-conquer).

---

## 3. Step-by-Step Explanation with Examples

We will review and compare common sorting techniques:

### Bubble Sort
- Repeatedly swap adjacent elements if they are in wrong order.
- Example: Sort {5, 3, 8, 4}

|Step|Array Status|
|-|-|
|Initial|5 3 8 4|
|Pass 1 (compare 5 & 3)|3 5 8 4|
|Pass 1 (compare 5 & 8)|3 5 8 4|
|Pass 1 (compare 8 & 4)|3 5 4 8|
|Pass 2 (compare 3 & 5)|3 5 4 8|
|Pass 2 (compare 5 & 4)|3 4 5 8|
|Pass 3 (compare 3 & 4)|3 4 5 8|

### Insertion Sort
- Build sorted list one element at a time by inserting elements at proper position.
- Example: Sort {5, 3, 8, 4}

|Step|Array Status|
|-|-|
|Initial|5 3 8 4|
|Insert 3|3 5 8 4|
|Insert 8|3 5 8 4|
|Insert 4|3 4 5 8|

### Merge Sort
- Divide array into halves, sort each half, then merge.
- Example: Sort {5, 3, 8, 4}

|Step|Process|
|-|-|
|Divide|{5, 3} and {8, 4}|
|Sort left|{3, 5}|
|Sort right|{4, 8}|
|Merge|{3, 4, 5, 8}|

---

## 4. Pseudocode or Algorithm

### Bubble Sort

```
for i = 0 to n-1
    for j = 0 to n-i-2
        if arr[j] > arr[j+1]
            swap arr[j] and arr[j+1]
```

### Insertion Sort

```
for i = 1 to n-1
    key = arr[i]
    j = i - 1
    while j >= 0 and arr[j] > key
        arr[j + 1] = arr[j]
        j = j - 1
    arr[j + 1] = key
```

### Merge Sort

```
function mergeSort(arr, left, right)
    if left < right
        mid = (left + right) / 2
        mergeSort(arr, left, mid)
        mergeSort(arr, mid+1, right)
        merge(arr, left, mid, right)

function merge(arr, left, mid, right)
    create temp arrays L and R
    merge elements from L and R back into arr in sorted order
```

---

## 5. Code Implementation in C

### Bubble Sort in C

```c
void bubbleSort(int arr[], int n) {
    int i, j, temp;
    for (i = 0; i < n-1; i++) {
        for (j = 0; j < n-i-1; j++) {
            if (arr[j] > arr[j+1]) {
                // Swap
                temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }
}
```

### Insertion Sort in C

```c
void insertionSort(int arr[], int n) {
    int i, key, j;
    for (i = 1; i < n; i++) {
        key = arr[i];
        j = i - 1;
        while (j >= 0 && arr[j] > key) {
            arr[j + 1] = arr[j];
            j = j - 1;
        }
        arr[j + 1] = key;
    }
}
```

### Merge Sort in C

```c
void merge(int arr[], int left, int mid, int right) {
    int n1 = mid - left + 1;
    int n2 = right - mid;

    int L[n1], R[n2];
    int i, j, k;

    for (i = 0; i < n1; i++) L[i] = arr[left + i];
    for (j = 0; j < n2; j++) R[j] = arr[mid + 1 + j];

    i = 0; j = 0; k = left;
    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k++] = L[i++];
        } else {
            arr[k++] = R[j++];
        }
    }

    while (i < n1) arr[k++] = L[i++];
    while (j < n2) arr[k++] = R[j++];
}

void mergeSort(int arr[], int left, int right) {
    if (left < right) {
        int mid = left + (right - left) / 2;
        mergeSort(arr, left, mid);
        mergeSort(arr, mid+1, right);
        merge(arr, left, mid, right);
    }
}
```

---

## 6. Time and Space Complexity Analysis

| Algorithm     | Best Case     | Average Case  | Worst Case   | Space Complexity | Stability  |
|---------------|---------------|---------------|--------------|------------------|------------|
| Bubble Sort   | O(n)          | O(n²)         | O(n²)        | O(1)             | Stable     |
| Insertion Sort| O(n)          | O(n²)         | O(n²)        | O(1)             | Stable     |
| Merge Sort    | O(n log n)    | O(n log n)    | O(n log n)   | O(n)             | Stable     |
| Quick Sort    | O(n log n)    | O(n log n)    | O(n²)        | O(log n) average  | Unstable   |
| Selection Sort| O(n²)         | O(n²)         | O(n²)        | O(1)             | Unstable   |
| Heap Sort     | O(n log n)    | O(n log n)    | O(n log n)   | O(1)             | Unstable   |

**Explanation:**

- Bubble and Insertion Sorts perform well on nearly sorted data (best case O(n)).
- Merge Sort guarantees O(n log n) time but requires extra space.
- Quick Sort is often fastest in practice but can degrade to O(n²).
- Stability means equal elements maintain their original order (important in some applications).

---

## 7. Real-World Applications

- **Bubble and Insertion Sort:** Suitable for small or nearly sorted datasets.
- **Merge Sort:** Used in external sorting (large datasets on disk), stable sorting needed.
- **Quick Sort:** Common in standard libraries, suitable for in-memory sorting.
- **Heap Sort:** Useful in real-time systems due to guaranteed O(n log n) worst-case.

---

## 8. Key Takeaways

- No one-size-fits-all: Choose algorithms based on input size, characteristics, and stability requirements.
- Understanding time and space complexities helps optimize performance.
- Stable sorting is essential when original relative order must be preserved.
- Divide and conquer (Merge Sort) provides consistent performance.
- Simple sorts are good for educational purposes and small problems.

---

## 9. Practice Questions or Problems

1. Write a C program to implement Selection Sort and analyze its worst-case complexity.
2. Modify Insertion Sort to sort in descending order.
3. Trace the steps of Quick Sort on the array {7, 2, 1, 6, 8, 5, 3, 4}.
4. Explain why Merge Sort requires additional memory.
5. Compare the performance of Bubble Sort and Insertion Sort on a nearly sorted array.
6. Design an experiment to compare running times of Bubble Sort, Merge Sort, and Quick Sort with randomly generated arrays of varying sizes.
7. Implement Heap Sort in C and explain its heap construction phase.

---

*Insert diagrams/flowcharts of sorting processes here for better visualization.*