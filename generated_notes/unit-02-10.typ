= PCC-CS301 : Data Structures and Algorithms with C
<pcc-cs301-data-structures-and-algorithms-with-c>
== Unit 2: Stacks & Queues
<unit-2-stacks-queues>
=== Topic: Stack - Complexity - Algorithm Walkthrough and Complexity Analysis
<topic-stack---complexity---algorithm-walkthrough-and-complexity-analysis>

#horizontalrule

== 1. Introduction and Definitions
<introduction-and-definitions>
- #strong[Stack];: A stack is a linear data structure that follows the
  #strong[LIFO] (Last In, First Out) principle. \
- Elements can be added or removed only from one end, called the
  #strong[top];. \
- Common operations:
  - #strong[push()];: Add an element to the top. \
  - #strong[pop()];: Remove the top element. \
  - #strong[peek() or top()];: View the top element without removing it.
    \
  - #strong[isEmpty()];: Check if the stack is empty. \
  - #strong[isFull()];: (optional, for fixed size stacks) Check if the
    stack is full.

#horizontalrule

== 2. Intuition and Working Principle
<intuition-and-working-principle>
- Imagine a stack of plates:
  - You can only add a plate to the top (push). \
  - You can only take the top plate off (pop). \
- This ordering helps solve problems like balanced parentheses, undo
  operations, recursion management, etc. \
- Because of the LIFO nature, the last element pushed will be the first
  popped.

#horizontalrule

== 3. Step-by-Step Explanation with Example
<step-by-step-explanation-with-example>
#strong[Example: Push 10, 20, 30 and then pop two elements]

#figure(
  align(center)[#table(
    columns: 3,
    align: (auto,auto,auto,),
    table.header([Operation], [Stack Content], [Explanation],),
    table.hline(),
    [push(10)], [\[10\]], [10 added at the top],
    [push(20)], [\[10, 20\]], [20 now at the top],
    [push(30)], [\[10, 20, 30\]], [30 now at the top],
    [pop()], [\[10, 20\]], [30 removed],
    [pop()], [\[10\]], [20 removed],
  )]
  , kind: table
  )

#emph[Note:] The last inserted element (30) is the first to be removed
(popped).

#horizontalrule

== 4. Pseudocode or Algorithm
<pseudocode-or-algorithm>
=== Push Operation
<push-operation>
```
procedure PUSH(stack, element)
    if stack is full
        print "Stack Overflow"
    else
        top = top + 1
        stack[top] = element
end procedure
```

=== Pop Operation
<pop-operation>
```
procedure POP(stack)
    if stack is empty
        print "Stack Underflow"
        return NULL
    else
        element = stack[top]
        top = top - 1
        return element
end procedure
```

=== Peek Operation
<peek-operation>
```
procedure PEEK(stack)
    if stack is empty
        print "Stack is empty"
        return NULL
    else
        return stack[top]
end procedure
```

#horizontalrule

== 5. Code Implementation in C
<code-implementation-in-c>
```c
#include <stdio.h>
#define MAX 100

typedef struct {
    int arr[MAX];
    int top;
} Stack;

void init(Stack *s) {
    s->top = -1;
}

int isEmpty(Stack *s) {
    return s->top == -1;
}

int isFull(Stack *s) {
    return s->top == MAX - 1;
}

void push(Stack *s, int value) {
    if (isFull(s)) {
        printf("Stack Overflow\n");
        return;
    }
    s->arr[++(s->top)] = value;
    printf("Pushed %d to stack\n", value);
}

int pop(Stack *s) {
    if (isEmpty(s)) {
        printf("Stack Underflow\n");
        return -1; // or some error code
    }
    return s->arr[(s->top)--];
}

int peek(Stack *s) {
    if (isEmpty(s)) {
        printf("Stack is empty\n");
        return -1; 
    }
    return s->arr[s->top];
}

int main() {
    Stack s;
    init(&s);

    push(&s, 10);
    push(&s, 20);
    push(&s, 30);

    printf("Top element is %d\n", peek(&s));

    printf("Popped element %d\n", pop(&s));
    printf("Popped element %d\n", pop(&s));

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
    [push], [O(1)], [No additional space (in-place)],
    [pop], [O(1)], [No additional space],
    [peek], [O(1)], [No additional space],
  )]
  , kind: table
  )

- #strong[Why O(1)?] \
  Each operation modifies or accesses only the top index of the stack,
  regardless of size. \
- #strong[Space Complexity];: \
  The stack requires O(n) space, where #emph[n] is MAX size or dynamic
  size depending on implementation. Each element stores data in an array
  or linked structure.

#horizontalrule

== 7. Real-World Applications
<real-world-applications>
- #strong[Expression evaluation and syntax parsing] (infix, postfix,
  prefix conversions) \
- #strong[Undo/Redo functionality] in editors \
- #strong[Backtracking algorithms] (e.g., in maze solvers) \
- #strong[Call stack in recursion management] \
- #strong[Balancing symbols] in compilers (parentheses, brackets) \
- #strong[Browser history navigation]

#horizontalrule

== 8. Key Takeaways
<key-takeaways>
- Stack is a LIFO data structure with simple operations mostly O(1) time
  complexity. \
- It is used extensively in solving problems requiring reversal,
  backtracking, and history tracking. \
- Understanding stack operations and complexity is fundamental for
  algorithmic problem solving. \
- Implementing stack in C can be done using arrays or linked lists, but
  arrays provide simple fixed-size implementation. \
- Awareness of stack overflow and underflow is essential during
  implementation.

#horizontalrule

== 9. Practice Questions or Problems
<practice-questions-or-problems>
+ Implement a stack using a linked list and compare pros/cons with array
  implementation. \
+ Write a program to check if parentheses in an expression are balanced
  using a stack. \
+ Convert an infix expression to postfix using a stack. \
+ Implement a function to reverse a string using a stack. \
+ Analyze time complexity of stack operations when implemented with
  linked lists vs arrays. \
+ Implement a stack supporting getMin() in O(1) time complexity. \
+ Use a stack to evaluate a postfix expression.

#horizontalrule

#emph[Insert diagrams here:] \
\- Stack illustration showing push & pop operations. \
\- Stepwise example animation of stack changes during operations. \
\- Flowchart for push and pop algorithms.

#horizontalrule
