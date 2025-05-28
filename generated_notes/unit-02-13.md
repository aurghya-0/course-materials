# Unit 2: Stacks & Queues  
## Topic: Queue ADT - Introduction, Enqueue, Dequeue Operations (Array-Based Implementation)

---

## 1. Introduction and Definitions  
- **Queue**: A linear data structure that follows *FIFO* (First In, First Out) principle.  
- **Abstract Data Type (ADT)**: Queue ADT defines the operations without specifying implementation details.  
- **Basic operations**:  
  - **Enqueue**: Insert an element at the rear (end) of the queue.  
  - **Dequeue**: Remove an element from the front (beginning) of the queue.  
- Other important terms:  
  - **Front**: Points to the element to be dequeued next.  
  - **Rear**: Points to the most recently added element.

---

## 2. Intuition and Working Principle  
- Queue is like a **line** or waiting list.  
- The first person to join the queue is the first to leave — *First In, First Out*.  
- Think of a queue as holding items in order, where new items join at one end (rear), and items are removed from the other (front).  
- In an **array-based implementation**, the queue uses a fixed-size array to store elements, and two indices (`front`, `rear`) track where to remove or add elements.  
- When elements are dequeued, `front` moves forward; when enqueued, `rear` moves forward.

---

## 3. Step-by-Step Explanation with Example  

Let's start with an empty queue of size 5:

| Index | 0 | 1 | 2 | 3 | 4 |  
|-------|---|---|---|---|---|  
|Value  |   |   |   |   |   |  

- Initially: `front = -1`, `rear = -1` (queue empty).

### Enqueue 10:
- Since queue is empty:  
  - Set `front = 0`  
  - `rear = 0`  
  - Insert 10 at `arr[rear]`  
    
| Index | 0  | 1 | 2 | 3 | 4 |  
|-------|----|---|---|---|---|  
|Value  | 10 |   |   |   |   |  

### Enqueue 20:
- `rear = rear + 1 = 1`  
- Insert 20 at `arr[1]`  

| Index | 0  | 1  | 2 | 3 | 4 |  
|-------|----|----|---|---|---|  
|Value  | 10 | 20 |   |   |   |  

### Dequeue (remove 10):
- Remove element at `front = 0` (which is 10).  
- Increment `front` to 1.  

| Index | 0  | 1  | 2 | 3 | 4 |  
|-------|----|----|---|---|---|  
|Value  |    | 20 |   |   |   |  

Now `front = 1`, `rear = 1`.

### Enqueue 30:
- `rear = 2`  
- Insert 30 at `arr[2]`.

| Index | 0  | 1  | 2  | 3 | 4 |  
|-------|----|----|----|---|---|  
|Value  |    | 20 | 30 |   |   |  

---

## 4. Pseudocode or Algorithm  

### Initialization  
```  
front = -1  
rear = -1  
maxSize = N   // size of queue array  
```

### Enqueue(element)  
```  
if rear == maxSize - 1 then  
    print "Queue Overflow"  
else  
    if front == -1 then  
        front = 0  
    rear = rear + 1  
    arr[rear] = element  
```

### Dequeue()  
```  
if front == -1 or front > rear then  
    print "Queue Underflow"  
else  
    element = arr[front]  
    front = front + 1  
    return element  
```

---

## 5. Code Implementation in C

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

---

## 6. Time and Space Complexity Analysis  

| Operation | Worst Case Time Complexity | Space Complexity          |
|-----------|----------------------------|--------------------------|
| Enqueue   | O(1)                       | O(1) (for each insert)   |
| Dequeue   | O(1)                       | O(1) (for each removal)  |
| Space     | -                          | O(n) total for queue array |

- Both enqueue and dequeue are performed in constant time `O(1)` because they involve moving indices and simple assignments.  
- The space complexity is linear in the size of the queue.

---

## 7. Real-world Applications  
- **CPU Scheduling**: Processes waiting for CPU time are maintained in queues.  
- **Breadth-First Search (BFS)** in graphs: Uses a queue to track next nodes to visit.  
- **Print Queue**: Documents waiting to be printed are enqueued and dequeued in order.  
- **Call Center Systems**: Calls are handled in a queue order.  
- **Traffic Management**: Vehicles wait in line, similar to queue behavior.

---

## 8. Key Takeaways  
- Queue follows FIFO principle: first element added is first removed.  
- Enqueue operation adds to the rear; dequeue removes from front.  
- Array-based queue uses `front` and `rear` pointers to manage elements.  
- Be cautious of overflow (when queue is full) and underflow (when queue is empty).  
- Simple implementation but has limitations such as unused spaces after many dequeues (can be improved with circular queue).  
- Both enqueue and dequeue run in O(1) time.

---

## 9. Practice Questions or Problems  

1. Write a program to implement a queue using arrays with functions for enqueue, dequeue, and display.  
2. Modify the above program to implement a circular queue to utilize array space efficiently.  
3. Trace the queue operations for the sequence: enqueue(5), enqueue(10), dequeue(), enqueue(15), dequeue(), enqueue(20). Show the status of queue after each operation.  
4. Can a queue be implemented using two stacks? Write the algorithm or code logic.  
5. Implement a program that uses a queue to simulate a printer spooling system.

---

*[Insert relevant diagrams or flowcharts here to illustrate enqueue and dequeue steps]*