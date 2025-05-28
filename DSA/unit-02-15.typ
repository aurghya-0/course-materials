= PCC-CS301 : Data Structures and Algorithms with C
<pcc-cs301-data-structures-and-algorithms-with-c>
== Unit 2: Stacks & Queues
<unit-2-stacks-queues>
=== Topic: Priority Queue - Types of Priority Queues, Basic Operations and Analysis
<topic-priority-queue---types-of-priority-queues-basic-operations-and-analysis>

#horizontalrule

== 1. Introduction and Definitions
<introduction-and-definitions>
- #strong[Priority Queue] is an abstract data type similar to a regular
  queue or stack but with an added #emph[priority] for each element.
- Elements are served based on their #strong[priority] rather than their
  order in the queue.
- Higher priority elements are dequeued before lower priority ones.
- If two elements have the same priority, they are served according to
  their order in the queue (usually FIFO for equal priority).

#strong[Types of Priority Queues:] \
\- #strong[Max-priority queue:] The element with the highest priority
(maximum key) is dequeued first. \
\- #strong[Min-priority queue:] The element with the lowest priority
(minimum key) is dequeued first.

#horizontalrule

== 2. Intuition and Working Principle
<intuition-and-working-principle>
- Imagine patients waiting in an emergency room.
- Each patient has a priority based on the severity of their condition.
- A patient with a higher severity level (priority) gets treated before
  those with less severe conditions, regardless of arrival time.
- The priority queue maintains this order dynamically on insertion and
  deletion.

#horizontalrule

== 3. Step-by-step Explanation with Example
<step-by-step-explanation-with-example>
Suppose we have a #strong[max-priority queue] with elements inserted as
follows:

#figure(
  align(center)[#table(
    columns: 2,
    align: (auto,auto,),
    table.header([Element], [Priority],),
    table.hline(),
    [A], [4],
    [B], [1],
    [C], [3],
    [D], [2],
  )]
  , kind: table
  )

#strong[Insertion:] \
\- Insert elements one by one along with their priorities.

#strong[Queue Status (After all insertions):] \
\- A(4), C(3), D(2), B(1)

#strong[Deletion (Extract max priority):] \
\- Remove element with highest priority (A with 4). - Queue after
deletion: C(3), D(2), B(1)

#horizontalrule

== 4. Pseudocode or Algorithm
<pseudocode-or-algorithm>
=== Basic operations:
<basic-operations>
=== Insert(PriorityQueue Q, Element x, Priority p)
<insertpriorityqueue-q-element-x-priority-p>
+ Insert x at the end of the queue.
+ Restore the priority order by "bubbling up" (for heap
  implementations).

=== ExtractMax(PriorityQueue Q)
<extractmaxpriorityqueue-q>
+ Remove the element with the highest priority (root in heap).
+ Replace root with the last element.
+ Restore heap property by "bubbling down".

#horizontalrule

#strong[Pseudocode (Max Priority Queue using Heap)]

```
Insert(Q, x):
    Q.size = Q.size + 1
    i = Q.size
    Q[i] = x
    while i > 1 and Q[parent(i)] < Q[i]:
        swap Q[i] and Q[parent(i)]
        i = parent(i)

ExtractMax(Q):
    if Q.size < 1:
        error "Queue underflow"
    max = Q[1]
    Q[1] = Q[Q.size]
    Q.size = Q.size - 1
    MaxHeapify(Q, 1)
    return max

MaxHeapify(Q, i):
    left = 2*i
    right = 2*i + 1
    largest = i
    if left <= Q.size and Q[left] > Q[i]:
        largest = left
    if right <= Q.size and Q[right] > Q[largest]:
        largest = right
    if largest != i:
        swap Q[i], Q[largest]
        MaxHeapify(Q, largest)
```

#horizontalrule

