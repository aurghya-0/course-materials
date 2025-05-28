# PCC-CS301 : Data Structures and Algorithms with C  
## Unit 2: Stacks & Queues  
### Topic: Stack Applications - Expression Conversion: Infix to Postfix (Algorithm and Dry Run)

---

## 1. Introduction and Definitions

- **Expression Conversion:**  
  Converting mathematical expressions from one notation to another for easier computation.

- **Infix Expression:**  
  Operators are written *in-between* operands.  
  Example: `A + B`

- **Postfix Expression (Reverse Polish Notation):**  
  Operators *follow* the operands.  
  Example: `AB+`

- **Why Postfix?**  
  Postfix expressions eliminate the need for parentheses and follow a straightforward evaluation order, making them ideal for computer parsing.

- **Stack Role:**  
  Stacks are used to temporarily hold operators while scanning the infix expression and to ensure correct precedence relationships.

---

## 2. Intuition and Working Principle

- **Goal:**  
  Convert infix expressions (like `(A + B) * C`) to postfix (like `AB+C*`) using a stack.

- **Key idea:**  
  1. Scan the infix expression from left to right.  
  2. Operands (variables or numbers) go directly to the output (postfix string).  
  3. Operators are pushed on the stack, but ensuring correct order using **precedence and associativity rules**.  
  4. When an operator with **lower precedence** arrives or a closing parenthesis `)` is encountered, pop operators from the stack to the output.

- **Precedence:**  
  Defines priority of operators, e.g.:  
  - `*` and `/` have higher precedence than `+` and `-`.  
  - Parentheses override precedence.

---

## 3. Step-by-Step Explanation with Example

### Example Expression:  
`A + B * C`

### Steps:  
| Step | Input Symbol | Action                                          | Stack           | Postfix Output |
|-------|-------------|------------------------------------------------|-----------------|----------------|
| 1     | `A`         | Operand → output                                | []              | `A`            |
| 2     | `+`         | Operator → push onto stack                      | `[+]`           | `A`            |
| 3     | `B`         | Operand → output                                | `[+]`           | `AB`           |
| 4     | `*`         | `*` has higher precedence than `+`, push       | `[+, *]`        | `AB`           |
| 5     | `C`         | Operand → output                                | `[+, *]`        | `ABC`          |
| End   | Expression done, pop remaining operators        | `[]`            | `ABC*+`        |

### Explanation:
- `B * C` evaluated first (because of `*` precedence), then `A +` is applied.

---

## 4. Pseudocode or Algorithm

```
Algorithm InfixToPostfix(expression)
    Create an empty stack for operators
    Create an empty string for output postfix

    For each symbol in expression
        If symbol is an operand
            Append symbol to postfix
        Else if symbol is '('
            Push '(' onto stack
        Else if symbol is ')'
            While stack top != '('
                Pop from stack and append to postfix
            Pop '(' from stack (do not append)
        Else // symbol is operator (+, -, *, /)
            While stack is not empty AND precedence(stack top) >= precedence(symbol)
                Pop from stack and append to postfix
            Push current operator symbol onto stack

    While stack is not empty
        Pop from stack and append to postfix

    Return postfix
```

---

## 5. Code Implementation in C

```c
#include <stdio.h>
#include <ctype.h>
#include <string.h>

#define MAX 100

char stack[MAX];
int top = -1;

void push(char ch) {
    if(top < MAX - 1)
        stack[++top] = ch;
}

char pop() {
    if(top >= 0)
        return stack[top--];
    return -1;
}

char peek() {
    if(top >= 0)
        return stack[top];
    return -1;
}

int precedence(char op) {
    switch(op) {
        case '+':
        case '-':
            return 1;
        case '*':
        case '/':
            return 2;
        case '(':
            return 0;
    }
    return -1;
}

void infixToPostfix(char *infix, char *postfix) {
    int i = 0, j = 0;
    char ch;
    while((ch = infix[i++]) != '\0') {
        if(isalnum(ch)) {
            // Operand goes to output
            postfix[j++] = ch;
        } 
        else if(ch == '(') {
            push(ch);
        }
        else if(ch == ')') {
            // Pop until '(' is found
            while(top != -1 && peek() != '(') {
                postfix[j++] = pop();
            }
            pop(); // Remove '(' from stack
        }
        else { // Operator
            while(top != -1 && precedence(peek()) >= precedence(ch)) {
                postfix[j++] = pop();
            }
            push(ch);
        }
    }
    // Pop remaining operators
    while(top != -1) {
        postfix[j++] = pop();
    }
    postfix[j] = '\0';
}

int main() {
    char infix[MAX], postfix[MAX];
    printf("Enter infix expression: ");
    scanf("%s", infix);
    infixToPostfix(infix, postfix);
    printf("Postfix expression: %s\n", postfix);
    return 0;
}
```

---

## 6. Time and Space Complexity Analysis

- **Time Complexity:**  
  *O(n)* where *n* is the length of the infix expression.  
  Each symbol is processed once.

- **Space Complexity:**  
  *O(n)* in the worst case for the stack and output string storage.

---

## 7. Real-World Applications

- **Compilers:**  
  Parsing and evaluating mathematical expressions in programming languages.

- **Calculators:**  
  Many scientific calculators convert infix expressions internally to postfix for evaluation.

- **Expression Trees:**  
  Used to generate and traverse expression trees for optimization and computation.

- **Syntax Parsing:**  
  Language interpreters use this for parsing complex expressions with precedence.

---

## 8. Key Takeaways

- Infix expressions are human-friendly but complicated for machines to evaluate directly.  
- Postfix expressions are easier for machines because they don’t need parentheses or precedence rules during evaluation.  
- Stacks provide an ideal structure to hold operators temporarily during the conversion.  
- Correct handling of operator precedence and associativity is crucial to convert accurately.  
- This method forms the basis for parsing arithmetic expressions in many computing systems.

---

## 9. Practice Questions or Problems

1. Convert the infix expression `(A+B)*(C-D)` to postfix and perform a dry run of the algorithm.
2. Extend the C code to support exponentiation operator `^` and associativity rules.
3. Modify the C program to handle multi-digit operands and spaces in the input.
4. Write a program to evaluate the postfix expression obtained from the infix to postfix conversion.
5. Explain how you would modify the algorithm to convert an infix expression to prefix expression.

---

*Diagrams/visual aids to illustrate the stack operations during example conversions can be inserted here.*