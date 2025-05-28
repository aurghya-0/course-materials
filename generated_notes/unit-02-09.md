# PCC-CS301 : Data Structures and Algorithms with C  
## Unit 2: Stacks & Queues  
### Topic: Stack ADT & Operations - Definition, push, pop, peek with stack implementation using arrays

---

## 1. Introduction and Definitions

- **Stack** is a linear data structure that follows the **Last In First Out (LIFO)** principle.
- It means the last element added (pushed) to the stack is the first one to be removed (popped).
- **Abstract Data Type (ADT)** for Stack defines the operations without specifying implementation details.
  
### Common Stack Operations:
- **push(x):** Add element `x` to the top of the stack.
- **pop():** Remove the top element from the stack and return it.
- **peek() / top():** Return the top element without removing it.
- **isEmpty():** Check if the stack is empty.
- **isFull():** (Optional for array implementation) Check if the stack is full.

---

## 2. Intuition and Working Principle

- Think of a stack like a stack of plates:
  - You can only add or remove a plate from the top.
- Only the **top element** is accessible at any time.
- When you push, the top moves up.
- When you pop, the top moves down.
- This strict access method makes stacks useful for tasks like undo functionality, syntax parsing, etc.

---

## 3. Step-by-Step Explanation with Example

Suppose we have an empty stack with max size 5:

| Operation | Stack Contents (top on right)       | Explanation                          |
|-----------|------------------------------------|------------------------------------|
| push(10)  | 10                                 | Insert 10 as the first element     |
| push(20)  | 10, 20                             | Insert 20 on top of 10              |
| peek()    | 10, 20                             | Returns 20 (top element)            |
| pop()     | 10                                 | Remove 20 from the stack            |
| pop()     | (empty)                           | Remove 10, stack is now empty       |
| pop()     | (empty)                           | Stack underflow error (nothing to pop)|

---

## 4. Pseudocode or Algorithm

### Initialize Stack

```
MAX_SIZE = N
stack = array of size N
top = -1  // stack is empty
```

### push(x)

```
if top == MAX_SIZE - 1:
    print "Stack Overflow"
else:
    top = top + 1
    stack[top] = x
```

### pop()

```
if top == -1:
    print "Stack Underflow"
else:
    x = stack[top]
    top = top - 1
    return x
```

### peek()

```
if top == -1:
    print "Stack is empty"
else:
    return stack[top]
```

---

## 5. Code Implementation in C

```c
#include <stdio.h>
#define MAX 5

int stack[MAX];
int top = -1;

// Function to add element to stack
void push(int x) {
    if (top == MAX - 1) {
        printf("Stack Overflow! Cannot push %d\n", x);
    } else {
        top++;
        stack[top] = x;
        printf("%d pushed to stack\n", x);
    }
}

// Function to remove element from stack
int pop() {
    if (top == -1) {
        printf("Stack Underflow! Nothing to pop.\n");
        return -1;  // Returning -1 to indicate empty stack
    } else {
        int popped = stack[top];
        top--;
        return popped;
    }
}

// Function to return top element
int peek() {
    if (top == -1) {
        printf("Stack is empty\n");
        return -1;
    } else {
        return stack[top];
    }
}

// Function to check if stack is empty
int isEmpty() {
    return top == -1;
}

int main() {
    push(10);
    push(20);
    push(30);

    printf("Top element is %d\n", peek());

    printf("%d popped from stack\n", pop());
    printf("Top element now is %d\n", peek());

    return 0;
}
```

---

## 6. Time and Space Complexity Analysis

| Operation | Time Complexity | Space Complexity |
|-----------|-----------------|------------------|
| push      | O(1)            | O(1)             |
| pop       | O(1)            | O(1)             |
| peek      | O(1)            | O(1)             |
| Overall space used by stack | - | O(n) (n = max size of stack) |

- Operations are constant time due to direct index manipulation.
- The stack uses a fixed-size array resulting in fixed space overhead.

---

## 7. Real-World Applications

- **Expression evaluation and syntax parsing:** Converting infix expressions to postfix.
- **Function call management:** Call stack in program execution and recursion.
- **Undo mechanisms:** In text editors or software, tracking changes.
- **Backtracking algorithms:** Like maze solving or puzzles.
- **Browser history navigation:** Forward and backward buttons.

---

## 8. Key Takeaways

- Stack is a LIFO linear data structure.
- Only operations on the **top** element are allowed.
- Push adds, pop removes, and peek views the top element.
- Array-based stack has fixed size; watch out for overflow and underflow.
- Stack operations are simple and efficient with O(1) time complexity.
- Used extensively in both system and application-level programming.

---

## 9. Practice Questions or Problems

1. Implement a stack using arrays with dynamic resizing when full.
2. Write a program to check for balanced parentheses in an expression using a stack.
3. Convert an infix expression to a postfix expression using stack operations.
4. Simulate stack operations and detect overflow and underflow occurrences.
5. Implement a function to reverse a string using a stack.
6. Modify the stack to track the minimum element in O(1) time.
7. Create a stack menu-driven program with options for push, pop, peek, and display all elements.
8. Extend the stack implementation using linked list instead of arrays.

---

**[Insert Diagrams Here]**  
_(Examples: Stack illustration, push/pop animations, expression evaluation chart)_