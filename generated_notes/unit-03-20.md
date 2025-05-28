# PCC-CS301 : Data Structures and Algorithms with C  
## Unit 3: Linked Lists – Stack & Queue in Singly Linked List (SLL)

---

## 1. Introduction and Definitions

- **Linked List:** A dynamic data structure consisting of nodes, where each node contains data and a pointer/reference to the next node.
- **Stack:** A linear data structure following **LIFO** (Last In, First Out) principle.  
  - **Operations:** `push` (add), `pop` (remove), `peek` (top element)
- **Queue:** A linear data structure following **FIFO** (First In, First Out) principle.  
  - **Operations:** `enqueue` (add), `dequeue` (remove), `front` (first element)

**Singly Linked List (SLL):** Each node points to the next node only, making it a unidirectional chain.

---

## 2. Intuition and Working Principle

### Stack with SLL
- The **top** of the stack is the head of the linked list.
- When `push`ing, insert a node at the head.
- When `pop`ing, remove the node from the head.

### Queue with SLL
- Maintain two pointers: **front** and **rear**.
- `enqueue` adds a node at the **rear** (end of SLL).
- `dequeue` removes a node from the **front** (head of SLL).
- Linked list allows dynamic memory allocation, so the queue size is limited only by available memory.

---

## 3. Step-by-Step Explanation with Example

### Stack (using head insertion)
- Start with empty stack (`top = NULL`).
- **Push(10):** Create new node with data *10*, link it to `top`, update `top`.
- **Push(20):** New node with *20*, link to current `top` (which is 10), update `top`.
- Stack now: 20 (top) → 10 → NULL
- **Pop():** Remove node at `top` (20), update `top` to next node (10).

### Queue (using front and rear)
- Start with `front = rear = NULL`.
- **Enqueue(10):** Create node. Since queue empty, `front` and `rear` point to this node.
- **Enqueue(20):** Create new node with 20, set `rear->next` to new node, update `rear`.
- Queue now: 10 (front) → 20 → NULL
- **Dequeue():** Remove node at `front` (10), update `front` to `front->next`.

---

## 4. Pseudocode or Algorithm

### Stack Operations using SLL:

```
function push(stackTop, value):
    create newNode with data = value
    newNode.next = stackTop
    stackTop = newNode
    return stackTop

function pop(stackTop):
    if stackTop == NULL:
        print "Stack Underflow"
        return stackTop
    nodeToDelete = stackTop
    stackTop = stackTop.next
    free nodeToDelete
    return stackTop

function peek(stackTop):
    if stackTop == NULL:
        print "Stack is empty"
    else:
        print stackTop.data
```

---

### Queue Operations using SLL:

```
function enqueue(front, rear, value):
    create newNode with data = value and next = NULL
    if rear == NULL:
        front = rear = newNode
    else:
        rear.next = newNode
        rear = newNode
    return front, rear

function dequeue(front, rear):
    if front == NULL:
        print "Queue Underflow"
        return front, rear
    nodeToDelete = front
    front = front.next
    if front == NULL:
        rear = NULL
    free nodeToDelete
    return front, rear

function frontElement(front):
    if front == NULL:
        print "Queue is empty"
    else:
        print front.data
```

---

## 5. Code Implementation in C

```c
#include <stdio.h>
#include <stdlib.h>

// Node structure
typedef struct Node {
    int data;
    struct Node* next;
} Node;

// -------- Stack using SLL --------
Node* push(Node* top, int value) {
    Node* newNode = (Node*)malloc(sizeof(Node));
    if (!newNode) {
        printf("Memory allocation failed\n");
        return top;
    }
    newNode->data = value;
    newNode->next = top;
    return newNode;
}

Node* pop(Node* top) {
    if (top == NULL) {
        printf("Stack Underflow\n");
        return NULL;
    }
    Node* temp = top;
    top = top->next;
    printf("Popped: %d\n", temp->data);
    free(temp);
    return top;
}

void peek(Node* top) {
    if (top == NULL) {
        printf("Stack is empty\n");
    } else {
        printf("Top element: %d\n", top->data);
    }
}

// -------- Queue using SLL --------
typedef struct {
    Node* front;
    Node* rear;
} Queue;

Queue enqueue(Queue q, int value) {
    Node* newNode = (Node*)malloc(sizeof(Node));
    if (!newNode) {
        printf("Memory allocation failed\n");
        return q;
    }
    newNode->data = value;
    newNode->next = NULL;
    if (q.rear == NULL) {
        q.front = q.rear = newNode;
    } else {
        q.rear->next = newNode;
        q.rear = newNode;
    }
    return q;
}

Queue dequeue(Queue q) {
    if (q.front == NULL) {
        printf("Queue Underflow\n");
        return q;
    }
    Node* temp = q.front;
    q.front = q.front->next;
    if (q.front == NULL)
        q.rear = NULL;
    printf("Dequeued: %d\n", temp->data);
    free(temp);
    return q;
}

void frontElement(Queue q) {
    if (q.front == NULL) {
        printf("Queue is empty\n");
    } else {
        printf("Front element: %d\n", q.front->data);
    }
}

// -------- Main function for demonstration --------
int main() {
    // Stack demonstration
    Node* stackTop = NULL;
    stackTop = push(stackTop, 10);
    stackTop = push(stackTop, 20);
    peek(stackTop);
    stackTop = pop(stackTop);
    peek(stackTop);

    printf("\n");

    // Queue demonstration
    Queue q = {NULL, NULL};
    q = enqueue(q, 100);
    q = enqueue(q, 200);
    frontElement(q);
    q = dequeue(q);
    frontElement(q);

    return 0;
}
```

---

## 6. Time and Space Complexity Analysis

| Operation | Stack (using SLL) | Queue (using SLL) |
|-----------|-------------------|-------------------|
| Insertion | O(1) - push at head | O(1) - enqueue at tail |
| Deletion  | O(1) - pop from head | O(1) - dequeue from head |
| Search    | O(n)              | O(n)              |
| Space     | O(n), dynamic allocation | O(n), dynamic allocation |

---

## 7. Real-World Applications

- **Stack:**
  - Undo mechanisms in editors
  - Expression evaluation (infix/postfix)
  - Function call management (call stack)
- **Queue:**
  - CPU scheduling algorithms
  - Managing requests in servers/printers (FIFO)
  - Breadth-First Search (BFS) in graphs

---

## 8. Key Takeaways

- Stacks and queues can be efficiently implemented using singly linked lists.
- Stack operations (`push`/`pop`) work at the head of the linked list for simplicity and O(1) performance.
- Queue requires keeping track of both front and rear pointers for O(1) `enqueue` and `dequeue`.
- Linked list-based implementations are dynamic and do not require predefined size.
- Careful management of pointers and memory is necessary to avoid leaks.

---

## 9. Practice Questions or Problems

1. Implement a function to reverse a stack implemented using a singly linked list without using any additional data structure.
2. Write a program to check if a queue implemented using a singly linked list is palindrome or not.
3. Modify the queue implementation to include a `display()` function that shows all elements from front to rear.
4. Implement a priority queue using singly linked list.
5. Write functions to convert infix expressions to postfix using stack implemented with singly linked list.
6. Simulate a print queue using queue operations on a singly linked list.

---

*Insert diagrams illustrating stack push/pop operations and queue enqueue/dequeue operations here for better understanding.*