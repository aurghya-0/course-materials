= PCC-CS301 : Data Structures and Algorithms with C
<pcc-cs301-data-structures-and-algorithms-with-c>
== Unit 3: Trees
<unit-3-trees>
=== Topic: Tree Terminologies - Root, Leaf, Internal Nodes, Degree, Height, Level, etc.
<topic-tree-terminologies---root-leaf-internal-nodes-degree-height-level-etc.>

#horizontalrule

== 1. Introduction and Definitions
<introduction-and-definitions>
#strong[Tree] is a widely used abstract data type in computer science
which simulates a hierarchical tree structure with a set of connected
nodes. It is a non-linear data structure consisting of nodes.

Key Terminologies: \
\- #strong[Root];: The topmost node of a tree. It has no parent. \
\- #strong[Node];: Fundamental part of a tree containing data and
possibly links to other nodes. \
\- #strong[Parent];: A node directly connected to a node one level below
(child). \
\- #strong[Child];: A node directly connected to a node one level above
(parent). \
\- #strong[Leaf (External Node)];: Nodes that have no children. \
\- #strong[Internal Node];: Nodes with at least one child. \
\- #strong[Degree of a Node];: Number of children of a node. \
\- #strong[Degree of a Tree];: Maximum degree of all nodes in the tree.
\
\- #strong[Level of a Node];: Number of edges on the path from the root
to the node; root is at level 0. \
\- #strong[Height of a Node];: Number of edges on the longest path from
the node to a leaf. \
\- #strong[Height (or Depth) of Tree];: Height of the root node.

#horizontalrule

== 2. Intuition and Working Principle
<intuition-and-working-principle>
Imagine an organizational chart or a family tree: \
\- The CEO or ancestor is at the top (root). \
\- Employees under managers are children of their manager's node. \
\- Positions with no subordinates are leaf nodes. \
\- Internal nodes are managers (nodes with subordinates). \
\- Knowing levels helps understanding the hierarchy or "distance" from
the root. \
\- Height tells us how deep or tall the structure is.

This hierarchical structure allows efficient searching, insertion,
deletion, and representation of data.

#horizontalrule

== 3. Step-by-step Explanation with Example
<step-by-step-explanation-with-example>
Consider this example tree:

```
        A               <- Root (level 0)
       / \
      B   C             <- B and C (level 1)
     / \   \
    D   E   F           <- D, E, F (level 2)
         \
          G             <- G (level 3)
```

- #strong[Root];: A \
- #strong[Leaves];: D, E, F, G (nodes with no children) \
- #strong[Internal nodes];: A, B, C, E (nodes with children) \
- #strong[Degree of A];: 2 (B and C) \
- #strong[Degree of B];: 2 (D and E) \
- #strong[Degree of C];: 1 (F) \
- #strong[Degree of entire tree];: 2 (max degree among all nodes) \
- #strong[Level of G];: 3 (edges from root: A→B→E→G) \
- #strong[Height of tree];: 3 (longest path from root A to leaf G)

#horizontalrule

== 4. Pseudocode or Algorithm
<pseudocode-or-algorithm>
#strong[Find Height of a Tree] (Recursive):

```
function height(node):
    if node is NULL
        return -1          // height of empty tree is -1

    max_height = -1
    for each child in node.children:
        child_height = height(child)
        if child_height > max_height:
            max_height = child_height

    return max_height + 1
```

#strong[Calculate Level of a Node] (Assuming root level is 0):

- Starting from root, assign level 0.
- For each child, level = parent's level + 1.

#horizontalrule

