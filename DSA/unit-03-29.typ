= PCC-CS301 : Data Structures and Algorithms with C
<pcc-cs301-data-structures-and-algorithms-with-c>
== Unit 3: Trees
<unit-3-trees>
=== Topic: Applications of Trees - Expression Trees & Directory Structure
<topic-applications-of-trees---expression-trees-directory-structure>

#horizontalrule

== 1. Introduction and Definitions
<introduction-and-definitions>
- #strong[Tree];: A hierarchical data structure consisting of nodes,
  with a root node and zero or more child nodes forming subtrees.
- #strong[Application of Trees];: Trees are extensively used to
  represent complex hierarchical data in an organized way.
- #strong[Expression Tree];: A binary tree used to represent arithmetic
  expressions. Internal nodes represent operators, and leaf nodes
  represent operands (constants/variables).
- #strong[Directory Structure as Tree];: File systems represent files
  and directories hierarchically as a tree, where directories are
  internal nodes and files are leaves.

#horizontalrule

== 2. Intuition and Working Principle
<intuition-and-working-principle>
=== Expression Trees:
<expression-trees>
- Expression trees parse and evaluate mathematical expressions.
- Operators (+, -, \*, /) are internal nodes.
- Operands (numbers, variables) are leaves.
- Traversing expression trees (preorder, inorder, postorder) gives
  prefix, infix, or postfix notations.
- Evaluation is done recursively from leaves up to root using operator
  nodes.

=== Directory Structure:
<directory-structure>
- Root directory is the root node.
- Subdirectories and files are children nodes.
- Helps in easy navigation, searching, and management of files.
- Provides a clear, hierarchical structure for storage.

#horizontalrule

== 3. Step-by-Step Explanation with Examples
<step-by-step-explanation-with-examples>
=== Expression Tree Example
<expression-tree-example>
Expression: (3 + ((4 \* 5) - 2))

#strong[Step 1:] Parse the expression \
#strong[Step 2:] Create nodes for operators and operands \
#strong[Step 3:] Build tree where operators are internal nodes, operands
are leaves

```
         -
        / \
       +   2
      / \
     3   *
        / \
       4   5
```

=== Directory Structure Example
<directory-structure-example>
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

#emph[(Insert diagrams for both above for visual clarity)]

#horizontalrule

== 4. Pseudocode or Algorithm
<pseudocode-or-algorithm>
=== Expression Tree Construction (from postfix expression)
<expression-tree-construction-from-postfix-expression>
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

#horizontalrule

== 5. Code Implementation in C
<code-implementation-in-c>
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

#horizontalrule

== 6. Time and Space Complexity Analysis
<time-and-space-complexity-analysis>
#figure(
  align(center)[#table(
    columns: (39.08%, 19.54%, 41.38%),
    align: (auto,auto,auto,),
    table.header([Operation], [Time Complexity], [Space Complexity],),
    table.hline(),
    [Build Expression Tree (postfix)], [O(n)], [O(n) (stack to hold
    nodes)],
    [Inorder traversal], [O(n)], [O(h) (recursive stack, h = tree
    height)],
    [Directory representation (general)], [Depends on structure, often
    O(n) where n = total nodes/files], [],
  )]
  , kind: table
  )

#horizontalrule

== 7. Real-World Applications
<real-world-applications>
- #strong[Compilers];: Expression trees are used for parsing and
  evaluating arithmetic expressions.
- #strong[Mathematical software];: For symbolic expression manipulation.
- #strong[File systems];: Operating systems represent directories/files
  as hierarchical trees for efficient organization.
- #strong[Database indexing];: Trees (B-trees, etc.) used for
  hierarchical data storage.
- #strong[XML and JSON parsing];: These document formats naturally map
  to tree structures.

#horizontalrule

== 8. Key Takeaways
<key-takeaways>
- Expression trees efficiently represent and evaluate arithmetic
  expressions.
- Tree traversals correspond to different notations of expressions
  (infix, postfix, prefix).
- Directory structure as a tree models hierarchical file system
  navigation.
- Trees enable easy recursive processing, searching, and hierarchical
  representation.
- Expression tree construction from postfix is simple with a stack-based
  algorithm.

#horizontalrule

== 9. Practice Questions or Problems
<practice-questions-or-problems>
+ Construct an expression tree from the infix expression:
  `(A + B) * (C - D)`, given that you can convert infix to postfix
  first.
+ Write a function to evaluate numeric expression trees.
+ Design a tree data structure to represent a company organizational
  chart.
+ Implement a program to list all files and directories in a tree-like
  structure.
+ Convert a prefix expression to an expression tree and display it in
  infix notation.
+ Explain how deletion of a node in a directory tree impacts the tree
  structure.
+ Write a function to count the total number of files in a directory
  tree.

#horizontalrule

#emph[(Leave space for diagrams and flowcharts in the final notes)]
