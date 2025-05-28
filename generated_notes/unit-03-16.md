# PCC-CS301 : Data Structures and Algorithms with C  
## Unit 3: Linked Lists  
### Topic: Singly Linked List - Representation, Creation, Traversal

---

## 1. Introduction and Definitions

- **Linked List**: A linear data structure where elements are stored in nodes, and each node points to the next node in the sequence.
- **Singly Linked List**: A type of linked list where each node contains:
  - Data (value)
  - A pointer/reference to the next node  
- The last node points to `NULL` indicating the end of the list.

**Key Concepts:**

| Term          | Meaning                                 |
|---------------|-----------------------------------------|
| Node          | Basic unit containing data and next pointer |
| Head          | Pointer to the first node of the list        |
| NULL          | Indicates the end of the list                 |

---

## 2. Intuition and Working Principle

- Imagine a chain of boxes linked through ropes (pointers).
- Unlike arrays, linked lists don’t store elements in contiguous memory blocks.
- You **navigate nodes by following pointers** starting from the head node.
- Useful when the number of elements frequently changes (dynamic size).
- Insertions and deletions are easier without shifting elements (like in arrays).

---

## 3. Step-by-Step Explanation with Example

### Objective:  
Create and traverse a singly linked list with 3 nodes storing integers 10, 20, and 30.

### Steps:  

1. **Create nodes**: Allocate memory for each node.
2. **Initialize data**: Assign values (10, 20, 30).
3. **Link nodes**: Set the `next` pointer of a node to the next node.
4. **Mark end**: Last node’s next pointer is `NULL`.
5. **Traverse**: Start from the head and print each node’s data until `NULL`.

### Visual Representation  
*(Insert diagram here showing nodes and pointers)*

---

## 4. Pseudocode / Algorithm

### Creation Algorithm:  
```
1. Create nodes (node1, node2, node3)
2. node1.data = 10
3. node1.next = node2
4. node2.data = 20
5. node2.next = node3
6. node3.data = 30
7. node3.next = NULL
8. head = node1
```

### Traversal Algorithm:  
```
Function traverse(head):
    current = head
    While current != NULL:
        Print current.data
        current = current.next
```

---

## 5. Code Implementation in C

```c
#include <stdio.h>
#include <stdlib.h>

// Define the node structure
struct Node {
    int data;
    struct Node* next;
};

int main() {
    // Step 1: Create nodes
    struct Node* head = NULL;
    struct Node* second = NULL;
    struct Node* third = NULL;

    // Allocate memory
    head = (struct Node*)malloc(sizeof(struct Node));
    second = (struct Node*)malloc(sizeof(struct Node));
    third = (struct Node*)malloc(sizeof(struct Node));

    // Step 2: Initialize data and link nodes
    head->data = 10;
    head->next = second;

    second->data = 20;
    second->next = third;

    third->data = 30;
    third->next = NULL;

    // Step 3: Traverse and print the list
    struct Node* current = head;
    printf("Singly Linked List Elements:\n");
    while (current != NULL) {
        printf("%d -> ", current->data);
        current = current->next;
    }
    printf("NULL\n");

    // Free allocated memory
    free(third);
    free(second);
    free(head);

    return 0;
}
```

---

## 6. Time and Space Complexity Analysis

| Operation  | Time Complexity      | Space Complexity         |
|------------|---------------------|-------------------------|
| Creation   | O(n) (for n nodes)  | O(n) (each node allocated dynamically) |
| Traversal  | O(n)                | O(1) (only pointers used for traversal) |

---

## 7. Real-World Applications

- Implementation of stacks and queues.
- Memory management in operating systems.
- Dynamic memory allocation (heap).
- Browsers’ back/forward navigation.
- Undo functionality in text editors.
- Representing adjacency lists in graphs.

---

## 8. Key Takeaways

- Singly linked lists store elements dynamically with nodes connected via pointers.
- They provide efficient insertion and deletion at any position.
- Traversal needs to start from the head and follow `next` pointers.
- Unlike arrays, linked lists do not support direct indexing.
- Proper memory handling (malloc/free) is essential in C.

---

## 9. Practice Questions or Problems

1. Write a C program to insert a node at the beginning of a singly linked list.
2. Implement a function to count the number of nodes in a singly linked list.
3. Write a function to search for an element in a singly linked list.
4. Modify the traversal function to print the list in reverse order using recursion.
5. Create a singly linked list and write a function to delete a node at a given position.

---

*(Leave space for diagrams illustrating node structure, pointers, and traversal process)*