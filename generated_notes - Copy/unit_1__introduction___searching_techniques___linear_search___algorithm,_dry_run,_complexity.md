# PCC-CS301 : Data Structures and Algorithms with C  
## Unit 1: Introduction to Searching Techniques - Linear Search

---

### 1. Introduction and Definitions

- **Searching**: The process of finding a specific element (target) in a collection of elements (array, list, etc.).
- **Linear Search** (also called Sequential Search) is the simplest searching technique.
- It checks each element of the array sequentially until the target element is found or the array ends.
- Applicable to both sorted and unsorted lists.

---

### 2. Intuition and Working Principle

- Start from the first element of the list.
- Compare the current element with the target value.
- If it matches, return the current index (position).
- If it does not match, move to the next element.
- Repeat this process until the target is found or the end of the list is reached.
- If not found by the end, return a status indicating "not found".

**Visual Idea:**  
(Insert diagram here showing stepwise comparison from first to last element)

---

### 3. Step-by-Step Explanation with Example

Consider the array:  
`[5, 3, 7, 1, 9]`  
Target to find: `7`

| Step | Current Element | Compare With Target (7) | Result              |
|-------|-----------------|------------------------|---------------------|
| 1     | 5               | 5 == 7 ? No            | Move to next element|
| 2     | 3               | 3 == 7 ? No            | Move to next element|
| 3     | 7               | 7 == 7 ? Yes           | Return index 2      |

Thus, the element `7` is found at index 2.

---

### 4. Pseudocode or Algorithm

```
LinearSearch(arr, n, target):
    for i from 0 to n-1 do
        if arr[i] == target then
            return i       // Element found at index i
    end for
    return -1              // Element not found
```

---

### 5. Code Implementation in C

```c
#include <stdio.h>

int linearSearch(int arr[], int n, int target) {
    for (int i = 0; i < n; i++) {
        if (arr[i] == target) {
            return i; // Return index where target is found
        }
    }
    return -1; // Target not found
}

int main() {
    int arr[] = {5, 3, 7, 1, 9};
    int n = sizeof(arr) / sizeof(arr[0]);
    int target = 7;

    int result = linearSearch(arr, n, target);
    if (result != -1) {
        printf("Element %d found at index %d.\n", target, result);
    } else {
        printf("Element %d not found in the array.\n", target);
    }
    return 0;
}
```

---

### 6. Time and Space Complexity Analysis

| Aspect                | Description                                  |
|-----------------------|----------------------------------------------|
| **Time Complexity**   | Worst and Average Case: O(n) <br> Best Case: O(1) (target found at first index)              |
| **Space Complexity**  | O(1) (No extra space needed)                  |

- Since the algorithm goes through elements one by one, it has linear time complexity.
- It is a simple algorithm that does not require extra memory regardless of input size.

---

### 7. Real-World Applications

- Searching for a specific record in a small database.
- Finding an element in an unsorted array.
- Useful in situations where simplicity is preferred over efficiency.
- Useful as a basic approach before applying more complex search algorithms.

---

### 8. Key Takeaways

- Linear Search is the simplest search algorithm, scanning each element.
- Works on both sorted and unsorted datasets.
- Time complexity is generally O(n), making it inefficient for large datasets.
- Always consider data size before choosing linear search.
- Useful for small or unsorted collections.

---

### 9. Practice Questions or Problems

1. **Find the index of the number 15 in the array:** `[2, 45, 15, 8, 23]` using linear search.
2. Modify the linear search function to return the number of comparisons made before finding the target or concluding it is absent.
3. Write a program to search a character in a character array using linear search.
4. Explain what happens if the target element is not present in the array.
5. Implement linear search to find all occurrences of a target value (if it appears multiple times) and return their indices.

---

*(Insert diagrams or flowcharts where appropriate for better understanding)*