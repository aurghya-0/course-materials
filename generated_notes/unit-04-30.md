# PCC-CS301 : Data Structures and Algorithms with C  
## Unit 4: Sorting & Hashing  
### Topic: Sorting Basics - Need, Classification: Internal vs External, Stable vs Unstable

---

## 1. Introduction and Definitions

### What is Sorting?  
Sorting is the process of arranging data in a defined order, typically ascending or descending.

### Why Sorting is Important?  
- Easier data searching (Binary Search requires sorted data)  
- Simplifies data interpretation and analysis  
- Helps in efficient merging of data  
- Improves performance of other algorithms  

### Basic Definitions:  
- **Internal Sorting:** Sorting where the entire data fits into the main memory (RAM).  
- **External Sorting:** Sorting used when data is too large to fit into main memory and requires external memory (like disk) for processing.  
- **Stable Sorting:** Sorting that preserves the relative order of equal elements (same keys).  
- **Unstable Sorting:** Sorting that may reorder equal elements, losing original relative order.  

---

## 2. Intuition and Working Principle

- Sorting organizes data, making it easier to search, modify, or analyze.  
- Internal sorting operates on data entirely loaded in memory, suitable for small to medium-size datasets.  
- External sorting handles large data by dividing it into manageable chunks, sorting internally, then merging sorted chunks.  
- Stability in sorting matters when multiple sorting passes preserve previous orderings; e.g., sorting by one key and then by another without disturbing previous order.  

---

## 3. Step-by-Step Explanation with Example

### Example: Sorting the array `[4, 5, 3, 2, 4, 1]`

- **Input:** `[4, 5, 3, 2, 4, 1]`  
- **Goal:** Sort in ascending order.  

#### Key Steps:  
1. Identify that the data is in main memory (Internal Sorting).  
2. Choose a sorting algorithm appropriate for the data size.  
3. Sort data ensuring stability or choose otherwise (e.g., if stability matters, choose a stable algorithm).  

If we choose a simple stable sorting like Bubble Sort, the two `4`s maintain their original order in the sorted array.  

- Original: `[4(a), 5, 3, 2, 4(b), 1]`  
- Sorted (stable): `[1, 2, 3, 4(a), 4(b), 5]`  

If unstable sort is used, order of `4(a)` and `4(b)` could switch.

---

## 4. Pseudocode or Algorithm 

### Internal vs External  
- **Internal Sorting:** Uses algorithms like Bubble, Quick, Merge, Insertion, etc.  
- **External Sorting:** Uses external merge sort, polyphase merge sort, etc.

### Stability  

| Sorting Algorithm | Stable?      | Internal/External |
|-------------------|--------------|------------------|
| Bubble Sort       | Yes          | Internal         |
| Merge Sort        | Yes          | Internal         |
| Quick Sort        | No           | Internal         |
| Heap Sort         | No           | Internal         |
| External Merge Sort | Yes        | External         |

---

### Pseudocode for Stable Internal Sorting (Bubble Sort):

```
procedure BubbleSort(A):
  n = length(A)
  for i from 0 to n-2:
    for j from 0 to n-i-2:
      if A[j] > A[j + 1]:
        swap A[j] and A[j + 1]
```

---

## 5. Code Implementation in C

```c
#include <stdio.h>

// Stable Sorting using Bubble Sort for Internal Sorting example
void bubbleSort(int arr[], int n) {
    int i, j, temp;
    for (i=0; i<n-1; i++) {
        for (j=0; j<n-i-1; j++) {
            if (arr[j] > arr[j+1]) {
                // swap arr[j] and arr[j+1]
                temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }
}

void printArray(int arr[], int n) {
    for (int i=0; i<n; i++)
        printf("%d ", arr[i]);
    printf("\n");
}

int main() {
    int arr[] = {4, 5, 3, 2, 4, 1};
    int n = sizeof(arr) / sizeof(arr[0]);

    printf("Original array: ");
    printArray(arr, n);

    bubbleSort(arr, n);
    
    printf("Sorted array: ");
    printArray(arr, n);

    return 0;
}
```

*Note: External sorting requires handling of files and memory blocks, typically implemented using External Merge Sort.*

---

## 6. Time and Space Complexity Analysis

| Sorting Type             | Time Complexity (Average) | Space Complexity | Stability |
|-------------------------|---------------------------|------------------|-----------|
| Bubble Sort (Stable)    | O(n²)                     | O(1)             | Stable    |
| Quick Sort (Internal)    | O(n log n)                | O(log n)         | Unstable  |
| Merge Sort (Internal)    | O(n log n)                | O(n)             | Stable    |
| External Merge Sort      | O(n log n)                | O(n) (external)  | Stable    |

---

## 7. Real-World Applications

- Database Systems: Sorting records for indexing and queries  
- Search Engines: Sorting search results based on relevance  
- Operating Systems: Process scheduling and priority ordering  
- E-commerce: Sorting products by price, rating, or popularity  
- Large-scale data processing: External sorting algorithms for big data  

---

## 8. Key Takeaways

- Sorting is fundamental to efficient algorithms and applications.  
- Internal sorting is suitable for data that fits in memory; external sorting is necessary for large datasets.  
- Stability preserves the relative ordering of equal elements and is important in multi-level sorting.  
- Choice of sorting technique depends on data size, stability requirements, and resource availability.  

---

## 9. Practice Questions or Problems

1. **Explain the difference between internal and external sorting with an example.**  
2. **Why is stability important in sorting? Provide an example scenario where unstable sorting produces incorrect results.**  
3. **Write C code implementing a stable sorting algorithm other than Bubble Sort.**  
4. **Which sorting algorithms can be classified as stable and internal? List at least three.**  
5. **Describe a scenario that requires an external sorting approach. What challenges arise with external sorting?**  

---

*[Insert relevant diagrams and flowcharts here to visually explain sorting classifications and stability]*