# PCC-CS301 : Data Structures and Algorithms with C  
## Unit 1: Introduction to Searching  
### Topic: Searching - Comparison - Linear vs Binary Search - Use Cases and Performance Comparison

---

## 1. Introduction and Definitions

- **Searching:** The process of finding the position of a target element (key) within a data structure, typically an array or list.
- **Types of Searching:** Two common basic techniques:
  - **Linear Search (Sequential Search)**
  - **Binary Search**

- **Why searching?**  
  Searching is one of the fundamental operations in data structures and algorithms and serves as a building block for many complex operations.

---

## 2. Intuition and Working Principle

### Linear Search  
- **Intuition:** Look at each element, one by one, until you find the target or reach the end.
- **Best for:** Unsorted or small datasets.
- **Working:** Checks elements sequentially, stopping if it finds the target.

### Binary Search  
- **Intuition:** Repeatedly divide a **sorted** list in half to reduce search space.
- **Best for:** Sorted datasets.
- **Working:** Compare middle element with target; if less, search right half; if more, search left half.

---

## 3. Step-by-step Explanation with Example

### Linear Search Example  
Array: `[5, 8, 12, 20, 7]`  
Search for `20`:  
1. Check `5` → not `20`  
2. Check `8` → not `20`  
3. Check `12` → not `20`  
4. Check `20` → found! Return index `3`.

### Binary Search Example  
Sorted Array: `[3, 7, 15, 20, 25, 30]`  
Search for `20`:  
1. Middle = index 2 (`15`)  
2. `20` > `15`, search right half `[20, 25, 30]`  
3. Middle = index 4 (`25`) (relative index)  
4. `20` < `25`, search left half `[20]`  
5. Found `20` at index `3`.

---

*Insert diagrams here to visualize linear and binary search steps*

---

## 4. Pseudocode or Algorithm

### Linear Search  
```
LinearSearch(array, target):
  for i from 0 to length(array) - 1:
    if array[i] == target:
      return i    // target found at index i
  return -1         // target not found
```

### Binary Search  
```
BinarySearch(array, target, left, right):
  while left <= right:
    mid = left + (right - left) / 2
    if array[mid] == target:
      return mid
    else if target < array[mid]:
      right = mid - 1
    else:
      left = mid + 1
  return -1          // target not found
```

---

## 5. Code Implementation in C

### Linear Search in C
```c
int linearSearch(int arr[], int n, int target) {
    for (int i = 0; i < n; i++) {
        if (arr[i] == target) {
            return i;  // target found
        }
    }
    return -1;  // target not found
}
```

### Binary Search in C
```c
int binarySearch(int arr[], int left, int right, int target) {
    while (left <= right) {
        int mid = left + (right - left) / 2;

        if (arr[mid] == target)
            return mid;  // target found
        else if (target < arr[mid])
            right = mid - 1;
        else
            left = mid + 1;
    }
    return -1;  // target not found
}
```

---

## 6. Time and Space Complexity Analysis

| Search Type    | Time Complexity (Best) | Time Complexity (Worst) | Space Complexity |
|----------------|------------------------|------------------------|------------------|
| Linear Search  | O(1)                   | O(n)                   | O(1)             |
| Binary Search  | O(1)                   | O(log n)               | O(1)             |

- **Linear Search:** Time grows with the size of the array; no extra space required.
- **Binary Search:** Much faster for large sorted data; requires sorted data beforehand.

---

## 7. Real-world Applications

- **Linear Search:**  
  - Searching in unsorted lists  
  - Finding elements in small or unsorted collections  
  - Runtime environments where data is continuously changing or unsorted

- **Binary Search:**  
  - Lookup operations in databases  
  - Searching in large sorted datasets (e.g., phone books, dictionaries)  
  - Binary search trees, searching in files or sorted arrays  

---

## 8. Key Takeaways

- Linear Search is simple, works on unsorted data, but inefficient for large data.
- Binary Search is efficient but requires sorted data.
- Always consider whether your data is sorted before choosing the search method.
- Binary search significantly reduces search time in large datasets.
- Understanding these basics is crucial for more advanced search techniques.

---

## 9. Practice Questions or Problems

1. Implement linear search to find an element in an array of floating-point numbers.
2. Write a program to implement binary search recursively.
3. Given a sorted array, search for multiple target values using both search methods and compare their running time.
4. Modify the binary search to return the index of the first occurrence if duplicates exist.
5. Why is binary search not suitable for linked lists? Explain and suggest alternative approaches.
6. Design a program that decides which search algorithm to use based on the sorting status of the array.

---

*End of notes for Unit 1 - Introduction to Searching*