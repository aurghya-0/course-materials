= PCC-CS301 : Data Structures and Algorithms with C
<pcc-cs301-data-structures-and-algorithms-with-c>
== Unit 2: Stacks & Queues
<unit-2-stacks-queues>
=== Topic: Stack ADT & Operations - Definition, push, pop, peek with stack implementation using arrays
<topic-stack-adt-operations---definition-push-pop-peek-with-stack-implementation-using-arrays>

#horizontalrule

== 1. Introduction and Definitions
<introduction-and-definitions>
- #strong[Stack] is a linear data structure that follows the
  #strong[Last In First Out (LIFO)] principle.
- It means the last element added (pushed) to the stack is the first one
  to be removed (popped).
- #strong[Abstract Data Type (ADT)] for Stack defines the operations
  without specifying implementation details.

=== Common Stack Operations:
<common-stack-operations>
- #strong[push(x):] Add element `x` to the top of the stack.
- #strong[pop():] Remove the top element from the stack and return it.
- #strong[peek() / top():] Return the top element without removing it.
- #strong[isEmpty():] Check if the stack is empty.
- #strong[isFull():] (Optional for array implementation) Check if the
  stack is full.

#horizontalrule

== 2. Intuition and Working Principle
<intuition-and-working-principle>
- Think of a stack like a stack of plates:
  - You can only add or remove a plate from the top.
- Only the #strong[top element] is accessible at any time.
- When you push, the top moves up.
- When you pop, the top moves down.
- This strict access method makes stacks useful for tasks like undo
  functionality, syntax parsing, etc.

#horizontalrule

== 3. Step-by-Step Explanation with Example
<step-by-step-explanation-with-example>
Suppose we have an empty stack with max size 5:

#figure(
  align(center)[#table(
    columns: (13.25%, 43.37%, 43.37%),
    align: (auto,auto,auto,),
    table.header([Operation], [Stack Contents (top on
      right)], [Explanation],),
    table.hline(),
    [push(10)], [10], [Insert 10 as the first element],
    [push(20)], [10, 20], [Insert 20 on top of 10],
    [peek()], [10, 20], [Returns 20 (top element)],
    [pop()], [10], [Remove 20 from the stack],
    [pop()], [(empty)], [Remove 10, stack is now empty],
    [pop()], [(empty)], [Stack underflow error (nothing to pop)],
  )]
  , kind: table
  )

#horizontalrule

== 4. Pseudocode or Algorithm
<pseudocode-or-algorithm>
=== Initialize Stack
<initialize-stack>
```
MAX_SIZE = N
stack = array of size N
top = -1  // stack is empty
```

=== push(x)
<pushx>
```
if top == MAX_SIZE - 1:
    print "Stack Overflow"
else:
    top = top + 1
    stack[top] = x
```

=== pop()
<pop>
```
if top == -1:
    print "Stack Underflow"
else:
    x = stack[top]
    top = top - 1
    return x
```

=== peek()
<peek>
```
if top == -1:
    print "Stack is empty"
else:
    return stack[top]
```

#horizontalrule

== 5. Code Implementation in C
<code-implementation-in-c>
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

#horizontalrule

== 6. Time and Space Complexity Analysis
<time-and-space-complexity-analysis>
#figure(
  align(center)[#table(
    columns: 3,
    align: (auto,auto,auto,),
    table.header([Operation], [Time Complexity], [Space Complexity],),
    table.hline(),
    [push], [O(1)], [O(1)],
    [pop], [O(1)], [O(1)],
    [peek], [O(1)], [O(1)],
    [Overall space used by stack], [\-], [O(n) (n = max size of stack)],
  )]
  , kind: table
  )

- Operations are constant time due to direct index manipulation.
- The stack uses a fixed-size array resulting in fixed space overhead.

#horizontalrule

== 7. Real-World Applications
<real-world-applications>
- #strong[Expression evaluation and syntax parsing:] Converting infix
  expressions to postfix.
- #strong[Function call management:] Call stack in program execution and
  recursion.
- #strong[Undo mechanisms:] In text editors or software, tracking
  changes.
- #strong[Backtracking algorithms:] Like maze solving or puzzles.
- #strong[Browser history navigation:] Forward and backward buttons.

#horizontalrule

== 8. Key Takeaways
<key-takeaways>
- Stack is a LIFO linear data structure.
- Only operations on the #strong[top] element are allowed.
- Push adds, pop removes, and peek views the top element.
- Array-based stack has fixed size; watch out for overflow and
  underflow.
- Stack operations are simple and efficient with O(1) time complexity.
- Used extensively in both system and application-level programming.

#horizontalrule

== 9. Practice Questions or Problems
<practice-questions-or-problems>
+ Implement a stack using arrays with dynamic resizing when full.
+ Write a program to check for balanced parentheses in an expression
  using a stack.
+ Convert an infix expression to a postfix expression using stack
  operations.
+ Simulate stack operations and detect overflow and underflow
  occurrences.
+ Implement a function to reverse a string using a stack.
+ Modify the stack to track the minimum element in O(1) time.
+ Create a stack menu-driven program with options for push, pop, peek,
  and display all elements.
+ Extend the stack implementation using linked list instead of arrays.

#horizontalrule

#strong[\[Insert Diagrams Here\]] \
#emph[(Examples: Stack illustration, push/pop animations, expression
evaluation chart)]
