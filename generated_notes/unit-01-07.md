# PCC-CS301 : Data Structures and Algorithms with C  
## Unit 1: Introduction – Searching Techniques  
### Topic: Binary Search – Algorithm, Dry Run, Complexity

---

## 1. Introduction and Definitions

- **Searching**: The process of finding a specific element (called key) in a data structure (like an array, list, etc.).
- **Binary Search**: An efficient searching technique used on **sorted arrays**. It repeatedly divides the search interval in half to reduce the search space.
- It works only on **sorted collections** as it compares the target value with the middle element.

---

## 2. Intuition and Working Principle

- Imagine looking for a name in a phone book. The phone book is sorted alphabetically.
- Instead of going page by page, you open the middle and check the name:
  - If the name is earlier alphabetically, look in the left half.
  - If it is later, look in the right half.
- Repeat halving until you find the name or the search ends.
- Binary search uses this divide-and-conquer approach.

---

## 3. Step-by-Step Explanation with Example

### Example Array:
`arr = [2, 5, 8, 12, 16, 23, 38, 56, 72, 91]`  
Search for `23`.

| Step | Low | High | Mid | arr[Mid] | Action             |
|-------|-----|------|-----|----------|--------------------|
| 1     | 0   | 9    | 4   | 16       | 23 > 16 → search right half  |
| 2     | 5   | 9    | 7   | 56       | 23 < 56 → search left half   |
| 3     | 5   | 6    | 5   | 23       | Found 23 at index 5           |

---

## 4. Pseudocode or Algorithm

```plaintext
BinarySearch(arr, n, key)
    low ← 0
    high ← n - 1

    while low ≤ high do
        mid ← (low + high) / 2
        
        if arr[mid] == key
            return mid             // key found at index mid
        else if arr[mid] < key
            low ← mid + 1         // search right half
        else
            high ← mid - 1        // search left half

    return -1                    // key not found
```

---

## 5. Code Implementation in C

```c
#include <stdio.h>

int binarySearch(int arr[], int n, int key) {
    int low = 0;
    int high = n - 1;

    while (low <= high) {
        int mid = low + (high - low) / 2;  // prevents integer overflow

        if (arr[mid] == key)
            return mid;
        else if (arr[mid] < key)
            low = mid + 1;
        else
            high = mid - 1;
    }
    return -1;  // Element not found
}

int main() {
    int arr[] = {2, 5, 8, 12, 16, 23, 38, 56, 72, 91};
    int n = sizeof(arr) / sizeof(arr[0]);
    int key = 23;

    int result = binarySearch(arr, n, key);

    if (result == -1)
        printf("Element not found in the array.\n");
    else
        printf("Element found at index: %d\n", result);

    return 0;
}
```

---

## 6. Time and Space Complexity Analysis

| Complexity Type | Description                                       | Binary Search          |
|-----------------|-------------------------------------------------|-----------------------|
| Time Complexity | Number of comparisons in the worst case          | O(log n)              |
|                 | Best case (found at middle immediately)          | O(1)                  |
| Space Complexity| Extra space used for computation                   | O(1) – iterative approach |

- Explanation:
  - Each step cuts the search space in half → logarithmic time.
  - Uses constant extra memory (variables low, high, mid).

---

## 7. Real-World Applications

- Searching in **large sorted databases** or files.
- Used in **library catalog systems** or **phone directories**.
- Helps in **dictionary implementations** or **spell-checkers**.
- In **software engineering**, used for searching in **sorted arrays** or **lookup tables**.
- Fundamental for **searching in binary search trees (BSTs)** (conceptually related).
- Useful in **gaming applications** for optimized searching.

---

## 8. Key Takeaways

- Binary search requires a **sorted array**.
- Efficient search approach with time complexity **O(log n)**.
- Works by dividing the problem space into halves.
- Iterative or recursive implementations are possible.
- Important foundational algorithm for understanding searching in computer science.
- Careful calculation of `mid` to avoid overflow is good practice.

---

## 9. Practice Questions or Problems

1. Implement a **recursive version** of binary search in C.
2. Given a sorted array of size 15, search for the element 47 using binary search and trace the steps.
3. Modify the binary search code to **return the first occurrence** of a number in a sorted array with duplicates.
4. Write a program to find the **position to insert a new element** in a sorted array such that the array remains sorted.
5. Compare the performance of binary search with **linear search** on large data sets (write code and measure time).

---

**[Insert diagrams/flowcharts explaining binary search here]**  

**[Insert dry run trace table or animation here]**