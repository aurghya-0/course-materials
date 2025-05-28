= PCC-CS301 : Data Structures and Algorithms with C
<pcc-cs301-data-structures-and-algorithms-with-c>
== Unit 3: Linked Lists
<unit-3-linked-lists>
=== Topic: Insertion in Singly Linked List (SLL) - Insert at Beginning, Middle, and End
<topic-insertion-in-singly-linked-list-sll---insert-at-beginning-middle-and-end>

#horizontalrule

== 1. Introduction and Definitions
<introduction-and-definitions>
- #strong[Linked List];: A linear data structure where elements (nodes)
  are stored in non-contiguous memory locations. Each node contains data
  and a pointer/reference to the next node.
- #strong[Singly Linked List (SLL)];: A linked list where each node has
  two parts:
  - #strong[Data];: The value stored in the node.
  - #strong[Next];: Pointer to the next node in the sequence, or `NULL`
    if it's the last node.
- #strong[Insertion in SLL];: Adding a new node to the list. The
  insertion can happen at:
  - Beginning (head)
  - Middle (specific position)
  - End (tail)

#horizontalrule

== 2. Intuition and Working Principle
<intuition-and-working-principle>
- #strong[Insertion at Beginning];:
  - New node's next pointer points to the current head.
  - Update the head pointer to the new node.
- #strong[Insertion at Middle];:
  - Traverse the list to find the node after which insertion is to be
    done.
  - Adjust the new node's next pointer to the next node of that
    position.
  - Update the previous node's next pointer to the new node.
- #strong[Insertion at End];:
  - Traverse the list until you reach the last node.
  - Point that node's next to the new node.
  - New node's next is `NULL`.

#quote(block: true)[
Note: For all insertions, careful manipulation of pointers is essential
to maintain list integrity.
]

#horizontalrule

== 3. Step-by-Step Explanation With Example
<step-by-step-explanation-with-example>
=== Example List:
<example-list>
```
10 -> 20 -> 30 -> NULL
```

=== Insert 5 at beginning:
<insert-5-at-beginning>
- Create new node with `5`.
- New node's next = current head (node with 10).
- Update head to new node.
- Result: \

```
5 -> 10 -> 20 -> 30 -> NULL
```

=== Insert 25 at middle (after node with 20):
<insert-25-at-middle-after-node-with-20>
- Traverse to node with data 20.
- Create new node with `25`.
- New node's next = node after 20 (which is 30).
- Node 20's next = new node.
- Result:

```
5 -> 10 -> 20 -> 25 -> 30 -> NULL
```

=== Insert 40 at end:
<insert-40-at-end>
- Traverse to last node (30).
- Create new node with `40`.
- Last node's next = new node.
- New node's next = NULL.
- Result:

```
5 -> 10 -> 20 -> 25 -> 30 -> 40 -> NULL
```

#horizontalrule

== 4. Pseudocode or Algorithm
<pseudocode-or-algorithm>
=== Insertion at Beginning
<insertion-at-beginning>
```
function insertAtBeginning(head, data):
    new_node = allocate node
    new_node.data = data
    new_node.next = head
    head = new_node
    return head
```

=== Insertion at Middle (position-based, 1-indexed)
<insertion-at-middle-position-based-1-indexed>
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

=== Insertion at End
<insertion-at-end>
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

#horizontalrule

== 6. Time and Space Complexity Analysis
<time-and-space-complexity-analysis>
#figure(
  align(center)[#table(
    columns: (36.07%, 32.79%, 31.15%),
    align: (auto,auto,auto,),
    table.header([Operation], [Time Complexity], [Space Complexity],),
    table.hline(),
    [Insert at Beginning], [O(1)], [O(1)],
    [Insert at Middle], [O(n), where n is position - 1], [O(1)],
    [Insert at End], [O(n), to traverse till last node], [O(1)],
  )]
  , kind: table
  )

- #strong[Explanation];:
  - Insertion at beginning is constant time since no traversal is
    required.
  - Insertion at middle and end requires traversing the list which can
    take linear time.
  - Space complexity is constant because no extra space proportional to
    input size is used (only one node created).

#horizontalrule

== 7. Real-World Applications
<real-world-applications>
- Implementing dynamic data structures such as stacks, queues.
- Managing memory and processes in operating systems.
- Undo functionality in text editors (inserting or removing linked
  changes).
- Representing adjacency lists in graphs.
- Handling polynomial expressions where insertion order changes
  dynamically.

#horizontalrule

== 8. Key Takeaways
<key-takeaways>
- Linked lists store data non-contiguously using nodes containing data
  and pointer to next node.
- Insertion operation varies based on the position: beginning, middle,
  or end.
- Pointer manipulation must be carefully done to maintain list
  structure.
- Singly linked lists do not have backward traversal.
- Knowing insertion is fundamental to building other data structures
  like stacks and queues.

#horizontalrule

== 9. Practice Questions or Problems
<practice-questions-or-problems>
+ Implement a function to insert a node after a node containing a
  specific value in SLL.
+ Modify the insertion functions to handle doubly linked lists.
+ Write a program to create a SLL by inserting nodes at random
  positions.
+ Implement deletion functions at beginning, middle, and end of a SLL.
+ Given a SLL, write a function to reverse the list by pointer
  manipulation.
+ Compare insertion complexities of arrays vs linked lists; write a
  small report.
+ Write a function to insert nodes in a sorted singly linked list.

#horizontalrule

#emph[\[Insert diagrams here to illustrate node structures and pointer
changes during insertions\]]
