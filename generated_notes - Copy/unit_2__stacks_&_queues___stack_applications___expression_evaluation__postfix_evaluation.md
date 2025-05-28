# PCC-CS301 : Data Structures and Algorithms with C  
## Unit 2: Stacks & Queues  
### Topic: Stack Applications - Expression Evaluation: Postfix Evaluation  

---

## 1. Introduction and Definitions

- **Expression Evaluation**: The process of computing the value of a given expression.
- **Postfix Expression (Reverse Polish Notation)**: An expression where the operator follows the operands, e.g., `AB+` instead of `A+B`.
- **Stack**: A data structure that follows Last-In-First-Out (LIFO) principle, ideal for handling intermediate values during expression evaluation.

**Why Postfix?**  
- No need for parentheses to define precedence
- Easy evaluation using stacks

---

## 2. Intuition and Working Principle

- **Challenge with Infix Notation**: Operators have different precedences; parentheses change order of operations.
- **Postfix approach**: Eliminates ambiguity; we just process operands and operators sequentially.
- **Using a stack**:  
  - Push operands onto the stack.
  - When an operator comes, pop the required number of operands (usually two).
  - Apply the operator.
  - Push the result back to the stack.
- At the end, the stack has the final result.

---

## 3. Step-by-step Explanation with Example

Evaluate the postfix expression: `6 2 3 + - 3 8 2 / + *`

**Tokens**: 6, 2, 3, +, -, 3, 8, 2, /, +, *

| Step | Stack Content                 | Action                                      |
|-------|------------------------------|---------------------------------------------|
| 1     | [6]                          | Push operand 6                              |
| 2     | [6, 2]                       | Push operand 2                              |
| 3     | [6, 2, 3]                    | Push operand 3                              |
| 4     | [6, 5]                       | Pop 2,3, add → 5, push 5                    |
| 5     | [1]                          | Pop 6,5, subtract (6 - 5 = 1), push 1      |
| 6     | [1, 3]                       | Push operand 3                              |
| 7     | [1, 3, 8]                    | Push operand 8                              |
| 8     | [1, 3, 8, 2]                 | Push operand 2                              |
| 9     | [1, 3, 4]                    | Pop 8,2 divide (8 / 2 = 4), push 4         |
| 10    | [1, 7]                       | Pop 3,4 add (3 + 4 = 7), push 7            |
| 11    | [7]                          | Pop 1,7 multiply (1 * 7 = 7), push 7       |

**Final result:** 7

---

## 4. Pseudocode or Algorithm

```
Algorithm PostfixEvaluation(expression):
  Create an empty stack S

  For each token t in expression:
    If t is operand:
      Push t onto stack S
    Else if t is operator:
      operand2 = Pop from S
      operand1 = Pop from S
      result = ApplyOperator(t, operand1, operand2)
      Push result onto S

  Return Pop from S

Function ApplyOperator(op, a, b):
  If op == '+': return a + b
  If op == '-': return a - b
  If op == '*': return a * b
  If op == '/': return a / b
```

---

## 5. Code Implementation in C

```c
#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>

#define MAX 100

typedef struct {
    int items[MAX];
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

void push(Stack *s, int val) {
    if (isFull(s)) {
        printf("Stack Overflow\n");
        exit(1);
    }
    s->items[++(s->top)] = val;
}

int pop(Stack *s) {
    if (isEmpty(s)) {
        printf("Stack Underflow\n");
        exit(1);
    }
    return s->items[(s->top)--];
}

int applyOperator(char op, int a, int b) {
    switch(op) {
        case '+': return a + b;
        case '-': return a - b;
        case '*': return a * b;
        case '/': 
            if (b == 0) {
                printf("Division by zero error.\n");
                exit(1);
            }
            return a / b;
        default:
            printf("Unsupported operator %c\n", op);
            exit(1);
    }
}

int evaluatePostfix(char* exp) {
    Stack s;
    init(&s);

    for (int i = 0; exp[i] != '\0'; i++) {
        char ch = exp[i];

        if (isspace(ch)) continue; // skip spaces

        if (isdigit(ch)) {
            // Convert char digit to int and push
            push(&s, ch - '0');
        } else {
            int val2 = pop(&s);
            int val1 = pop(&s);
            int res = applyOperator(ch, val1, val2);
            push(&s, res);
        }
    }

    return pop(&s);
}

int main() {
    char expression[] = "6 2 3 + - 3 8 2 / + *";
    int result = evaluatePostfix(expression);
    printf("Result: %d\n", result);
    return 0;
}
```

---

## 6. Time and Space Complexity Analysis

| Complexity    | Analysis                                    |
|---------------|---------------------------------------------|
| **Time**      | O(n) — Each token in the expression is processed once. |
| **Space**     | O(n) — Stack space in the worst case (all operands).  |

---

## 7. Real-world Applications

- **Compilers and Interpreters**: Use postfix evaluation to compute expressions efficiently.
- **Calculators**: Many calculator algorithms convert infix expressions to postfix for easy evaluation.
- **Expression Parsing**: In symbolic algebra systems.
- **Syntax Parsing**: Postfix notation aids in parsing expressions and syntax trees.

---

## 8. Key Takeaways

- Postfix expressions simplify evaluation by eliminating parentheses and precedence concerns.
- Stacks are ideal for postfix evaluation since they store intermediate results.
- Operators act on the last two operands stored in the stack, popping them and pushing the result.
- Implementation requires careful processing of tokens and handling edge cases (like division by zero).
- Understanding postfix evaluation deepens your grasp of stacks and expression parsing.

---

## 9. Practice Questions or Problems

1. Evaluate the postfix expression: `5 6 2 + * 12 4 / -`
2. Write a program to convert infix expressions to postfix expressions.
3. Extend the postfix evaluation code to support multi-digit operands.
4. Modify the postfix evaluation code to handle floating-point numbers.
5. Implement prefix expression evaluation using stacks.
6. Show the stepwise stack changes while evaluating `8 2 5 * + 1 3 2 * + 4 - /`

---

*[Insert diagrams here of stack operations and expression parsing for visual aid]*