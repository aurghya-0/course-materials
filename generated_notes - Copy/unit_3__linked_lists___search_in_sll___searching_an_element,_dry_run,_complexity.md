# PCC-CS301 : Data Structures and Algorithms with C  
## Unit 3: Linked Lists  
### Topic: Search in Singly Linked List (SLL) - Searching an Element, Dry Run, Complexity

---

## 1. Introduction and Definitions

- **Linked List:** A linear data structure consisting of nodes where each node contains data and a reference (pointer) to the next node.
- **Singly Linked List (SLL):** A linked list where each node points only to the next node.
- **Search Operation:** The process of finding whether a particular element/key exists within the linked list.
  
**Key terms:**
- **Node:** Structure containing data and a pointer to next node.
- **Head:** Pointer to the first node in the linked list.
- **Element/Key:** Value to be searched in the linked list.

---

## 2. Intuition and Working Principle

- Searching in an SLL involves traversing nodes one by one.
- Start from the head node.
- Compare the data in each node with the search key.
- If a match is found, return success (position/index or reference).
- If end of list is reached without finding the key, return failure.

**How does it work?**

- Since SLL nodes are connected sequentially, you cannot skip nodes.
- The only way to search is linear traversal, node by node.

---

## 3. Step-by-step Explanation with Example

**Example:** Search for `30` in the list: 10 → 20 → 30 → 40 → 50

| Step No | Node Visited | Node Value | Is it 30? | Action            |
|---------|--------------|------------|-----------|-------------------|
| 1       | Head         | 10         | No        | Move to next node |
| 2       | Second node  | 20         | No        | Move to next node |
| 3       | Third node   | 30         | Yes       | Found the element |

- Result: Element `30` found at position 3.

*(Insert diagram illustrating traversal here)*

---

## 4. Pseudocode or Algorithm

```plaintext
Algorithm: SearchInSLL(head, key)
Input: head pointer of the linked list, key to be searched
Output: position of key if found, else -1

1. Set current = head
2. Set position = 1
3. While current is not NULL
4.    If current.data == key
5.       Return position
6.    End If
7.    current = current.next
8.    position = position + 1
9. End While
10. Return -1  // element not found
```

---

## 5. Code Implementation in C

```c
#include <stdio.h>
#include <stdlib.h>

// Definition of node
struct Node {
    int data;
    struct Node* next;
};

// Function to create a new node
struct Node* createNode(int data) {
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->data = data;
    newNode->next = NULL;
    return newNode;
}

// Search function for SLL
int search(struct Node* head, int key) {
    int position = 1;
    struct Node* current = head;
    
    while (current != NULL) {
        if (current->data == key)
            return position;
        current = current->next;
        position++;
    }
    return -1;  // Key not found
}

// Function to print the list (for verification)
void printList(struct Node* head) {
    struct Node* temp = head;
    while(temp != NULL) {
        printf("%d -> ", temp->data);
        temp = temp->next;
    }
    printf("NULL\n");
}

int main() {
    // Creating the linked list: 10 -> 20 -> 30 -> 40 -> 50
    struct Node* head = createNode(10);
    head->next = createNode(20);
    head->next->next = createNode(30);
    head->next->next->next = createNode(40);
    head->next->next->next->next = createNode(50);
    
    printList(head);
    
    int key = 30;
    int pos = search(head, key);
    
    if (pos != -1)
        printf("Element %d found at position %d\n", key, pos);
    else
        printf("Element %d not found in the list\n", key);
        
    return 0;
}
```

---

## 6. Time and Space Complexity Analysis

- **Time Complexity:**  
  - Worst Case: O(n) — The element is not present or at the last node, so traversal of all nodes is needed.  
  - Best Case: O(1) — The searched element is at the head node.

- **Space Complexity:**  
  - O(1) — Only a fixed amount of extra space is used regardless of input size.

---

## 7. Real-world Applications

- Searching data in dynamic data structures where size varies frequently.
- Implementing lookup operations in symbol tables and memory management.
- Used in applications where simple linear search suffices or data is mostly unsorted and linked.
- Undo functionality in text editors (finding specific state/node).
- Basic database indexing and retrieval where linked list is used.

---

## 8. Key Takeaways

- Searching in Singly Linked List is a **linear search** process.
- The process is straightforward but inefficient for large lists due to O(n) time complexity.
- Useful in scenarios where data insertion and deletion occur frequently.
- Understanding the traversal logic is foundation for advanced linked list operations.
- Practice dry runs to master node traversal and pointer manipulation.

---

## 9. Practice Questions or Problems

1. Write a C program to search for an element in a linked list and return whether it exists or not.
2. Modify the search function to return the pointer to the node containing the key instead of position.
3. Implement a function to search for the last occurrence of an element in the linked list.
4. Extend the search method to count the number of times a given element appears.
5. Dry run the search algorithm on the list: 5 → 10 → 15 → 20 → 25 by searching for 15 and 100.
6. Analyze how the search algorithm changes if the linked list is circular SLL.

---

*(Space reserved here for the linked list search traversal diagram)*