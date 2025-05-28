= Unit 2: Stacks & Queues
<unit-2-stacks-queues>
== Topic: Queue ADT - Introduction, Enqueue, Dequeue Operations (Array-Based Implementation)
<topic-queue-adt---introduction-enqueue-dequeue-operations-array-based-implementation>

#horizontalrule

== 1. Introduction and Definitions
<introduction-and-definitions>
- #strong[Queue];: A linear data structure that follows #emph[FIFO]
  (First In, First Out) principle. \
- #strong[Abstract Data Type (ADT)];: Queue ADT defines the operations
  without specifying implementation details. \
- #strong[Basic operations];:
  - #strong[Enqueue];: Insert an element at the rear (end) of the queue.
    \
  - #strong[Dequeue];: Remove an element from the front (beginning) of
    the queue. \
- Other important terms:
  - #strong[Front];: Points to the element to be dequeued next. \
  - #strong[Rear];: Points to the most recently added element.

#horizontalrule

== 2. Intuition and Working Principle
<intuition-and-working-principle>
- Queue is like a #strong[line] or waiting list. \
- The first person to join the queue is the first to leave ---
  #emph[First In, First Out];. \
- Think of a queue as holding items in order, where new items join at
  one end (rear), and items are removed from the other (front). \
- In an #strong[array-based implementation];, the queue uses a
  fixed-size array to store elements, and two indices (`front`, `rear`)
  track where to remove or add elements. \
- When elements are dequeued, `front` moves forward; when enqueued,
  `rear` moves forward.

#horizontalrule

== 3. Step-by-Step Explanation with Example
<step-by-step-explanation-with-example>
Let's start with an empty queue of size 5:

#figure(
  align(center)[#table(
    columns: 6,
    align: (auto,auto,auto,auto,auto,auto,),
    table.header([Index], [0], [1], [2], [3], [4],),
    table.hline(),
    [Value], [], [], [], [], [],
  )]
  , kind: table
  )

- Initially: `front = -1`, `rear = -1` (queue empty).

=== Enqueue 10:
<enqueue-10>
- Since queue is empty:
  - Set `front = 0` \
  - `rear = 0` \
  - Insert 10 at `arr[rear]`

#figure(
  align(center)[#table(
    columns: 6,
    align: (auto,auto,auto,auto,auto,auto,),
    table.header([Index], [0], [1], [2], [3], [4],),
    table.hline(),
    [Value], [10], [], [], [], [],
  )]
  , kind: table
  )

=== Enqueue 20:
<enqueue-20>
- `rear = rear + 1 = 1` \
- Insert 20 at `arr[1]`

#figure(
  align(center)[#table(
    columns: 6,
    align: (auto,auto,auto,auto,auto,auto,),
    table.header([Index], [0], [1], [2], [3], [4],),
    table.hline(),
    [Value], [10], [20], [], [], [],
  )]
  , kind: table
  )

=== Dequeue (remove 10):
<dequeue-remove-10>
- Remove element at `front = 0` (which is 10). \
- Increment `front` to 1.

#figure(
  align(center)[#table(
    columns: 6,
    align: (auto,auto,auto,auto,auto,auto,),
    table.header([Index], [0], [1], [2], [3], [4],),
    table.hline(),
    [Value], [], [20], [], [], [],
  )]
  , kind: table
  )

Now `front = 1`, `rear = 1`.

=== Enqueue 30:
<enqueue-30>
- `rear = 2` \
- Insert 30 at `arr[2]`.

#figure(
  align(center)[#table(
    columns: 6,
    align: (auto,auto,auto,auto,auto,auto,),
    table.header([Index], [0], [1], [2], [3], [4],),
    table.hline(),
    [Value], [], [20], [30], [], [],
  )]
  , kind: table
  )

#horizontalrule

== 4. Pseudocode or Algorithm
<pseudocode-or-algorithm>
=== Initialization
<initialization>
```
front = -1  
rear = -1  
maxSize = N   // size of queue array  
```

