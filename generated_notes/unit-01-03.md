# PCC-CS301 : Data Structures and Algorithms with C  
## Unit 1: Introduction to Algorithm Analysis  
### Topic: Steps of Analyzing Algorithms & Introduction to Complexity

---

## 1. Introduction and Definitions

### What is an Algorithm?  
- A **step-by-step procedure** or formula for solving a problem.  
- Takes an input, processes it, and produces output.

### Why Analyze Algorithms?  
- To determine the **efficiency** and **performance** before implementation.  
- Helps in choosing the best algorithm for a given problem.

### Key Terms  
- **Algorithm Analysis:** Study of resources (time & space) used by an algorithm.  
- **Time Complexity:** Amount of time an algorithm takes as a function of input size.  
- **Space Complexity:** Amount of memory an algorithm uses during execution.

---

## 2. Intuition and Working Principle

- Think of algorithms as recipes: some recipes take longer or use more ingredients.  
- Algorithm analysis predicts the "cooking time" and "ingredient usage" without actually cooking.  
- Focus on **growth rate** rather than exact counts, as input size grows large.  
- Helps in understanding scalability and efficiency.

---

## 3. Step-by-step Explanation with Example

### Steps for Analyzing an Algorithm  
1. **Understand the Problem:** What input does the algorithm take? What output does it produce?  
2. **Identify the Basic Operations:** Which operations significantly affect performance (e.g., comparisons in sorting)?  
3. **Count the Operations:** Find the number of times the basic operation is executed relative to input size \(n\).  
4. **Express as a Function:** Model the count as a function \(f(n)\).  
5. **Simplify Using Big-O Notation:** Focus on the dominant terms; ignore constants and lesser terms.  
6. **Analyze Space:** Similarly analyze memory needed based on variables, arrays, recursive calls, etc.

### Example: Linear Search  
- Problem: Find an element in an unsorted array.  
- Basic Operation: Comparing the target with array elements.  
- Counting comparisons is proportional to \(n\) (worst case).  
- Time complexity: \(O(n)\).

---

## 4. Pseudocode or Algorithm

```plaintext
Algorithm LinearSearch(Array A, Element x)
1. for i = 0 to length(A) - 1 do
2.     if A[i] == x then
3.         return i      // Element found
4. return -1             // Element not found
```

---

## 5. Code Implementation in C

```c
#include <stdio.h>

int linearSearch(int arr[], int n, int x) {
    for(int i = 0; i < n; i++) {
        if(arr[i] == x) {
            return i;  // Found at index i
        }
    }
    return -1; // Not found
}

int main() {
    int array[] = {4, 2, 5, 1, 3};
    int n = sizeof(array) / sizeof(array[0]);
    int target = 5;

    int index = linearSearch(array, n, target);

    if(index != -1)
        printf("Element found at index %d\n", index);
    else
        printf("Element not found\n");

    return 0;
}
```

---

## 6. Time and Space Complexity Analysis

| Aspect     | Linear Search                     |
|------------|----------------------------------|
| Time Complexity | Worst Case: \(O(n)\)            |
|                | Best Case: \(O(1)\) (if found at first element) |
| Space Complexity | \(O(1)\) (only variables, no extra space) |

### Explanation:  
- The for loop runs at most \(n\) times.  
- Each iteration takes constant time \(O(1)\).  
- No extra data structures are created, so space usage is constant.

---

## 7. Real-world Applications

- Searching for an item in small or unsorted datasets.  
- Used as a simple baseline search in many applications.  
- Useful when datasets are small or rarely searched.  
- Helps understand more complex search algorithms.

*(Insert Diagram: Linear search visualization here)*

---

## 8. Key Takeaways

- Algorithm analysis evaluates efficiency without running the program multiple times.  
- Time complexity measures the running time in terms of input size.  
- Space complexity measures the amount of memory used.  
- Linear search has linear time complexity \(O(n)\) and constant space \(O(1)\).  
- Big-O notation helps generalize the efficiency ignoring constants and lower order terms.

---

## 9. Practice Questions or Problems

1. Write the pseudocode and analyze the time complexity of **Binary Search**.  
2. Implement a simple algorithm to find the maximum element in an array and analyze its time and space complexity.  
3. Given an array of size \(n\), what is the time complexity of summing all elements? Write the C code.  
4. Compare the time and space complexities of linear search and binary search.  
5. Describe how you would analyze the space complexity of a recursive algorithm like factorial calculation.

---

*(End of Unit 1 Notes)*