# PCC-CS301 : Data Structures and Algorithms with C  
## Unit 4: Sorting & Hashing  
### Topic: Bubble & Insertion Sort - Algorithms and Performance Discussion

---

## 1. Introduction and Definitions

**Sorting** is the process of arranging data in a specific order — commonly ascending or descending. It is a fundamental operation in computer science, used to organize data for efficient searching and processing.

- **Bubble Sort**: A simple comparison-based sorting algorithm that repeatedly steps through the list, compares adjacent elements, and swaps them if they are in the wrong order.
- **Insertion Sort**: A comparison-based algorithm that builds the final sorted array one item at a time by inserting elements into their correct position in a sorted sub-list.

---

## 2. Intuition and Working Principle

### Bubble Sort
- Think of bubbles rising to the surface in a glass of water.
- The largest unsorted element "bubbles up" to the end with each pass.
- Adjacent pairs are compared and swapped if out of order.
- Repeated passes reduce the number of unsorted elements by one from the end.

### Insertion Sort
- Similar to sorting playing cards in your hand.
- Start with the first element as "sorted".
- Take the next element and insert it into its correct position in the sorted portion.
- Continue until all elements are sorted.

---

## 3. Step-by-step Explanation with Example

Consider the array: `[5, 3, 8, 4, 2]`

### Bubble Sort

| Pass | Array Status        | Explanation                  |
|-------|---------------------|------------------------------|
| 1     | `[3, 5, 4, 2, 8]`   | 5 and 3 swapped; also 8 bubbled to end |
| 2     | `[3, 4, 2, 5, 8]`   | Smaller elements bubble to front    |
| 3     | `[3, 2, 4, 5, 8]`   | Continue swapping adjacent elements |
| 4     | `[2, 3, 4, 5, 8]`   | Array sorted at the end             |

### Insertion Sort

| Step | Array Status        | Explanation                   |
|-------|---------------------|------------------------------|
| Start | `[5, 3, 8, 4, 2]`   | 5 is "sorted"                 |
| 1     | `[3, 5, 8, 4, 2]`   | Insert 3 before 5             |
| 2     | `[3, 5, 8, 4, 2]`   | 8 stays, as it’s greater than 5 |
| 3     | `[3, 4, 5, 8, 2]`   | Insert 4 between 3 and 5      |
| 4     | `[2, 3, 4, 5, 8]`   | Insert 2 at the beginning     |

---

## 4. Pseudocode or Algorithm

### Bubble Sort Algorithm

```
procedure bubbleSort(array)
    n = length(array)
    for i = 0 to n-1
        for j = 0 to n-i-2
            if array[j] > array[j+1]
                swap(array[j], array[j+1])
            end if
        end for
    end for
end procedure
```

### Insertion Sort Algorithm

```
procedure insertionSort(array)
    n = length(array)
    for i = 1 to n-1
        key = array[i]
        j = i - 1
        while j >= 0 and array[j] > key
            array[j + 1] = array[j]
            j = j - 1
        end while
        array[j + 1] = key
    end for
end procedure
```

---

## 5. Code Implementation in C

### Bubble Sort in C

```c
#include <stdio.h>

void bubbleSort(int arr[], int n) {
    int i, j, temp;
    for (i = 0; i < n - 1; i++) {
        for (j = 0; j < n - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                // swap arr[j] and arr[j+1]
                temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}

int main() {
    int arr[] = {5, 3, 8, 4, 2};
    int n = sizeof(arr) / sizeof(arr[0]);
    bubbleSort(arr, n);

    printf("Sorted array: ");
    for (int i = 0; i < n; i++)
        printf("%d ", arr[i]);
    return 0;
}
```

### Insertion Sort in C

```c
#include <stdio.h>

void insertionSort(int arr[], int n) {
    int i, key, j;
    for (i = 1; i < n; i++) {
        key = arr[i];
        j = i - 1;

        // Move elements greater than key to one position ahead
        while (j >= 0 && arr[j] > key) {
            arr[j + 1] = arr[j];
            j--;
        }
        arr[j + 1] = key;
    }
}

int main() {
    int arr[] = {5, 3, 8, 4, 2};
    int n = sizeof(arr) / sizeof(arr[0]);
    insertionSort(arr, n);

    printf("Sorted array: ");
    for (int i = 0; i < n; i++)
        printf("%d ", arr[i]);
    return 0;
}
```

---

## 6. Time and Space Complexity Analysis

| Algorithm      | Best Case Time Complexity | Average Case Time Complexity | Worst Case Time Complexity | Space Complexity |
|----------------|---------------------------|------------------------------|----------------------------|------------------|
| Bubble Sort    | O(n) (when already sorted and optimized with flag) | O(n²)                         | O(n²)                     | O(1)             |
| Insertion Sort | O(n) (when already sorted) | O(n²)                         | O(n²)                     | O(1)             |

- Both algorithms are **in-place sorting algorithms** (no extra arrays are needed).
- Bubble sort can be optimized to stop early if no swaps occur during a pass.
- Insertion sort generally performs better on nearly sorted data.

---

## 7. Real-World Applications

- **Bubble Sort**:
  - Mainly used for educational purposes due to simplicity.
  - Useful when dataset is small or nearly sorted.
- **Insertion Sort**:
  - Efficient for small datasets or nearly sorted data.
  - Used as a subroutine in more complex algorithms like **Timsort**.
  - Practical for online sorting, where data arrives continuously.

---

## 8. Key Takeaways

- Both Bubble and Insertion Sort are simple to understand and implement.
- Bubble Sort repeatedly swaps adjacent elements to "bubble up" the largest element.
- Insertion Sort inserts elements into their correct position in a growing sorted list.
- Both have worst-case time complexity of O(n²), but Insertion Sort tends to be more efficient in practice, especially for nearly sorted data.
- They are **stable** sorting algorithms (preserving the relative order of equal elements).
- In-place sorting algorithms require only O(1) additional memory.

---

## 9. Practice Questions or Problems

1. Trace the steps of Bubble Sort and Insertion Sort on the array: `[9, 1, 5, 3, 7]`.
2. Modify the Bubble Sort algorithm to detect if the array is already sorted and terminate early.
3. Implement Bubble Sort and Insertion Sort to sort an array of strings in alphabetical order.
4. Compare the performance of Bubble Sort and Insertion Sort by counting the number of swaps on different types of data (sorted, reverse sorted, random).
5. Using Insertion Sort, sort the following array and show the array after each insertion step: `[10, 7, 8, 9, 1, 5]`.
6. Explain why Insertion Sort is efficient for nearly sorted datasets.
7. Write a program in C that sorts an array using Bubble Sort but in descending order.

---

*(Space for diagrams to visually explain the element comparisons and swaps in both sorting algorithms)*

---