=== Enqueue(element)
<enqueueelement>
```
if rear == maxSize - 1 then  
    print "Queue Overflow"  
else  
    if front == -1 then  
        front = 0  
    rear = rear + 1  
    arr[rear] = element  
```

=== Dequeue()
<dequeue>
```
if front == -1 or front > rear then  
    print "Queue Underflow"  
else  
    element = arr[front]  
    front = front + 1  
    return element  
```

#horizontalrule

== 5. Code Implementation in C
<code-implementation-in-c>
```c
#include <stdio.h>
#define MAX 5

int queue[MAX];
int front = -1, rear = -1;

void enqueue(int element) {
    if (rear == MAX - 1) {
        printf("Queue Overflow\n");
    } else {
        if (front == -1) {  // first element inserted
            front = 0;
        }
        rear++;
        queue[rear] = element;
        printf("%d enqueued to queue\n", element);
    }
}

int dequeue() {
    if (front == -1 || front > rear) {
        printf("Queue Underflow\n");
        return -1;
    } else {
        int element = queue[front];
        front++;
        
        // Reset queue when empty
        if (front > rear) {
            front = rear = -1;
        }
        return element;
    }
}

void display() {
    if (front == -1) {
        printf("Queue is empty\n");
    } else {
        printf("Queue elements: ");
        for (int i = front; i <= rear; i++) {
            printf("%d ", queue[i]);
        }
        printf("\n");
    }
}

int main() {
    enqueue(10);
    enqueue(20);
    enqueue(30);
    display();
    
    printf("Dequeued: %d\n", dequeue());
    display();
    
    enqueue(40);
    enqueue(50);
    enqueue(60);  // This should show overflow
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
    table.header([Operation], [Worst Case Time Complexity], [Space
      Complexity],),
    table.hline(),
    [Enqueue], [O(1)], [O(1) (for each insert)],
    [Dequeue], [O(1)], [O(1) (for each removal)],
    [Space], [\-], [O(n) total for queue array],
  )]
  , kind: table
  )

- Both enqueue and dequeue are performed in constant time `O(1)` because
  they involve moving indices and simple assignments. \
- The space complexity is linear in the size of the queue.

#horizontalrule

== 7. Real-world Applications
<real-world-applications>
- #strong[CPU Scheduling];: Processes waiting for CPU time are
  maintained in queues. \
- #strong[Breadth-First Search (BFS)] in graphs: Uses a queue to track
  next nodes to visit. \
- #strong[Print Queue];: Documents waiting to be printed are enqueued
  and dequeued in order. \
- #strong[Call Center Systems];: Calls are handled in a queue order. \
- #strong[Traffic Management];: Vehicles wait in line, similar to queue
  behavior.

#horizontalrule

== 8. Key Takeaways
<key-takeaways>
- Queue follows FIFO principle: first element added is first removed. \
- Enqueue operation adds to the rear; dequeue removes from front. \
- Array-based queue uses `front` and `rear` pointers to manage elements.
  \
- Be cautious of overflow (when queue is full) and underflow (when queue
  is empty). \
- Simple implementation but has limitations such as unused spaces after
  many dequeues (can be improved with circular queue). \
- Both enqueue and dequeue run in O(1) time.

#horizontalrule

== 9. Practice Questions or Problems
<practice-questions-or-problems>
+ Write a program to implement a queue using arrays with functions for
  enqueue, dequeue, and display. \
+ Modify the above program to implement a circular queue to utilize
  array space efficiently. \
+ Trace the queue operations for the sequence: enqueue(5), enqueue(10),
  dequeue(), enqueue(15), dequeue(), enqueue(20). Show the status of
  queue after each operation. \
+ Can a queue be implemented using two stacks? Write the algorithm or
  code logic. \
+ Implement a program that uses a queue to simulate a printer spooling
  system.

#horizontalrule

#emph[\[Insert relevant diagrams or flowcharts here to illustrate
enqueue and dequeue steps\]]