== 5. Code Implementation in C
<code-implementation-in-c>
```c
#include <stdio.h>
#define MAX 100

typedef struct {
    int data[MAX];
    int size;
} PriorityQueue;

// Helper function to get parent index
int parent(int i) {
    return i / 2;
}

// Helper function to get left child index
int leftChild(int i) {
    return 2 * i;
}

// Helper function to get right child index
int rightChild(int i) {
    return 2 * i + 1;
}

void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

void maxHeapify(PriorityQueue *pq, int i) {
    int left = leftChild(i);
    int right = rightChild(i);
    int largest = i;

    if(left <= pq->size && pq->data[left] > pq->data[largest])
        largest = left;

    if(right <= pq->size && pq->data[right] > pq->data[largest])
        largest = right;

    if(largest != i) {
        swap(&pq->data[i], &pq->data[largest]);
        maxHeapify(pq, largest);
    }
}

void insert(PriorityQueue *pq, int value) {
    if(pq->size == MAX - 1) {
        printf("Priority Queue overflow!\n");
        return;
    }
    pq->size++;
    pq->data[pq->size] = value;

    int i = pq->size;
    while(i > 1 && pq->data[parent(i)] < pq->data[i]) {
        swap(&pq->data[i], &pq->data[parent(i)]);
        i = parent(i);
    }
}

int extractMax(PriorityQueue *pq) {
    if(pq->size < 1) {
        printf("Priority Queue underflow!\n");
        return -1;
    }
    int max = pq->data[1];
    pq->data[1] = pq->data[pq->size];
    pq->size--;
    maxHeapify(pq, 1);
    return max;
}

int main() {
    PriorityQueue pq;
    pq.size = 0;

    // Insert elements
    insert(&pq, 4);
    insert(&pq, 1);
    insert(&pq, 3);
    insert(&pq, 2);

    printf("Max element extracted: %d\n", extractMax(&pq));
    printf("Max element extracted: %d\n", extractMax(&pq));

    return 0;
}
```

#horizontalrule

== 6. Time and Space Complexity Analysis
<time-and-space-complexity-analysis>
#figure(
  align(center)[#table(
    columns: (22.86%, 25.71%, 51.43%),
    align: (auto,auto,auto,),
    table.header([Operation], [Time Complexity], [Explanation],),
    table.hline(),
    [Insertion], [O(log n)], [Bubble up to restore heap property],
    [Extract-Max], [O(log n)], [Heapify operation after removal],
    [Peek (max)], [O(1)], [Access root directly],
    [Space], [O(n)], [To store n elements in the heap],
  )]
  , kind: table
  )

#horizontalrule

== 7. Real-world Applications
<real-world-applications>
- #strong[CPU scheduling:] Tasks are scheduled based on priority.
- #strong[Dijkstra's shortest path algorithm:] Uses priority queue to
  select minimum distance vertices.
- #strong[Huffman encoding:] Constructing the Huffman tree uses a
  priority queue.
- #strong[Operating Systems:] Managing jobs in print queues or disk
  scheduling.
- #strong[Event-driven simulation:] Events are managed based on their
  occurrence time.

#horizontalrule

== 8. Key Takeaways
<key-takeaways>
- Priority Queue orders elements by priority, not arrival time.
- Implemented efficiently using heaps (binary heap).
- Two common types: Max-priority queue and Min-priority queue.
- Supports primarily three operations: insert, extract-max/min, peek.
- Time complexity is efficient (O(log n)) in heap implementations.
- Useful in many algorithms and systems requiring prioritized
  processing.

#horizontalrule

== 9. Practice Questions or Problems
<practice-questions-or-problems>
+ Implement a #strong[min-priority queue] using a binary heap.
+ Write a function to increase the priority of an element in a priority
  queue.
+ Use a priority queue to sort an array (Heap Sort implementation).
+ Explain how a priority queue can be used in Dijkstra's algorithm for
  shortest paths.
+ Modify the priority queue implementation to store not just priorities
  but also associated data (like process ids or task info).
+ Design a real-world scenario where priority queue can be beneficial
  and implement a simple simulation.
+ Analyze and compare the priority queue implemented with an unsorted
  array, sorted array, and binary heap.

#horizontalrule

#emph[Space for diagrams and illustrations:]

- Diagram of Max-Heap structure representing priority queue.
- Step-wise illustration of insert and extract-max operations.
- Flowchart of priority queue operations.

#horizontalrule

End of notes for Priority Queues in Unit 2 - Stacks & Queues.