== 5. Code Implementation in C
<code-implementation-in-c>
```c
#include <stdio.h>
#include <stdlib.h>

#define MAX_CHILDREN 10

typedef struct TreeNode {
    char data;
    int numChildren;
    struct TreeNode* children[MAX_CHILDREN];
} TreeNode;

// Create a new node
TreeNode* createNode(char data) {
    TreeNode* node = (TreeNode*)malloc(sizeof(TreeNode));
    node->data = data;
    node->numChildren = 0;
    for(int i = 0; i < MAX_CHILDREN; i++)
        node->children[i] = NULL;
    return node;
}

// Add child to node
void addChild(TreeNode* parent, TreeNode* child) {
    if(parent->numChildren < MAX_CHILDREN) {
        parent->children[parent->numChildren++] = child;
    }
}

// Calculate height of the tree
int height(TreeNode* node) {
    if(node == NULL) return -1;

    int maxHeight = -1;
    for(int i = 0; i < node->numChildren; i++) {
        int childHeight = height(node->children[i]);
        if(childHeight > maxHeight)
            maxHeight = childHeight;
    }
    return maxHeight + 1;
}

// Print level of each node (using BFS)
#include <string.h>
#define QUEUE_SIZE 100

typedef struct Queue {
    TreeNode* items[QUEUE_SIZE];
    int front, rear;
    int levels[QUEUE_SIZE];
} Queue;

void initQueue(Queue* q) {
    q->front = q->rear = -1;
    memset(q->levels, -1, sizeof(q->levels));
}

int isEmpty(Queue* q) {
    return q->front == -1;
}

void enqueue(Queue* q, TreeNode* node, int level) {
    if(q->rear == QUEUE_SIZE-1) return;  // Queue full
    if(q->front == -1) q->front = 0;
    q->rear++;
    q->items[q->rear] = node;
    q->levels[q->rear] = level;
}

TreeNode* dequeue(Queue* q, int* level) {
    if(isEmpty(q)) return NULL;
    TreeNode* node = q->items[q->front];
    *level = q->levels[q->front];
    if(q->front == q->rear) {
        q->front = q->rear = -1;
    } else {
        q->front++;
    }
    return node;
}

void printLevels(TreeNode* root) {
    if(root == NULL) return;

    Queue q;
    initQueue(&q);

    enqueue(&q, root, 0);

    printf("Node : Level\n");
    while(!isEmpty(&q)) {
        int level;
        TreeNode* node = dequeue(&q, &level);
        printf("  %c  :  %d\n", node->data, level);

        for(int i = 0; i < node->numChildren; i++) {
            enqueue(&q, node->children[i], level + 1);
        }
    }
}

int main() {
    // Create nodes
    TreeNode* A = createNode('A');
    TreeNode* B = createNode('B');
    TreeNode* C = createNode('C');
    TreeNode* D = createNode('D');
    TreeNode* E = createNode('E');
    TreeNode* F = createNode('F');
    TreeNode* G = createNode('G');

    // Build tree
    addChild(A, B);
    addChild(A, C);
    addChild(B, D);
    addChild(B, E);
    addChild(C, F);
    addChild(E, G);

    printf("Height of tree: %d\n", height(A));
    printLevels(A);

    return 0;
}
```

#horizontalrule

== 6. Time and Space Complexity Analysis
<time-and-space-complexity-analysis>
#figure(
  align(center)[#table(
    columns: (30.51%, 35.59%, 33.9%),
    align: (auto,auto,auto,),
    table.header([Operation], [Time Complexity], [Space Complexity],),
    table.hline(),
    [Height of Tree], [O(N) --- visit every node once], [O(h) ---
    recursive call stack, h = height],
    [Calculating Levels (BFS)], [O(N) --- all nodes visited once], [O(N)
    --- queue in worst case],
    [Creating Tree Nodes], [O(1) per node], [O(N) --- storage for
    nodes],
  )]
  , kind: table
  )

- #strong[N] is the number of nodes in the tree. \
- The degree and level calculations are done during traversals, no extra
  asymptotic cost.

#horizontalrule

== 7. Real-world Applications
<real-world-applications>
- #strong[Hierarchical Data Representation];: Organizational structures,
  file systems \
- #strong[Database Indexes];: B-trees and variants use tree terminology
  \
- #strong[Network Routing];: Tree hierarchies in routing protocols \
- #strong[Expression Parsing];: Syntax trees where leaves are operands
  and internal nodes are operators \
- #strong[AI and Machine Learning];: Decision trees use these
  terminologies \
- #strong[XML/JSON Data storage];: Document-object model (DOM) is
  tree-based

#horizontalrule

== 8. Key Takeaways
<key-takeaways>
- Trees represent hierarchical data structures defined by nodes and
  edges. \
- Root is the top node; leaves have no children, internal nodes do. \
- Degree is the number of children a node has; height is longest
  node-to-leaf path. \
- Level defines how far a node is from the root (starting at 0). \
- Understanding these terms aids in traversing, analyzing, and
  manipulating trees.

#horizontalrule

== 9. Practice Questions or Problems
<practice-questions-or-problems>
+ #strong[Define and identify:] Given a tree diagram, mark root, leaves,
  internal nodes, degree, height, and levels. \
+ #strong[Height Calculation:] Write a function in C to calculate the
  height of any general tree. \
+ #strong[Level Finder:] Implement a function to find the level of a
  given node in the tree. \
+ #strong[Degree of Tree:] Write a program to calculate the degree of a
  given tree. \
+ #strong[Create and Traverse:] Build a tree from user input and print
  all nodes along with their levels. \
+ #strong[Given Code];: Modify the given C code to count the number of
  leaf and internal nodes. \
+ #strong[Real-life Modelling:] Model a file system tree and perform
  height and degree calculations.

#horizontalrule

#emph[#strong[Insert Diagrams Here];: Tree structure with labeled root,
leaf, internal nodes, levels, and height for better understanding.]
