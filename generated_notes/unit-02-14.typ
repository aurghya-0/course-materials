= PCC-CS301 : Data Structures and Algorithms with C
<pcc-cs301-data-structures-and-algorithms-with-c>
== Unit 2: Stacks & Queues
<unit-2-stacks-queues>
=== Topic: Simple & Circular Queue - Circular Queue: Need, Implementation, Algorithm, Complexity
<topic-simple-circular-queue---circular-queue-need-implementation-algorithm-complexity>

#horizontalrule

== 1. Introduction and Definitions
<introduction-and-definitions>
- #strong[Queue];: A linear data structure following #strong[FIFO]
  (First-In-First-Out) principle. \
- #strong[Simple Queue (Linear Queue)];: Queue implemented with an
  array/linked list where the front moves forward as elements are
  dequeued. \
- #strong[Circular Queue];: A queue where the last position is connected
  back to the first position to make a circle.

=== Why Circular Queue?
<why-circular-queue>
- In a simple queue implemented as an array, when the rear reaches the
  end, even if there are free spaces at the front (due to dequeued
  elements), new elements cannot be added. \
- Circular queue solves this #strong[space wastage] by treating the
  array as circular and reusing empty spaces.

#horizontalrule

== 2. Intuition and Working Principle
<intuition-and-working-principle>
- Imagine a circular track of fixed size where runners (elements) run
  around continuously. \
- When new runners need to enter, they take the next empty position on
  the track even if at the "end" of the array. \
- Two pointers:
  - #strong[front];: points to the first element. \
  - #strong[rear];: points to the last element. \
- Both pointers wrap around to the beginning when they reach the array's
  end.

#horizontalrule

== 3. Step-by-Step Explanation with Example
<step-by-step-explanation-with-example>
#figure(
  align(center)[#table(
    columns: (11.11%, 11.11%, 11.11%, 11.11%, 11.11%, 11.11%, 11.11%, 11.11%, 11.11%),
    align: (auto,auto,auto,auto,auto,auto,auto,auto,auto,),
    table.header([Initial State], [Insert 10], [Insert 20], [Insert
      30], [Delete], [Insert 40], [Insert 50], [Delete], [Insert 60],),
    table.hline(),
    [front = -1, rear = -1], [front=0, rear=0 (10)], [rear=1
    (20)], [rear=2 (30)], [front=1(20,30)], [rear=3 (40)], [rear=4
    (50)], [front=2 (30,40,50)], [rear=0 (60) - wrap],
  )]
  , kind: table
  )

- #strong[Insert 10:] First element, front and rear both start at 0. \
- #strong[Insert 20, 30:] rear moves forward. \
- #strong[Delete:] front moves forward, element at front is removed. \
- When rear reaches end (index 4), wrap around to 0 if space is
  available.

#emph[Diagram space here for circular array visualization.]

#horizontalrule

== 4. Pseudocode or Algorithm
<pseudocode-or-algorithm>
=== Enqueue (Insert an element)
<enqueue-insert-an-element>
```
1. IF ( (rear + 1) % size == front )
       Queue is Full  (Overflow)
2. ELSE IF front == -1 
       front = rear = 0
3. ELSE
       rear = (rear + 1) % size
4. queue[rear] = element
```

=== Dequeue (Remove an element)
<dequeue-remove-an-element>
```
1. IF front == -1
       Queue is Empty (Underflow)
2. element = queue[front]
3. IF front == rear
       front = rear = -1     // Queue becomes empty
4. ELSE
       front = (front + 1) % size
5. RETURN element
```

#horizontalrule

== 5. Code Implementation in C
<code-implementation-in-c>
```c
#include <stdio.h>
#define SIZE 5

int queue[SIZE];
int front = -1, rear = -1;

// Check if queue is full
int isFull() {
    return ((rear + 1) % SIZE == front);
}

// Check if queue is empty
int isEmpty() {
    return (front == -1);
}

// Enqueue operation
void enqueue(int element) {
    if (isFull()) {
        printf("Queue Overflow! Cannot insert %d\n", element);
        return;
    }
    if (front == -1) // first element
        front = 0;
    rear = (rear + 1) % SIZE;
    queue[rear] = element;
    printf("Inserted %d\n", element);
}

// Dequeue operation
int dequeue() {
    if (isEmpty()) {
        printf("Queue Underflow! Cannot dequeue.\n");
        return -1;
    }
    int element = queue[front];
    if (front == rear) {
        // Queue has only one element
        front = -1;
        rear = -1;
    } else {
        front = (front + 1) % SIZE;
    }
    return element;
}

// Display queue elements
void display() {
    if (isEmpty()) {
        printf("Queue is empty.\n");
        return;
    }
    printf("Queue elements: ");
    int i = front;
    while(1) {
        printf("%d ", queue[i]);
        if (i == rear)
            break;
        i = (i + 1) % SIZE;
    }
    printf("\n");
}

int main() {
    enqueue(10);
    enqueue(20);
    enqueue(30);
    enqueue(40);
    enqueue(50);  // Should show overflow
    display();

    printf("Dequeued: %d\n", dequeue());
    printf("Dequeued: %d\n", dequeue());

    enqueue(60);
    enqueue(70);

    display();

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
    [Enqueue], [O(1)], [O(1)],
    [Dequeue], [O(1)], [O(1)],
    [Display], [O(n)], [O(1)],
  )]
  , kind: table
  )

- Fixed size array of length `SIZE` used. \
- No shifting of elements required as in simple queue.

#horizontalrule

== 7. Real-world Applications
<real-world-applications>
- #strong[CPU scheduling] (Round Robin algorithm) to cycle through
  processes. \
- #strong[Traffic systems];, e.g., managing cars at a roundabout. \
- #strong[Memory management];, circular buffers for IO Buffers. \
- #strong[Streaming data];, e.g., music or video players buffer.

#horizontalrule

== 8. Key Takeaways
<key-takeaways>
- Circular queue efficiently uses array space by reusing empty
  positions. \
- Helps avoid "false overflow" in linear queue implementations. \
- Enqueue and Dequeue operations are constant time O(1). \
- Requires careful modulo arithmetic to maintain the wrap-around
  property. \
- Use special condition `(rear + 1) % size == front` to detect full
  queue.

#horizontalrule

== 9. Practice Questions or Problems
<practice-questions-or-problems>
+ Implement a circular queue using linked lists. \
+ Modify the above code to dynamically resize the queue when full. \
+ Write a program to reverse elements in a circular queue. \
+ Demonstrate the circular queue operations with a queue size of 3 for
  the following sequence: enqueue(5), enqueue(10), dequeue(),
  enqueue(15), enqueue(20), enqueue(25), dequeue(), enqueue(30). \
+ Explain and implement a priority queue using circular queues.

#horizontalrule

#emph[Insert diagrams of Circular Queue structure, pointer movements,
and examples at appropriate sections.]
