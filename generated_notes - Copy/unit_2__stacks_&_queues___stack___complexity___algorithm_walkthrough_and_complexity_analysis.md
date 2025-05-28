# PCC-CS301 : Data Structures and Algorithms with C  
## Unit 2: Stacks & Queues  
### Topic: Stack - Complexity - Algorithm Walkthrough and Complexity Analysis  

---

## 1. Introduction and Definitions  
- **Stack**: A stack is a linear data structure that follows the **LIFO** (Last In, First Out) principle.  
- Elements can be added or removed only from one end, called the **top**.  
- Common operations:  
  - **push()**: Add an element to the top.  
  - **pop()**: Remove the top element.  
  - **peek() or top()**: View the top element without removing it.  
  - **isEmpty()**: Check if the stack is empty.  
  - **isFull()**: (optional, for fixed size stacks) Check if the stack is full.  

---

## 2. Intuition and Working Principle  
- Imagine a stack of plates:  
  - You can only add a plate to the top (push).  
  - You can only take the top plate off (pop).  
- This ordering helps solve problems like balanced parentheses, undo operations, recursion management, etc.  
- Because of the LIFO nature, the last element pushed will be the first popped.  

---

## 3. Step-by-Step Explanation with Example  

**Example: Push 10, 20, 30 and then pop two elements**

| Operation | Stack Content            | Explanation               |
|-----------|-------------------------|---------------------------|
| push(10) | [10]                    | 10 added at the top       |
| push(20) | [10, 20]                | 20 now at the top         |
| push(30) | [10, 20, 30]            | 30 now at the top         |
| pop()    | [10, 20]                | 30 removed                |
| pop()    | [10]                    | 20 removed                |

*Note:* The last inserted element (30) is the first to be removed (popped).

---

## 4. Pseudocode or Algorithm  

### Push Operation  
```
procedure PUSH(stack, element)
    if stack is full
        print "Stack Overflow"
    else
        top = top + 1
        stack[top] = element
end procedure
```

### Pop Operation  
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

### Peek Operation  
```
procedure PEEK(stack)
    if stack is empty
        print "Stack is empty"
        return NULL
    else
        return stack[top]
end procedure
```

---

## 5. Code Implementation in C  

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

---

## 6. Time and Space Complexity Analysis  

| Operation | Time Complexity | Space Complexity         |
|-----------|-----------------|-------------------------|
| push      | O(1)            | No additional space (in-place) |
| pop       | O(1)            | No additional space       |
| peek      | O(1)            | No additional space       |

- **Why O(1)?**  
  Each operation modifies or accesses only the top index of the stack, regardless of size.  
- **Space Complexity**:  
  The stack requires O(n) space, where _n_ is MAX size or dynamic size depending on implementation. Each element stores data in an array or linked structure.

---

## 7. Real-World Applications  
- **Expression evaluation and syntax parsing** (infix, postfix, prefix conversions)  
- **Undo/Redo functionality** in editors  
- **Backtracking algorithms** (e.g., in maze solvers)  
- **Call stack in recursion management**  
- **Balancing symbols** in compilers (parentheses, brackets)  
- **Browser history navigation**

---

## 8. Key Takeaways  
- Stack is a LIFO data structure with simple operations mostly O(1) time complexity.  
- It is used extensively in solving problems requiring reversal, backtracking, and history tracking.  
- Understanding stack operations and complexity is fundamental for algorithmic problem solving.  
- Implementing stack in C can be done using arrays or linked lists, but arrays provide simple fixed-size implementation.  
- Awareness of stack overflow and underflow is essential during implementation.

---

## 9. Practice Questions or Problems  
1. Implement a stack using a linked list and compare pros/cons with array implementation.  
2. Write a program to check if parentheses in an expression are balanced using a stack.  
3. Convert an infix expression to postfix using a stack.  
4. Implement a function to reverse a string using a stack.  
5. Analyze time complexity of stack operations when implemented with linked lists vs arrays.  
6. Implement a stack supporting getMin() in O(1) time complexity.  
7. Use a stack to evaluate a postfix expression.  

---

*Insert diagrams here:*  
- Stack illustration showing push & pop operations.  
- Stepwise example animation of stack changes during operations.  
- Flowchart for push and pop algorithms.  

---