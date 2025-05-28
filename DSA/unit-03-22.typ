= Unit 3: Linked Lists
<unit-3-linked-lists>
== Topic: Doubly Linked List - Structure, Insertion and Deletion Operations
<topic-doubly-linked-list---structure-insertion-and-deletion-operations>

#horizontalrule

== 1. Introduction and Definitions
<introduction-and-definitions>
- #strong[Linked List];: A linear data structure where each element
  (node) points to the next, forming a sequence.
- #strong[Doubly Linked List (DLL)];: A type of linked list in which
  each node contains:
  - Data
  - Pointer to the #strong[next] node
  - Pointer to the #strong[previous] node

=== Key Points:
<key-points>
- Allows traversal in both forward and backward directions.
- More flexible for insertion and deletion compared to singly linked
  lists.
- Typically used where bidirectional traversal is needed.

#horizontalrule

== 2. Intuition and Working Principle
<intuition-and-working-principle>
- Each node knows its neighboring nodes on both sides.
- Unlike singly linked lists, no need to traverse from the head to find
  the previous node.
- Insertion and deletion are efficient since pointers to both neighbors
  are available.
- #strong[Example analogy];: A doubly linked list is like a train where
  each carriage is connected to the previous and the next.

#horizontalrule

== 3. Step-by-Step Explanation with Example
<step-by-step-explanation-with-example>
=== Structure of a Node in Doubly Linked List:
<structure-of-a-node-in-doubly-linked-list>
```
+----------+---------+----------+
| Previous |  Data   |  Next    |
+----------+---------+----------+
```

=== Example: Inserting node with value = 20 after head whose value = 10
<example-inserting-node-with-value-20-after-head-whose-value-10>
- Initial List:

  `NULL <- 10 <-> NULL`

- Steps:

  + Create new node with data 20.
  + Link new node's `prev` to 10.
  + Link new node's `next` to what 10's `next` was pointing (NULL).
  + Update 10's `next` to new node.
  + If there was a next node after 10, update that node's `prev` to new
    node.

- Result:

  `NULL <- 10 <-> 20 <-> NULL`

#horizontalrule

== 4. Pseudocode or Algorithm
<pseudocode-or-algorithm>
=== Insertion at Beginning
<insertion-at-beginning>
```
function insertAtBeginning(head, data):
    newNode = createNode(data)
    newNode.next = head
    newNode.prev = NULL
    
    if head != NULL:
        head.prev = newNode
    
    head = newNode
    return head
```

=== Insertion at End
<insertion-at-end>
```
function insertAtEnd(head, data):
    newNode = createNode(data)
    if head == NULL:
        head = newNode
        return head
    temp = head
    while temp.next != NULL:
        temp = temp.next
    temp.next = newNode
    newNode.prev = temp
    return head
```

=== Deletion of a Node (with value key)
<deletion-of-a-node-with-value-key>
```
function deleteNode(head, key):
    temp = head

    # Find node to delete
    while temp != NULL and temp.data != key:
        temp = temp.next
    
    if temp == NULL:
        return head  # Key not found
    
    # If node is head
    if temp == head:
        head = temp.next

    if temp.next != NULL:
        temp.next.prev = temp.prev

    if temp.prev != NULL:
        temp.prev.next = temp.next

    delete temp
    return head
```

#horizontalrule

== 5. Code Implementation in C
<code-implementation-in-c>
```c
#include <stdio.h>
#include <stdlib.h>

// Define node structure
typedef struct Node {
    int data;
    struct Node* prev;
    struct Node* next;
} Node;

// Create new node
Node* createNode(int data) {
    Node* newNode = (Node*)malloc(sizeof(Node));
    newNode->data = data;
    newNode->prev = NULL;
    newNode->next = NULL;
    return newNode;
}

// Insert at beginning
void insertAtBeginning(Node** head_ref, int data) {
    Node* newNode = createNode(data);
    newNode->next = *head_ref;
    if (*head_ref != NULL) {
        (*head_ref)->prev = newNode;
    }
    *head_ref = newNode;
}

// Insert at end
void insertAtEnd(Node** head_ref, int data) {
    Node* newNode = createNode(data);
    if (*head_ref == NULL) {
        *head_ref = newNode;
        return;
    }
    Node* temp = *head_ref;
    while (temp->next != NULL) {
        temp = temp->next;
    }
    temp->next = newNode;
    newNode->prev = temp;
}

// Delete node with given key
void deleteNode(Node** head_ref, int key) {
    Node* temp = *head_ref;

    while (temp != NULL && temp->data != key) {
        temp = temp->next;
    }
    if (temp == NULL) {
        printf("Node with data %d not found.\n", key);
        return;
    }

    if (*head_ref == temp) {
        *head_ref = temp->next;
    }
    if (temp->next != NULL) {
        temp->next->prev = temp->prev;
    }
    if (temp->prev != NULL) {
        temp->prev->next = temp->next;
    }

    free(temp);
}

// Print list forward
void printList(Node* head) {
    Node* temp = head;
    printf("List: ");
    while (temp != NULL) {
        printf("%d ", temp->data);
        temp = temp->next;
    }
    printf("\n");
}

// Main function to demonstrate
int main() {
    Node* head = NULL;

    insertAtEnd(&head, 10);
    insertAtEnd(&head, 20);
    insertAtBeginning(&head, 5);
    printList(head);  // Output: 5 10 20

    deleteNode(&head, 10);
    printList(head);  // Output: 5 20

    return 0;
}
```

#horizontalrule

== 6. Time and Space Complexity Analysis
<time-and-space-complexity-analysis>
#figure(
  align(center)[#table(
    columns: 3,
    align: (auto,auto,auto,),
    table.header([Operation], [Time Complexity], [Space Complexity],),
    table.hline(),
    [Insertion (Begin)], [O(1)], [O(1)],
    [Insertion (End)], [O(n)\*], [O(1)],
    [Deletion], [O(n)], [O(1)],
    [Searching], [O(n)], [O(1)],
  )]
  , kind: table
  )

\*Note: If tail pointer is maintained, insertion at end becomes O(1).

#horizontalrule

== 7. Real-World Applications
<real-world-applications>
- #strong[Undo/Redo functionality] in text editors (nodes represent
  states).
- #strong[Browser History] data management: Move back and forward
  through pages.
- #strong[Music Playlist] navigation (track next/previous).
- #strong[Memory Management];: Some OS memory allocators use DLL.
- #strong[Implementing other data structures] like deque and more
  complex variants.

#horizontalrule

== 8. Key Takeaways
<key-takeaways>
- Doubly linked lists allow easy traversal in both directions.
- Insertion and deletion are efficient if node pointers are known.
- Maintaining `prev` pointers increases memory but provides flexibility.
- Useful in scenarios requiring reversibility or bi-directional
  traversal.
- Always handle edge cases like empty lists, single-node lists during
  operations.

#horizontalrule

== 9. Practice Questions or Problems
<practice-questions-or-problems>
+ Write a C program to insert a node at a given position in a doubly
  linked list.
+ Implement a function to reverse a doubly linked list.
+ Extend the given C code to maintain a tail pointer for O(1) insertion
  at the end.
+ Write a program to count the number of nodes in a doubly linked list.
+ Implement a function to search a value in a doubly linked list and
  return its position.
+ Modify the delete operation to delete a node at a given position
  instead of by value.
+ Given two doubly linked lists, write a function to merge them into a
  single sorted doubly linked list.

#horizontalrule

#block[

]
