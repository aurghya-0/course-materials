= PCC-CS301 : Data Structures and Algorithms with C
<pcc-cs301-data-structures-and-algorithms-with-c>
== Unit 3: Linked Lists -- Header and Circular Lists
<unit-3-linked-lists-header-and-circular-lists>
=== Topic: Header Nodes, Circular List Creation, Traversal
<topic-header-nodes-circular-list-creation-traversal>

#horizontalrule

== 1. Introduction and Definitions
<introduction-and-definitions>
- #strong[Linked List];: A linear data structure where elements (nodes)
  are linked using pointers.
- #strong[Header Node];: A special node at the beginning of a linked
  list which does not store actual data but helps in simplifying list
  operations.
- #strong[Circular Linked List];: A linked list where the last node
  points back to the first node, forming a circle instead of ending with
  NULL.
- #strong[Header Circular List];: A circular linked list with a header
  node acting as a sentinel for easier management.

#horizontalrule

== 2. Intuition and Working Principle
<intuition-and-working-principle>
- #strong[Why Header Nodes?] \
  Header nodes provide a stable starting point for the list, simplifying
  insertion and deletion because you never manipulate the actual first
  data node directly.

- #strong[Why Circular Lists?] \
  Circular lists avoid the NULL end; useful in scenarios requiring
  continuous iteration or round-robin processing, ensuring no node is
  "last" logically.

- #strong[Header Circular Lists] combine both advantages:

  - A header node to anchor the list
  - Circular links for seamless traversal

#horizontalrule

== 3. Step-by-Step Explanation with Example
<step-by-step-explanation-with-example>
=== Example Scenario:
<example-scenario>
Create a circular linked list with header node and insert student IDs:
101, 102, 103.

#strong[Step 1: Create Header Node] - Initialize a node with no
meaningful data (e.g., data = -1 or 0). \
\- Its `next` pointer initially points to itself.

#strong[Step 2: Insert Nodes] - Insert node with data 101: \
Adjust pointers so header's next points to node101, node101 next points
back to header.

- Insert node with data 102: \
  Point node101's next to node102, node102 next to header.

- Insert node with data 103: \
  Point node102's next to node103, node103 next to header.

#strong[Step 3: Traversal] - Start at header's next node (node101). -
Move node by node until you reach the header again (stop condition).

```
Header -> 101 -> 102 -> 103 -> Header (circle closed)
```

#horizontalrule

== 4. Pseudocode / Algorithm
<pseudocode-algorithm>
=== Algorithm: Create Header Circular List
<algorithm-create-header-circular-list>
```
CreateHeaderNode():
    node = allocate new node
    node.data = -1           // sentinel value
    node.next = node         // points to itself
    return node

InsertAfter(header, newData):
    newNode = allocate new node
    newNode.data = newData
    newNode.next = header.next
    header.next = newNode

Traverse(header):
    current = header.next
    while current != header:
        print current.data
        current = current.next
```

#horizontalrule

== 5. Code Implementation in C
<code-implementation-in-c>
```c
#include <stdio.h>
#include <stdlib.h>

// Node structure
typedef struct Node {
    int data;
    struct Node *next;
} Node;

// Create header node
Node* createHeader() {
    Node* header = (Node*)malloc(sizeof(Node));
    header->data = -1;   // Sentinel value
    header->next = header;  // Points to itself initially
    return header;
}

// Insert new node after header (at beginning)
void insertAfter(Node* header, int data) {
    Node* newNode = (Node*)malloc(sizeof(Node));
    newNode->data = data;
    newNode->next = header->next;
    header->next = newNode;
}

// Traverse circular list and print data
void traverseList(Node* header) {
    Node* current = header->next;
    if (current == header) {
        printf("List is empty.\n");
        return;
    }

    printf("List elements: ");
    while (current != header) {
        printf("%d ", current->data);
        current = current->next;
    }
    printf("\n");
}

// Main function to test list
int main() {
    Node* header = createHeader();

    insertAfter(header, 103);
    insertAfter(header, 102);
    insertAfter(header, 101);

    traverseList(header);

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
    [Creation], [O(1)], [O(1) (for header node)],
    [Insertion], [O(1)], [O(1) (for each new node)],
    [Traversal], [O(n)], [O(1)],
  )]
  , kind: table
  )

- #strong[Insertion] is O(1) because new nodes are inserted directly
  after header.
- #strong[Traversal] requires visiting all nodes once -- O(n).

#horizontalrule

== 7. Real-World Applications
<real-world-applications>
- #strong[Round Robin Scheduling];: Circular lists naturally implement
  cyclic iteration over processes.
- #strong[Buffer Management];: Circular buffers for continuous data
  flow.
- #strong[Multiplayer Games or Playlist Cycles];: Maintaining cyclic
  order of players or songs.
- #strong[Data Structures] like Fibonacci heaps and certain graph
  adjacency representations use circular linked lists.

#horizontalrule

== 8. Key Takeaways
<key-takeaways>
- Header nodes simplify linked list operations by serving as a fixed
  anchor.
- Circular linked lists eliminate NULL termination, enabling infinite
  cyclic traversal.
- Combining header and circular lists increases robustness and
  simplifies edge cases.
- Insertions after header happen in constant time O(1).
- Traversal must use the header node to identify when the cycle
  completes.

#horizontalrule

== 9. Practice Questions / Problems
<practice-questions-problems>
+ #strong[Implement a function to delete a node by value in a header
  circular linked list.]
+ #strong[Modify the insertion function to insert nodes at the end of
  the list instead of after the header node.]
+ #strong[Write a function to search for an element in the header
  circular list and return its position.]
+ #strong[Explain how to convert a singly linked list into a circular
  linked list with a header node.]
+ #strong[Implement a function to count the number of nodes in a header
  circular linked list.]
+ #strong[Draw the diagram of a header circular linked list after
  inserting values 10, 20, and 30.]

#horizontalrule

#emph[Insert relevant diagrams or illustrations in the spaces provided
above for better understanding.]
