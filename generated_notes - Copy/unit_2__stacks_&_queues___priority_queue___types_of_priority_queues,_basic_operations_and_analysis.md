# PCC-CS301 : Data Structures and Algorithms with C  
## Unit 2: Stacks & Queues  
### Topic: Priority Queue - Types of Priority Queues, Basic Operations and Analysis

---

## 1. Introduction and Definitions

- **Priority Queue** is an abstract data type similar to a regular queue or stack but with an added *priority* for each element.
- Elements are served based on their **priority** rather than their order in the queue.
- Higher priority elements are dequeued before lower priority ones.
- If two elements have the same priority, they are served according to their order in the queue (usually FIFO for equal priority).

**Types of Priority Queues:**  
- **Max-priority queue:** The element with the highest priority (maximum key) is dequeued first.  
- **Min-priority queue:** The element with the lowest priority (minimum key) is dequeued first.

---

## 2. Intuition and Working Principle

- Imagine patients waiting in an emergency room.
- Each patient has a priority based on the severity of their condition.
- A patient with a higher severity level (priority) gets treated before those with less severe conditions, regardless of arrival time.
- The priority queue maintains this order dynamically on insertion and deletion.

---

## 3. Step-by-step Explanation with Example

Suppose we have a **max-priority queue** with elements inserted as follows:

| Element | Priority |
|---------|-----------|
| A       | 4         |
| B       | 1         |
| C       | 3         |
| D       | 2         |

**Insertion:**  
- Insert elements one by one along with their priorities.

**Queue Status (After all insertions):**  
- A(4), C(3), D(2), B(1)

**Deletion (Extract max priority):**  
- Remove element with highest priority (A with 4).
- Queue after deletion: C(3), D(2), B(1)

---

## 4. Pseudocode or Algorithm

### Basic operations:

### Insert(PriorityQueue Q, Element x, Priority p)
1. Insert x at the end of the queue.
2. Restore the priority order by "bubbling up" (for heap implementations).

### ExtractMax(PriorityQueue Q)
1. Remove the element with the highest priority (root in heap).
2. Replace root with the last element.
3. Restore heap property by "bubbling down".

---

**Pseudocode (Max Priority Queue using Heap)**

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

---

## 5. Code Implementation in C

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

---

## 6. Time and Space Complexity Analysis

| Operation      | Time Complexity  | Explanation                          |
|----------------|------------------|------------------------------------|
| Insertion      | O(log n)         | Bubble up to restore heap property |
| Extract-Max    | O(log n)         | Heapify operation after removal    |
| Peek (max)     | O(1)             | Access root directly                |
| Space          | O(n)             | To store n elements in the heap    |

---

## 7. Real-world Applications

- **CPU scheduling:** Tasks are scheduled based on priority.
- **Dijkstra’s shortest path algorithm:** Uses priority queue to select minimum distance vertices.
- **Huffman encoding:** Constructing the Huffman tree uses a priority queue.
- **Operating Systems:** Managing jobs in print queues or disk scheduling.
- **Event-driven simulation:** Events are managed based on their occurrence time.

---

## 8. Key Takeaways

- Priority Queue orders elements by priority, not arrival time.
- Implemented efficiently using heaps (binary heap).
- Two common types: Max-priority queue and Min-priority queue.
- Supports primarily three operations: insert, extract-max/min, peek.
- Time complexity is efficient (O(log n)) in heap implementations.
- Useful in many algorithms and systems requiring prioritized processing.

---

## 9. Practice Questions or Problems

1. Implement a **min-priority queue** using a binary heap.
2. Write a function to increase the priority of an element in a priority queue.
3. Use a priority queue to sort an array (Heap Sort implementation).
4. Explain how a priority queue can be used in Dijkstra's algorithm for shortest paths.
5. Modify the priority queue implementation to store not just priorities but also associated data (like process ids or task info).
6. Design a real-world scenario where priority queue can be beneficial and implement a simple simulation.
7. Analyze and compare the priority queue implemented with an unsorted array, sorted array, and binary heap.

---

*Space for diagrams and illustrations:*

- Diagram of Max-Heap structure representing priority queue.
- Step-wise illustration of insert and extract-max operations.
- Flowchart of priority queue operations.

---

End of notes for Priority Queues in Unit 2 - Stacks & Queues.