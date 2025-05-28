# PCC-CS301 : Data Structures and Algorithms with C  
## Unit 1: Introduction to Asymptotic Notations - Big-O, Omega, Theta

---

## 1. Introduction and Definitions

Understanding the performance of algorithms is critical in computer science. **Asymptotic notations** help us describe the efficiency of an algorithm in terms of input size, focusing on growth rates rather than exact values.

### Key Asymptotic Notations:
- **Big-O (O)** — Upper bound on the time complexity (worst case).
- **Omega (Ω)** — Lower bound on the time complexity (best case).
- **Theta (Θ)** — Tight bound (both upper and lower bounds).

---

## 2. Intuition and Working Principle

Imagine you're comparing how fast different algorithms run as the input size grows very large (e.g., sorting 1000 vs 1,000,000 numbers).

- **Big-O** gives the maximum time an algorithm might take.
- **Omega** gives the minimum time an algorithm will take.
- **Theta** means the algorithm’s running time grows exactly at this rate.

> Think of these as bounds that "sandwich" the running time function.

---

## 3. Step-by-Step Explanation with Example

Suppose an algorithm's running time is expressed as:

\[ T(n) = 3n^2 + 5n + 7 \]

### Big-O Analysis:

- As \( n \to \infty \), \( n^2 \) dominates \( n \) and constant terms.
- So, **Big-O** is \( O(n^2) \), meaning the time grows at most proportional to \( n^2 \).

### Omega Analysis:

- The minimum time for large inputs will also be at least proportional to \( n^2 \).
- So, **Omega** is \( \Omega(n^2) \).

### Theta Analysis:

- Since both upper and lower bounds are \( n^2 \), we say \( T(n) = \Theta(n^2) \).

---

### Visual Representation
*(Insert diagrams showing growth curves of functions)*

---

## 4. Pseudocode or Algorithm

### Example Algorithm: Find Maximum Element in Array

```pseudo
function findMax(array A, int n):
    max = A[0]
    for i = 1 to n-1:
        if A[i] > max:
            max = A[i]
    return max
```

---

## 5. Code Implementation in C

```c
#include <stdio.h>

int findMax(int A[], int n) {
    int max = A[0];
    for (int i = 1; i < n; i++) {
        if (A[i] > max) {
            max = A[i];
        }
    }
    return max;
}

int main() {
    int arr[] = {3, 7, 1, 9, 4};
    int size = sizeof(arr) / sizeof(arr[0]);

    int maxValue = findMax(arr, size);
    printf("Maximum element is %d\n", maxValue);

    return 0;
}
```

---

## 6. Time and Space Complexity Analysis

### For `findMax` function:

- **Time Complexity:**
  - Each element is checked once.
  - \( T(n) = c \times n \) (linear time).
  - \( O(n) \), \( \Omega(n) \), and \( \Theta(n) \) because all cases require scanning all elements.

- **Space Complexity:**
  - Uses a fixed amount of extra space (variable `max`).
  - \( O(1) \) constant space.

---

## 7. Real-World Applications

- **Algorithm optimization:** Knowing the exact growth behavior helps optimize code and choose the right algorithms.
- **Search engines:** Efficiently handle large data sets with scalable algorithms.
- **Data analysis:** Evaluating running time for sorting, filtering, and processing data sets.
- **Software development:** Avoid slow-performing code that can cause bottlenecks.

---

## 8. Key Takeaways

- Asymptotic notations provide a way to analyze the efficiency of algorithms without getting into hardware or implementation specifics.
- **Big-O** describes the worst-case scenario.
- **Omega** describes the best-case scenario.
- **Theta** describes the average or exact behavior.
- They help compare algorithms and predict performance on larger inputs.
- Constant and lower order terms are ignored as input grows large.

---

## 9. Practice Questions or Problems

1. **Identify Big-O:** Find the Big-O notation of the following function:  
   \( T(n) = 5n^3 + 2n \log n + 20 \)

2. **Classify:** Given the pseudocode for linear search, write the Big-O, Omega, and Theta notations.

3. **Implement and Analyze:** Write a C program for bubble sort and determine its best, worst, and average case complexities using asymptotic notations.

4. **Conceptual:** Explain why \( O(n) \) is better than \( O(n^2) \) for large \( n \).

5. **True or False:** If an algorithm has \( \Theta(n \log n) \) time complexity, it is always faster than one with \( \Theta(n^2) \) for all input sizes \( n \).

---

*Note: Insert diagrams in sections 2 and 3 to visually demonstrate growth rates.*