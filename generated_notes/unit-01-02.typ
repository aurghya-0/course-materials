= PCC-CS301: Data Structures and Algorithms with C
<pcc-cs301-data-structures-and-algorithms-with-c>
== Unit 1: Introduction - Data Structure Operations
<unit-1-introduction---data-structure-operations>
=== Topic: Insertion, Deletion, Traversal - General Idea with Examples
<topic-insertion-deletion-traversal---general-idea-with-examples>

#horizontalrule

== 1. Introduction and Definitions
<introduction-and-definitions>
#strong[Data Structure:] \
A data structure is a way of organizing and storing data to perform
operations efficiently.

#strong[Basic Operations on Data Structures:] \
\- #strong[Insertion:] Adding an element to the data structure. \
\- #strong[Deletion:] Removing an element from the data structure. \
\- #strong[Traversal:] Accessing and processing each element of the data
structure, typically one by one.

These operations are fundamental to all data structures such as arrays,
linked lists, stacks, queues, trees, and graphs.

#horizontalrule

== 2. Intuition and Working Principle
<intuition-and-working-principle>
- #strong[Insertion:] Think of it as placing a new card into a deck ---
  it could be at the beginning, the end, or a specific position. \
- #strong[Deletion:] Removing a card from that deck, which may require
  shifting or reconnecting the remaining cards. \
- #strong[Traversal:] Flipping through all the cards one by one to read
  or process their content.

Every data structure has its unique way of handling these operations
based on its properties (e.g., contiguous memory for arrays, pointers
for linked lists).

#horizontalrule

== 3. Step-by-Step Explanation with Example (Singly Linked List)
<step-by-step-explanation-with-example-singly-linked-list>
=== Given data structure: Singly Linked List
<given-data-structure-singly-linked-list>
A list of nodes where each node points to the next node.

=== Operations:
<operations>
#strong[Insertion at the beginning:] \
\1. Create a new node. \
\2. Point the new node's `next` to the current head. \
\3. Update head to the new node.

#strong[Deletion from the beginning:] \
\1. Check if the list is empty. \
\2. Copy head pointer to a temporary node. \
\3. Update head to head's next node. \
\4. Free the temporary node.

#strong[Traversal:] \
\1. Start from the head node. \
\2. Visit each node until you reach `NULL`. \
\3. Process the data in each node (e.g., print it).

#horizontalrule

== 4. Pseudocode or Algorithm
<pseudocode-or-algorithm>
=== Insertion at Beginning (Linked List)
<insertion-at-beginning-linked-list>
```
function insertAtBeginning(head, data):
    newNode = allocate memory for node
    newNode.data = data
    newNode.next = head
    head = newNode
    return head
```

=== Deletion at Beginning (Linked List)
<deletion-at-beginning-linked-list>
```
function deleteAtBeginning(head):
    if head == NULL:
        print "List is empty"
        return head
    temp = head
    head = head.next
    free temp
    return head
```

=== Traversal (Linked List)
<traversal-linked-list>
```
function traverse(head):
    current = head
    while current != NULL:
        print current.data
        current = current.next
```

#horizontalrule

== 5. Code Implementation in C
<code-implementation-in-c>
```c
#include <stdio.h>
#include <stdlib.h>

struct Node {
    int data;
    struct Node* next;
};

// Insert at beginning
struct Node* insertAtBeginning(struct Node* head, int data) {
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->data = data;
    newNode->next = head;
    head = newNode;
    return head;
}

// Delete at beginning
struct Node* deleteAtBeginning(struct Node* head) {
    if (head == NULL) {
        printf("List is empty.\n");
        return head;
    }
    struct Node* temp = head;
    head = head->next;
    free(temp);
    return head;
}

// Traverse and print list
void traverse(struct Node* head) {
    struct Node* current = head;
    while (current != NULL) {
        printf("%d -> ", current->data);
        current = current->next;
    }
    printf("NULL\n");
}

int main() {
    struct Node* head = NULL;

    // Insertion
    head = insertAtBeginning(head, 10);
    head = insertAtBeginning(head, 20);
    head = insertAtBeginning(head, 30);

    printf("List after insertions:\n");
    traverse(head);

    // Deletion
    head = deleteAtBeginning(head);
    printf("List after one deletion:\n");
    traverse(head);

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
    [Insertion], [O(1) - constant time], [O(1) - for new node],
    [Deletion], [O(1) - constant time], [O(1) - frees memory],
    [Traversal], [O(n) - linear time], [O(1)],
  )]
  , kind: table
  )

#strong[Explanation:] \
\- Inserting or deleting at the beginning of a linked list is constant
time because it involves changing a few pointers. \
\- Traversal requires visiting every node once, so it's linear in the
size of the list.

#horizontalrule

== 7. Real-World Applications
<real-world-applications>
- #strong[Insertion and Deletion:] Used in dynamic data management like
  undo operations, managing playlists, or task scheduling. \
- #strong[Traversal:] Essential in searching, sorting, and displaying
  data in applications such as file systems, databases, and web page
  rendering. \
- #strong[Linked lists:] Useful for implementing stacks, queues, and
  adjacency lists in graph algorithms.

#horizontalrule

== 8. Key Takeaways
<key-takeaways>
- Understanding #strong[insertion];, #strong[deletion];, and
  #strong[traversal] is critical for mastering data structures. \
- The implementation depends on the underlying data structure's
  properties (memory layout, pointers, etc.). \
- Efficiency varies: linked lists provide O(1) insertion/deletion at the
  head, arrays provide O(1) access but costly insertion/deletion. \
- Practice implementing these operations in different data structures to
  get comfortable.

#horizontalrule

== 9. Practice Questions or Problems
<practice-questions-or-problems>
+ Implement insertion at the end of a singly linked list. \
+ Write a function to delete a node with a specific value from a linked
  list. \
+ Implement traversal for a doubly linked list. \
+ Compare insertion and deletion operations on arrays and linked lists.
  Write code examples for both. \
+ Given an array, implement insertion and deletion operations and
  analyze the time complexity. \
+ Implement a stack using a linked list with push, pop (insertion and
  deletion) and display (traversal) operations.

#horizontalrule

#strong[\[Insert diagrams here for visualization of linked list
operations\]]

#horizontalrule
