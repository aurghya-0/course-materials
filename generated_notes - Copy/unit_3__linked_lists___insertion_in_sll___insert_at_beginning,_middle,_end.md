# PCC-CS301 : Data Structures and Algorithms with C  
## Unit 3: Linked Lists  
### Topic: Insertion in Singly Linked List (SLL) - Insert at Beginning, Middle, and End

---

## 1. Introduction and Definitions

- **Linked List**: A linear data structure where elements (nodes) are stored in non-contiguous memory locations. Each node contains data and a pointer/reference to the next node.
- **Singly Linked List (SLL)**: A linked list where each node has two parts:
  - **Data**: The value stored in the node.
  - **Next**: Pointer to the next node in the sequence, or `NULL` if it’s the last node.

- **Insertion in SLL**: Adding a new node to the list. The insertion can happen at:
  - Beginning (head)
  - Middle (specific position)
  - End (tail)

---

## 2. Intuition and Working Principle

- **Insertion at Beginning**:
  - New node’s next pointer points to the current head.
  - Update the head pointer to the new node.

- **Insertion at Middle**:
  - Traverse the list to find the node after which insertion is to be done.
  - Adjust the new node’s next pointer to the next node of that position.
  - Update the previous node’s next pointer to the new node.

- **Insertion at End**:
  - Traverse the list until you reach the last node.
  - Point that node’s next to the new node.
  - New node’s next is `NULL`.

> Note: For all insertions, careful manipulation of pointers is essential to maintain list integrity.

---

## 3. Step-by-Step Explanation With Example

### Example List:
```
10 -> 20 -> 30 -> NULL
```

### Insert 5 at beginning:
- Create new node with `5`.
- New node’s next = current head (node with 10).
- Update head to new node.
- Result:  
```
5 -> 10 -> 20 -> 30 -> NULL
```

### Insert 25 at middle (after node with 20):
- Traverse to node with data 20.
- Create new node with `25`.
- New node’s next = node after 20 (which is 30).
- Node 20’s next = new node.
- Result:
```
5 -> 10 -> 20 -> 25 -> 30 -> NULL
```

### Insert 40 at end:
- Traverse to last node (30).
- Create new node with `40`.
- Last node’s next = new node.
- New node’s next = NULL.
- Result:
```
5 -> 10 -> 20 -> 25 -> 30 -> 40 -> NULL
```

---

## 4. Pseudocode or Algorithm

### Insertion at Beginning
```
function insertAtBeginning(head, data):
    new_node = allocate node
    new_node.data = data
    new_node.next = head
    head = new_node
    return head
```

### Insertion at Middle (position-based, 1-indexed)
```
function insertAtMiddle(head, data, position):
    if position == 1:
        return insertAtBeginning(head, data)
    new_node = allocate node
    new_node.data = data
    temp = head
    count = 1
    while count < position - 1 and temp != NULL:
        temp = temp.next
        count += 1
    if temp == NULL:
        print "Position out of bounds"
        return head
    new_node.next = temp.next
    temp.next = new_node
    return head
```

### Insertion at End
```
function insertAtEnd(head, data):
    new_node = allocate node
    new_node.data = data
    new_node.next = NULL
    if head == NULL:
        return new_node
    temp = head
    while temp.next != NULL:
        temp = temp.next
    temp.next = new_node
    return head
```

---

## 5. Code Implementation in C

```c
#include <stdio.h>
#include <stdlib.h>

struct Node {
    int data;
    struct Node* next;
};

// Insert at beginning
struct Node* insertAtBeginning(struct Node* head, int data) {
    struct Node* new_node = (struct Node*)malloc(sizeof(struct Node));
    new_node->data = data;
    new_node->next = head;
    head = new_node;
    return head;
}

// Insert at middle (position starts at 1)
struct Node* insertAtMiddle(struct Node* head, int data, int position) {
    if (position == 1) {
        return insertAtBeginning(head, data);
    }

    struct Node* new_node = (struct Node*)malloc(sizeof(struct Node));
    new_node->data = data;
    struct Node* temp = head;
    int count = 1;

    while (count < position - 1 && temp != NULL) {
        temp = temp->next;
        count++;
    }

    if (temp == NULL) {
        printf("Position out of bounds\n");
        free(new_node);
        return head;
    }

    new_node->next = temp->next;
    temp->next = new_node;
    return head;
}

// Insert at end
struct Node* insertAtEnd(struct Node* head, int data) {
    struct Node* new_node = (struct Node*)malloc(sizeof(struct Node));
    new_node->data = data;
    new_node->next = NULL;

    if (head == NULL) {
        return new_node;
    }

    struct Node* temp = head;
    while (temp->next != NULL) {
        temp = temp->next;
    }
    temp->next = new_node;
    return head;
}

// Function to print list
void printList(struct Node* head) {
    struct Node* temp = head;
    while (temp != NULL) {
        printf("%d -> ", temp->data);
        temp = temp->next;
    }
    printf("NULL\n");
}

// Example usage
int main() {
    struct Node* head = NULL;

    head = insertAtEnd(head, 10);
    head = insertAtEnd(head, 20);
    head = insertAtEnd(head, 30);
    printList(head);  // 10 -> 20 -> 30 -> NULL

    head = insertAtBeginning(head, 5);
    printList(head);  // 5 -> 10 -> 20 -> 30 -> NULL

    head = insertAtMiddle(head, 25, 4);
    printList(head);  // 5 -> 10 -> 20 -> 25 -> 30 -> NULL

    head = insertAtEnd(head, 40);
    printList(head);  // 5 -> 10 -> 20 -> 25 -> 30 -> 40 -> NULL

    return 0;
}
```

---

## 6. Time and Space Complexity Analysis

| Operation             | Time Complexity    | Space Complexity  |
|----------------------|--------------------|-------------------|
| Insert at Beginning  | O(1)               | O(1)              |
| Insert at Middle     | O(n), where n is position - 1  | O(1)              |
| Insert at End        | O(n), to traverse till last node| O(1)              |

- **Explanation**:
  - Insertion at beginning is constant time since no traversal is required.
  - Insertion at middle and end requires traversing the list which can take linear time.
  - Space complexity is constant because no extra space proportional to input size is used (only one node created).

---

## 7. Real-World Applications

- Implementing dynamic data structures such as stacks, queues.
- Managing memory and processes in operating systems.
- Undo functionality in text editors (inserting or removing linked changes).
- Representing adjacency lists in graphs.
- Handling polynomial expressions where insertion order changes dynamically.

---

## 8. Key Takeaways

- Linked lists store data non-contiguously using nodes containing data and pointer to next node.
- Insertion operation varies based on the position: beginning, middle, or end.
- Pointer manipulation must be carefully done to maintain list structure.
- Singly linked lists do not have backward traversal.
- Knowing insertion is fundamental to building other data structures like stacks and queues.

---

## 9. Practice Questions or Problems

1. Implement a function to insert a node after a node containing a specific value in SLL.
2. Modify the insertion functions to handle doubly linked lists.
3. Write a program to create a SLL by inserting nodes at random positions.
4. Implement deletion functions at beginning, middle, and end of a SLL.
5. Given a SLL, write a function to reverse the list by pointer manipulation.
6. Compare insertion complexities of arrays vs linked lists; write a small report.
7. Write a function to insert nodes in a sorted singly linked list.

---

*[Insert diagrams here to illustrate node structures and pointer changes during insertions]*