= PCC-CS301 : Data Structures and Algorithms with C
<pcc-cs301-data-structures-and-algorithms-with-c>
== Unit 3: Linked Lists
<unit-3-linked-lists>
=== Topic: Deletion in Singly Linked List (SLL) - Delete by Position and Value
<topic-deletion-in-singly-linked-list-sll---delete-by-position-and-value>

#horizontalrule

== 1. Introduction and Definitions
<introduction-and-definitions>
- #strong[Singly Linked List (SLL):] A linear data structure where each
  element (node) contains:
  - #strong[Data:] The value stored.
  - #strong[Next:] A pointer to the next node.
- #strong[Deletion in SLL:] Removing a node from the list without
  breaking the link between the remaining nodes.
- #strong[Delete by Position:] Remove the node at a specific index.
- #strong[Delete by Value:] Remove the first node found with a specific
  value.

#horizontalrule

== 2. Intuition and Working Principle
<intuition-and-working-principle>
- To delete a node:
  - Find the node prior to the one to be deleted.
  - Adjust the `next` pointer of the preceding node to skip the deleted
    node.
  - Free the memory of the deleted node.
- Special cases:
  - Deleting the #strong[head] node (position 0 or matching value at
    head).
  - Deleting nodes at invalid positions or value not found.
- Deletion by position focuses on the location.
- Deletion by value focuses on content.

#horizontalrule

== 3. Step-by-step Explanation with Example
<step-by-step-explanation-with-example>
=== Example List
<example-list>
```
Head -> 10 -> 20 -> 30 -> 40 -> NULL
```

=== Delete by Position
<delete-by-position>
- Delete node at position 2 (0-based index):
  - Current node at position 1 → 20
  - Node at position 2 → 30 (to be deleted)
  - Connect node at position 1 to node at position 3 → 40
  - List becomes:

```
Head -> 10 -> 20 -> 40 -> NULL
```

=== Delete by Value
<delete-by-value>
- Delete node with value = 20:
  - Start from head, find node with data 20.
  - Node with value 20 is after 10.
  - Adjust `next` pointer of node 10 to node 30.
  - Free node with value 20.
  - List becomes:

```
Head -> 10 -> 30 -> 40 -> NULL
```

#horizontalrule

== 4. Pseudocode or Algorithm
<pseudocode-or-algorithm>
=== Delete by Position
<delete-by-position-1>
```
Input: head pointer, position pos
Output: Modified list after deletion

1. If head is NULL, return (list empty)
2. If pos == 0:
    a. temp = head
    b. head = head->next
    c. free(temp)
    d. return head
3. Initialize current = head
4. For i = 0 to pos-2:
    a. If current == NULL or current->next == NULL:
       - Position out of range, return head
    b. current = current->next
5. temp = current->next
6. current->next = temp->next
7. free(temp)
8. return head
```

=== Delete by Value
<delete-by-value-1>
```
Input: head pointer, value val
Output: Modified list after deletion

1. If head is NULL, return (list empty)
2. If head->data == val:
    a. temp = head
    b. head = head->next
    c. free(temp)
    d. return head
3. Initialize current = head
4. While current->next != NULL and current->next->data != val:
    a. current = current->next
5. If current->next == NULL:
    - value not found, return head
6. temp = current->next
7. current->next = temp->next
8. free(temp)
9. return head
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

// Delete by position
struct Node* deleteAtPosition(struct Node* head, int position) {
    if (head == NULL) return head;

    struct Node* temp = head;

    // Delete head node
    if (position == 0) {
        head = temp->next;
        free(temp);
        return head;
    }

    // Find previous node of the node to be deleted
    for (int i = 0; temp != NULL && i < position - 1; i++) {
        temp = temp->next;
    }

    // If position is more than number of nodes
    if (temp == NULL || temp->next == NULL) {
        return head;
    }

    struct Node* nodeToDelete = temp->next;
    temp->next = nodeToDelete->next;
    free(nodeToDelete);

    return head;
}

// Delete by value
struct Node* deleteByValue(struct Node* head, int value) {
    if (head == NULL) return head;

    struct Node* temp = head;
    struct Node* prev = NULL;

    // If head node holds the value to be deleted
    if (temp != NULL && temp->data == value) {
        head = temp->next;
        free(temp);
        return head;
    }

    // Search for the value to be deleted
    while (temp != NULL && temp->data != value) {
        prev = temp;
        temp = temp->next;
    }

    // If value not found
    if (temp == NULL) return head;

    // Unlink the node from linked list
    prev->next = temp->next;
    free(temp);

    return head;
}

// Helper functions (to be implemented): insertNode(), printList(), etc.
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
    [Delete by Position], [O(n)], [O(1)],
    [Delete by Value], [O(n)], [O(1)],
  )]
  , kind: table
  )

- #strong[Explanation:]
  - Searching for node to delete is linear in worst case.
  - No extra space except a few pointers.

#horizontalrule

== 7. Real-world Applications
<real-world-applications>
- Memory management in operating systems (freeing unused or outdated
  blocks).
- Undo operations in editors where nodes represent change history.
- Dynamic data structures in networks and file systems.
- Implementing abstract data types like stacks and queues.
- Managing playlists or schedules where items can be deleted
  dynamically.

#horizontalrule

== 8. Key Takeaways
<key-takeaways>
- Deletion requires careful manipulation of `next` pointers.
- Handle edge cases:
  - Deleting the first node.
  - Position or value not found.
- Always free deleted nodes to prevent memory leaks.
- Both deletion by position and value operate in O(n) time.
- Understanding pointer updates is critical for linked list operations.

#horizontalrule

== 9. Practice Questions or Problems
<practice-questions-or-problems>
+ Write a program to delete all nodes with a given value from a singly
  linked list.
+ Modify the delete by position function to delete the last node without
  calculating the size of the list.
+ Implement deletion in a circular singly linked list.
+ Given an unsorted linked list, delete nodes with duplicate values.
+ Write a function to delete the node just before the node containing a
  specific value.
+ What changes are necessary to implement deletion in a doubly linked
  list?
+ Write code to delete nodes in pairs (delete every 2nd node) in a
  singly linked list.

#horizontalrule

#emph[\[Insert diagrams here: Illustration of linked list before and
after deletions\]]
