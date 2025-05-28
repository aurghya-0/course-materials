# PCC-CS301: Data Structures and Algorithms with C  
## Unit 1: Introduction  
### Basic Terminologies - Elementary Data Organizations; Classification of Data Structures

---

## 1. Introduction and Definitions

- **Data Structure**: A systematic way to organize, manage, and store data to enable efficient access and modification.

- **Algorithm**: A finite set of well-defined instructions to solve a specific problem.

- **Elementary Data Organization**: Basic ways data can be arranged such as sequences (arrays), records, files.

- **Key Terminologies**:  
  - **Data**: Raw facts or figures.  
  - **Information**: Processed data meaningful to users.  
  - **Data item**: An element or value, like a number or character.  
  - **Data object**: Group of related data items.  
  - **Field**: An attribute or column in a data structure.  
  - **Record**: A collection of fields (e.g., student record).  
  - **File**: A collection of related records.  

---

## 2. Intuition and Working Principle

- Data Structures help organize data so algorithms can process data efficiently.  
- Analogous to organizing books in a library: classification (by author, subject), storage (shelf), and retrieval become easy and quick.  
- Working Principle: Use a structured format (like arrays, linked lists, trees) that suits the application need, balancing access speed, memory use, and complexity.

---

## 3. Step-by-Step Explanation with Example

### Example: Using Arrays (Elementary Data Organization)
Suppose you want to store marks of 5 students.

**Step 1:** Declare an array to hold 5 integers (marks).

**Step 2:** Store marks in array cells.

**Step 3:** Access or modify marks using array index.

| Index (i) | 0 | 1 | 2 | 3 | 4 |
|-----------|---|---|---|---|---|
| Marks     | 75| 82| 90| 68| 77|

- Access the 3rd student's mark: `marks[2]` → 90.  
- Update the 5th student's mark to 80: `marks[4] = 80`.

---

## 4. Pseudocode or Algorithm

### Algorithm: Insert element in an Array

```
Algorithm InsertElement(Array A, Element x, Position pos)
Input: Array A, Element x to insert, Position pos where to insert (0-based)
Output: Updated array with x inserted at pos

1. For i from length(A)-1 down to pos do:
       A[i+1] = A[i]
2. A[pos] = x
3. Increase size of array by 1
End
```

---

## 5. Code Implementation in C

```c
#include <stdio.h>

void insertElement(int arr[], int *size, int capacity, int element, int position) {
    if (*size >= capacity) {
        printf("Array is full. Cannot insert element.\n");
        return;
    }
    if (position > *size || position < 0) {
        printf("Invalid position.\n");
        return;
    }
    
    // Shift elements rightwards
    for (int i = *size - 1; i >= position; i--) {
        arr[i + 1] = arr[i];
    }
    // Insert element
    arr[position] = element;
    (*size)++;
}

int main() {
    int arr[10] = {10, 20, 30, 40, 50};
    int size = 5, capacity = 10;
    int element = 25, position = 2;

    printf("Before insertion: ");
    for(int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");

    insertElement(arr, &size, capacity, element, position);

    printf("After insertion: ");
    for(int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
    return 0;
}
```

---

## 6. Time and Space Complexity Analysis

| Operation         | Data Structure          | Time Complexity       | Space Complexity       |
|-------------------|------------------------|-----------------------|-----------------------|
| Access (random)   | Array                  | O(1)                  | O(n) (to store n items)|
| Insert (middle)   | Array                  | O(n) (due to shifting)| O(n)                  |
| Insert (end)      | Array (if space free)  | O(1)                  | O(n)                  |

- Arrays provide constant time access but inserting in the middle requires shifting elements → O(n).  
- Space complexity depends on storage size.

---

## 7. Real-world Applications

- Arrays used in:  
  - Databases (storing records)  
  - Image processing (pixel storage)  
  - Organizing data streams  
  - Scheduling and calendar apps

- Understanding classification of data structures allows choosing the efficient structure for tasks such as:  
  - Managing collections (lists, trees, graphs)  
  - Optimizing searching and sorting algorithms  
  - Memory management

---

## 8. Key Takeaways

- Data Structures organize data for efficient processing.
- Basic terms: data, record, file, etc. provide a foundation.
- Arrays are primary elementary data organizations offering fast access.
- Choosing the right data structure depends on use-case: trade-off between access time, insertion/deletion speed, and memory.
- Classification of data structures into primitive, non-primitive (linear, non-linear) helps in selecting the appropriate one.

---

## 9. Practice Questions or Problems

1. Define data, record, and file with examples.  
2. Explain the difference between primitive and non-primitive data structures.  
3. Write C code to delete an element at a given position from an array.  
4. Given an array of integers, write a function to insert an element at the beginning.  
5. List three scenarios where arrays are not the best data structure and suggest alternatives.  
6. Draw a diagram showing the classification of data structures (to be done in class).  
7. Explain why insertion in the middle of an array takes O(n) time.  
8. Write pseudocode to search for an element in an unsorted array.

---

*Space reserved for diagrams and illustrations on:  
- Basic data organization  
- Classification tree of data structures  
- Example of array insertion*

---