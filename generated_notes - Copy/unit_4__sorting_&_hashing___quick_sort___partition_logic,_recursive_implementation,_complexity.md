# PCC-CS301 : Data Structures and Algorithms with C  
## Unit 4: Sorting & Hashing  
### Topic: Quick Sort - Partition Logic, Recursive Implementation, Complexity

---

## 1. Introduction and Definitions

- **Quick Sort** is a popular and efficient sorting algorithm based on the divide-and-conquer paradigm.  
- It works by selecting a **pivot** element, partitioning the array into subarrays that are less than or greater than the pivot, and recursively sorting those subarrays.  
- It is an **in-place** comparison-based sorting algorithm and generally faster than other O(n²) algorithms like Bubble Sort or Selection Sort.  

**Key terms:**  
- **Pivot:** The element around which the array is partitioned.  
- **Partition:** Rearranging elements so that those smaller than the pivot come before it and those greater come after.  
- **Recursive Implementation:** Quick Sort uses recursion to sort the subarrays created by partitioning.

---

## 2. Intuition and Working Principle

- Imagine sorting a pile of cards:  
  1. Pick a card (pivot).  
  2. Separate cards smaller than pivot on the left, larger on the right.  
  3. Now sort the two smaller piles the same way.  

- This reduces the problem into smaller, simpler sorting tasks recursively.  
- Each step narrows down the problem size until every part is sorted.

*Diagram placeholder: Visual representation of partitioning an array around a pivot*

---

## 3. Step-by-Step Explanation with Example

Consider the array:  
`[10, 7, 8, 9, 1, 5]`

### Step 1: Choose Pivot  
- Choose the last element as pivot: `5`

### Step 2: Partition Array  
- Rearrange so that elements ≤ 5 are to the left; others to the right.  
- After partition, array might look like: `[1, 5, 8, 9, 7, 10]` (pivot `5` at its correct place index 1)

### Step 3: Recursively apply Quick Sort  
- Left subarray: `[1]` (already sorted)  
- Right subarray: `[8, 9, 7, 10]` — repeat process

---

## 4. Pseudocode or Algorithm

```plaintext
QuickSort(arr[], low, high):
    if low < high:
        pi = Partition(arr, low, high)
        QuickSort(arr, low, pi - 1)
        QuickSort(arr, pi + 1, high)

Partition(arr[], low, high):
    pivot = arr[high]
    i = low - 1

    for j = low to high - 1:
        if arr[j] <= pivot:
            i = i + 1
            swap arr[i] and arr[j]
    swap arr[i + 1] and arr[high]
    return i + 1
```

---

## 5. Code Implementation in C

```c
#include <stdio.h>

// Function to swap two elements
void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

// Partition function
int partition(int arr[], int low, int high) {
    int pivot = arr[high];  // pivot
    int i = low - 1;  // Index of smaller element

    for (int j = low; j < high; j++) {
        if (arr[j] <= pivot) {
            i++;
            swap(&arr[i], &arr[j]);
        }
    }
    swap(&arr[i + 1], &arr[high]);
    return i + 1;
}

// Recursive QuickSort function
void quickSort(int arr[], int low, int high) {
    if (low < high) {
        int pi = partition(arr, low, high);  // Partitioning index

        quickSort(arr, low, pi - 1);  // Sort left subarray
        quickSort(arr, pi + 1, high); // Sort right subarray
    }
}

// Function to print array
void printArray(int arr[], int size) {
    for (int i = 0; i < size; i++)
        printf("%d ", arr[i]);
    printf("\n");
}

// Main function to test above code
int main() {
    int arr[] = {10, 7, 8, 9, 1, 5};
    int n = sizeof(arr) / sizeof(arr[0]);
    printf("Original array:\n");
    printArray(arr, n);

    quickSort(arr, 0, n - 1);

    printf("Sorted array:\n");
    printArray(arr, n);
    return 0;
}
```

---

## 6. Time and Space Complexity Analysis

| Case          | Time Complexity    | Explanation                                          |
|---------------|--------------------|----------------------------------------------------|
| Best case     | O(n log n)         | Balanced partitions dividing array into halves.    |
| Average case  | O(n log n)         | Random pivot gives reasonably balanced splits.     |
| Worst case    | O(n²)              | Occurs when pivot always ends as smallest/largest (e.g., sorted array). |

- **Space Complexity:** O(log n) due to recursive stack calls (in-place sorting, no extra arrays needed).  
- Recursive calls can hit O(n) space in worst case (deep recursion when unbalanced partitions occur).

---

## 7. Real-world Applications

- Used in system libraries for sorting (as it is efficient and cache-friendly).  
- Useful in databases for quick retrieval and sorting operations.  
- Used in algorithms involving order statistics, median finding, and randomized algorithms.  
- Sorting large datasets that fit in memory when average-case performance is crucial.

---

## 8. Key Takeaways

- Quick Sort is a fast, comparison-based sorting algorithm using divide-and-conquer.  
- Partitioning is the core step: efficiently rearranging elements below and above a pivot.  
- Best and average time complexity is O(n log n), but worst-case is O(n²).  
- Requires careful pivot selection or randomization to avoid worst-case.  
- The algorithm works in-place and with a recursive structure.  
- Understanding Quick Sort helps develop skill in both recursion and algorithm optimization.

---

## 9. Practice Questions or Problems

1. Implement Quick Sort with first element as pivot instead of the last. Compare the performance.  
2. Modify Quick Sort to use a random pivot and observe improvements in worst-case scenarios.  
3. Write a program to count the number of swaps done by Quick Sort.  
4. Trace Quick Sort step-by-step on the array `[30, 10, 50, 20, 60, 40]` and draw partition steps.  
5. Explain how Quick Sort differs from Merge Sort in terms of space and time complexity.  
6. Given an almost sorted input, analyze why Quick Sort might degrade to worst case. Suggest solutions.  
7. Implement an iterative version of Quick Sort without using recursion.  
8. Use Quick Sort to sort an array of strings alphabetically.

---

*Note: Use diagrams to illustrate partitioning and recursive calls for visual clarity.*