# PCC-CS301 : Data Structures and Algorithms with C  
## Unit 3: Trees  
### Topic: Applications of Trees - Expression Trees & Directory Structure

---

## 1. Introduction and Definitions

- **Tree**: A hierarchical data structure consisting of nodes, with a root node and zero or more child nodes forming subtrees.
- **Application of Trees**: Trees are extensively used to represent complex hierarchical data in an organized way.
- **Expression Tree**: A binary tree used to represent arithmetic expressions. Internal nodes represent operators, and leaf nodes represent operands (constants/variables).
- **Directory Structure as Tree**: File systems represent files and directories hierarchically as a tree, where directories are internal nodes and files are leaves.

---

## 2. Intuition and Working Principle

### Expression Trees:
- Expression trees parse and evaluate mathematical expressions.
- Operators (+, -, *, /) are internal nodes.
- Operands (numbers, variables) are leaves.
- Traversing expression trees (preorder, inorder, postorder) gives prefix, infix, or postfix notations.
- Evaluation is done recursively from leaves up to root using operator nodes.

### Directory Structure:
- Root directory is the root node.
- Subdirectories and files are children nodes.
- Helps in easy navigation, searching, and management of files.
- Provides a clear, hierarchical structure for storage.

---

## 3. Step-by-Step Explanation with Examples

### Expression Tree Example

Expression:  (3 + ((4 * 5) - 2))

**Step 1:** Parse the expression  
**Step 2:** Create nodes for operators and operands  
**Step 3:** Build tree where operators are internal nodes, operands are leaves  

```
         -
        / \
       +   2
      / \
     3   *
        / \
       4   5
```

### Directory Structure Example

```
Root
│
├── Home
│   ├── Documents
│   │   └── file1.txt
│   └── Pictures
│       └── image1.jpg
└── etc
    └── config.cfg
```

- Root node → "Root"
- Child nodes → "Home", "etc"
- Leaf nodes → files like "file1.txt", "image1.jpg", "config.cfg"

*(Insert diagrams for both above for visual clarity)*

---

## 4. Pseudocode or Algorithm

### Expression Tree Construction (from postfix expression)

```
Algorithm BuildExpressionTree(postfix):
  Create an empty stack S

  for each symbol x in postfix:
    if x is operand:
      node = new TreeNode(x)
      push node into S
    else if x is operator:
      right = pop from S
      left = pop from S
      node = new TreeNode(x)
      node.left = left
      node.right = right
      push node into S
  
  return pop from S  # Root of the expression tree
```

---

## 5. Code Implementation in C

```c
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

typedef struct TreeNode {
    char data;
    struct TreeNode *left, *right;
} TreeNode;

TreeNode* newNode(char data) {
    TreeNode* node = (TreeNode*)malloc(sizeof(TreeNode));
    node->data = data;
    node->left = node->right = NULL;
    return node;
}

int isOperator(char ch) {
    return (ch == '+' || ch == '-' || ch == '*' || ch == '/');
}

TreeNode* buildExpressionTree(char* postfix) {
    TreeNode* stack[100];
    int top = -1;
    
    for (int i = 0; postfix[i] != '\0'; i++) {
        char ch = postfix[i];
        if (isspace(ch)) continue;

        if (isalnum(ch)) {
            stack[++top] = newNode(ch);
        }
        else if (isOperator(ch)) {
            TreeNode* node = newNode(ch);
            node->right = stack[top--];
            node->left = stack[top--];
            stack[++top] = node;
        }
    }
    return stack[top];
}

// Inorder traversal (to get infix expression)
void inorder(TreeNode* root) {
    if (root != NULL) {
        if (isOperator(root->data)) printf("(");
        inorder(root->left);
        printf("%c", root->data);
        inorder(root->right);
        if (isOperator(root->data)) printf(")");
    }
}

int main() {
    char postfix[] = "345*+2-";
    TreeNode* exprTree = buildExpressionTree(postfix);
    printf("Infix expression: ");
    inorder(exprTree);
    printf("\n");
    return 0;
}
```

---

## 6. Time and Space Complexity Analysis

| Operation                         | Time Complexity | Space Complexity                     |
|----------------------------------|-----------------|------------------------------------|
| Build Expression Tree (postfix)  | O(n)            | O(n) (stack to hold nodes)          |
| Inorder traversal                | O(n)            | O(h) (recursive stack, h = tree height) |
| Directory representation (general)| Depends on structure, often O(n) where n = total nodes/files |

---

## 7. Real-World Applications

- **Compilers**: Expression trees are used for parsing and evaluating arithmetic expressions.
- **Mathematical software**: For symbolic expression manipulation.
- **File systems**: Operating systems represent directories/files as hierarchical trees for efficient organization.
- **Database indexing**: Trees (B-trees, etc.) used for hierarchical data storage.
- **XML and JSON parsing**: These document formats naturally map to tree structures.

---

## 8. Key Takeaways

- Expression trees efficiently represent and evaluate arithmetic expressions.
- Tree traversals correspond to different notations of expressions (infix, postfix, prefix).
- Directory structure as a tree models hierarchical file system navigation.
- Trees enable easy recursive processing, searching, and hierarchical representation.
- Expression tree construction from postfix is simple with a stack-based algorithm.

---

## 9. Practice Questions or Problems

1. Construct an expression tree from the infix expression: `(A + B) * (C - D)`, given that you can convert infix to postfix first.
2. Write a function to evaluate numeric expression trees.
3. Design a tree data structure to represent a company organizational chart.
4. Implement a program to list all files and directories in a tree-like structure.
5. Convert a prefix expression to an expression tree and display it in infix notation.
6. Explain how deletion of a node in a directory tree impacts the tree structure.
7. Write a function to count the total number of files in a directory tree.

---

*(Leave space for diagrams and flowcharts in the final notes)*