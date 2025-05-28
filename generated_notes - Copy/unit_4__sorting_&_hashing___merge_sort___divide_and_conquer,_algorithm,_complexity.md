# PCC-CS301: Data Structures and Algorithms with C  
## Unit 4: Sorting & Hashing  
### Topic: Merge Sort - Divide and Conquer, Algorithm, Complexity

---

## 1. Introduction and Definitions

- **Sorting**: The process of arranging data in a particular order (ascending or descending).
- **Merge Sort**:  
  - A comparison-based sorting algorithm based on the **Divide and Conquer** paradigm.  
  - It divides the input array into two halves, sorts them recursively, and then merges the sorted halves.  
- **Divide and Conquer**: A strategy that solves a problem by breaking it down into smaller subproblems, solving each subproblem independently, and combining their results.

---

## 2. Intuition and Working Principle

- Imagine you have a large unsorted list of numbers.
- Divide the list into two roughly equal halves.
- Recursively apply merge sort on each half until you get arrays of size one (which are inherently sorted).
- Merge the two smaller sorted arrays to form a bigger sorted array.
- Repeat the merge process until the whole array is sorted.

**Key idea**: Breaking big problems into simpler, manageable chunks and then merging results efficiently.

---

## 3. Step-by-Step Explanation with Example

**Example Array**: `[38, 27, 43, 3, 9, 82, 10]`

1. **Divide**:  
   Split into two halves:  
   Left → `[38, 27, 43]`  
   Right → `[3, 9, 82, 10]`
2. **Sort Left Half**:  
   - Further divide `[38, 27, 43]` → `[38]` and `[27, 43]`  
   - Sort `[27, 43]` → `[27]` and `[43]` (already sorted)  
   - Merge `[27]` and `[43]` → `[27, 43]`  
   - Merge `[38]` and `[27, 43]` → `[27, 38, 43]`
3. **Sort Right Half**:  
   - Divide `[3, 9, 82, 10]` → `[3, 9]` and `[82, 10]`  
   - Sort `[3, 9]` → already sorted  
   - Sort `[82, 10]` → `[82]` and `[10]` → merge to `[10, 82]`  
   - Merge `[3, 9]` and `[10, 82]` → `[3, 9, 10, 82]`
4. **Merge Two Halves**:  
   Merge `[27, 38, 43]` and `[3, 9, 10, 82]` → Final sorted array:  
   `[3, 9, 10, 27, 38, 43, 82]`

---

## 4. Pseudocode or Algorithm

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

---

## 5. Code Implementation in C

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

---

## 6. Time and Space Complexity Analysis

| Complexity Type      | Analysis                                        | Result      |
|---------------------|------------------------------------------------|-------------|
| **Best Case**       | All splits and merges occur regardless        | O(n log n)  |
| **Worst Case**      | Similar to best as divide and merge always occur | O(n log n)  |
| **Average Case**    | Average over random data                         | O(n log n)  |
| **Space Complexity**| Requires additional arrays for merging          | O(n)        |

- **Explanation**:  
  - Merge Sort divides the array into halves (log n divisions).  
  - Each level merges n elements, leading to O(n) work per level.  
  - Total work: O(n log n).  
  - Requires extra space for temporary arrays during merging.

---

## 7. Real-World Applications

- **Stable Sorting Requirement**: When the stability of sorting matters (like sorting records by multiple fields).
- **Large Data Sorting**: Efficient even for large datasets; often used in external sorting where data doesn't fit in memory.
- **Parallel Processing**: Its divide and conquer nature makes it suitable for parallel implementations.
- **Merge in Databases**: Used while merging sorted lists in database systems or file systems.
- **Linked lists Sorting**: Performs well on linked lists (unlike Quick Sort).

---

## 8. Key Takeaways

- Merge sort is a classic example of the Divide and Conquer algorithm.
- It consistently runs in O(n log n) time, which is efficient for many practical uses.
- Requires additional space, unlike some in-place sorts (like Quick Sort).
- Stable sort — maintains relative order of equal elements.
- Preferred when stability or guaranteed performance is critical.

---

## 9. Practice Questions or Problems

1. **Implement Merge Sort on a linked list.**  
2. Given two sorted arrays, write a program to merge them into one sorted array using the merging technique of Merge Sort.  
3. Analyze and compare the time and space efficiency of Merge Sort and Quick Sort on different data sets.  
4. Modify the Merge Sort algorithm to sort in descending order.  
5. Trace the Merge Sort algorithm step-by-step given the input array: `[12, 11, 13, 5, 6, 7]`. Draw the recursive calls and merge steps.  
6. What changes would be needed in the merge function if the input is a string array instead of integers?  

---

[Insert diagrams illustrating the divide and merge steps here]

[Insert stepwise array splits and merges illustration here]

---

**End of notes for Merge Sort**