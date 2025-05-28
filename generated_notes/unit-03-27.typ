= PCC-CS301 : Data Structures and Algorithms with C
<pcc-cs301-data-structures-and-algorithms-with-c>
== Unit 3: Trees - B Tree
<unit-3-trees---b-tree>
=== Topic: B Tree - Structure, Insertion Algorithm
<topic-b-tree---structure-insertion-algorithm>

#horizontalrule

== 1. Introduction and Definitions
<introduction-and-definitions>
- #strong[Tree];: A hierarchical data structure consisting of nodes with
  parent-child relationships.
- #strong[B Tree];: A self-balancing tree data structure that maintains
  sorted data and allows efficient insertion, deletion, and search
  operations.

#strong[Key Characteristics of B Tree:]

- B Tree of order #emph[m];:
  - Every node can have at most #emph[m] children.
  - Every internal node can contain at most #emph[m-1] keys.
  - Every node (except the root) must have at least ⌈m/2⌉ children.
  - All leaves appear at the same level, meaning the tree is balanced.
- Mainly used in databases and file systems to optimize read/write on
  disk storage.

#horizontalrule

== 2. Intuition and Working Principle
<intuition-and-working-principle>
- Imagine a #strong[B Tree] as a sorted multi-way search tree.
- Each node holds multiple keys; keys partition the search space (like
  book chapters).
- Allows for fewer tree levels and reduces disk access (compared to
  binary trees).
- When nodes get full (reach max keys), they #strong[split] and push a
  key to the parent.
- This splitting may propagate up to the root, increasing the height by
  one.
- Keeps the tree balanced and efficient for large data sets.

#horizontalrule

== 3. Step-by-Step Explanation with Example
<step-by-step-explanation-with-example>
=== Example: Insert keys into a B Tree of order 3 (max 2 keys/node)
<example-insert-keys-into-a-b-tree-of-order-3-max-2-keysnode>
+ #strong[Insert 10]
  - Tree empty, 10 becomes the root node.
+ #strong[Insert 20]
  - Insert into root (10), no split needed. Root now contains \[10,
    20\].
+ #strong[Insert 5]
  - Insert into root node \[10, 20\].
  - After insertion: \[5, 10, 20\] (3 keys, exceeds max keys).
  - #emph[Split] into two nodes:
    - Left child: \[5\]
    - Right child: \[20\]
    - Middle key (10) moves up to become the root.
  - Tree height increases by 1.
+ #strong[Insert 6]
  - 6 is compared with root key 10.
  - Goes to left child \[5\].
  - Inserted into \[5\], resulting in \[5, 6\].
+ #strong[Insert 12]
  - 12 \> 10, goes to right child \[20\].
  - Inserted into \[20\], resulting in \[12, 20\].

#strong[Diagram Here:] Show this tree structure as nodes and keys.

#horizontalrule

== 4. Pseudocode or Algorithm
<pseudocode-or-algorithm>
```plaintext
BTree_Insert(tree, key):
  if root is NULL:
    create root node with key
  else:
    if root is full:
      create new node s
      s becomes new root
      s has one child: old root
      BTree_Split_Child(s, 0)
      BTree_Insert_NonFull(s, key)
    else:
      BTree_Insert_NonFull(root, key)

BTree_Insert_NonFull(node, key):
  if node is leaf:
    insert key into node in sorted order
  else:
    find child i to descend (where key < node.keys[i])
    if child i is full:
      BTree_Split_Child(node, i)
      if key > node.keys[i]:
        i += 1
    BTree_Insert_NonFull(node.children[i], key)

BTree_Split_Child(parent, i):
  y = parent.children[i]
  create new node z
  z takes y's t-1 keys (right half)
  y keeps t-1 keys (left half)
  insert y’s middle key into parent at position i
  make z the child of parent at position i+1
```

#horizontalrule

== 5. Code Implementation in C
<code-implementation-in-c>
```c
#include <stdio.h>
#include <stdlib.h>

#define MIN_DEGREE 2  // t => minimum degree (order = 2*t)

typedef struct BTreeNode {
    int keys[2*MIN_DEGREE - 1];
    struct BTreeNode *children[2*MIN_DEGREE];
    int n;           // Current number of keys
    int leaf;        // Is true when node is leaf
} BTreeNode;

BTreeNode* createNode(int leaf) {
    BTreeNode *node = (BTreeNode*)malloc(sizeof(BTreeNode));
    node->leaf = leaf;
    node->n = 0;
    for (int i = 0; i < 2*MIN_DEGREE; i++)
        node->children[i] = NULL;
    return node;
}

void splitChild(BTreeNode *parent, int i, BTreeNode *child) {
    BTreeNode *newNode = createNode(child->leaf);
    newNode->n = MIN_DEGREE - 1;

    // Copy end of child's keys to newNode
    for (int j = 0; j < MIN_DEGREE - 1; j++)
        newNode->keys[j] = child->keys[j + MIN_DEGREE];

    // Copy child pointers if not leaf
    if (!child->leaf) {
        for (int j = 0; j < MIN_DEGREE; j++)
            newNode->children[j] = child->children[j + MIN_DEGREE];
    }

    child->n = MIN_DEGREE - 1;

    // Shift children of parent to create space for new child
    for (int j = parent->n; j >= i+1; j--)
        parent->children[j+1] = parent->children[j];

    parent->children[i+1] = newNode;

    // Shift keys of parent
    for (int j = parent->n - 1; j >= i; j--)
        parent->keys[j+1] = parent->keys[j];

    // Move middle key of child to parent
    parent->keys[i] = child->keys[MIN_DEGREE - 1];
    parent->n += 1;
}

void insertNonFull(BTreeNode *node, int key) {
    int i = node->n - 1;

    if (node->leaf) {
        // Insert key in this leaf node
        while (i >= 0 && node->keys[i] > key) {
            node->keys[i+1] = node->keys[i];
            i--;
        }
        node->keys[i+1] = key;
        node->n += 1;
    } else {
        // Find the child to descend to
        while (i >= 0 && node->keys[i] > key)
            i--;

        i++;
        if (node->children[i]->n == 2*MIN_DEGREE - 1) {
            splitChild(node, i, node->children[i]);
            if (key > node->keys[i])
                i++;
        }
        insertNonFull(node->children[i], key);
    }
}

BTreeNode* insert(BTreeNode *root, int key) {
    if (root == NULL) {
        root = createNode(1);
        root->keys[0] = key;
        root->n = 1;
    } else {
        if (root->n == 2*MIN_DEGREE - 1) {
            BTreeNode *newRoot = createNode(0);
            newRoot->children[0] = root;
            splitChild(newRoot, 0, root);

            int i = 0;
            if (newRoot->keys[0] < key)
                i++;
            insertNonFull(newRoot->children[i], key);

            root = newRoot;
        } else {
            insertNonFull(root, key);
        }
    }
    return root;
}

// Utility function to print B Tree nodes (for visualization)
void printTree(BTreeNode *root, int level) {
    if (root != NULL) {
        printf("Level %d: ", level);
        for (int i = 0; i < root->n; i++)
            printf("%d ", root->keys[i]);
        printf("\n");
        if (!root->leaf) {
            for (int i = 0; i <= root->n; i++)
                printTree(root->children[i], level + 1);
        }
    }
}

int main() {
    BTreeNode *root = NULL;
    int keys[] = {10, 20, 5, 6, 12};
    int n = sizeof(keys) / sizeof(keys[0]);

    for (int i = 0; i < n; i++) {
        root = insert(root, keys[i]);
    }

    printTree(root, 0);

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
    [Search], [O(log n)], [O(1)],
    [Insertion], [O(log n)], [O(t) for split nodes],
    [Deletion (not covered here)], [O(log n)], [O(t)],
  )]
  , kind: table
  )

- #emph[n] = number of keys in the tree.
- #emph[t] = minimum degree of the B Tree.
- Balancing happens during insertion by splitting full nodes.
- Space is proportional to the number of nodes, plus temporary space for
  splitting.

#horizontalrule

== 7. Real-World Applications
<real-world-applications>
- #strong[Databases];: Efficient indexing to speed up data retrieval.
- #strong[File Systems];: Hierarchical file directories (e.g., NTFS uses
  B+ Tree variant).
- #strong[Storage devices];: Minimizing disk reads/writes for large
  datasets.
- #strong[Multilevel indexing];: When a single level of indexing does
  not scale well.

#horizontalrule

== 8. Key Takeaways
<key-takeaways>
- B Tree is a balanced multi-way tree optimized for systems that
  read/write large blocks of data.
- Nodes can contain multiple keys, reducing the height of the tree.
- Insertion involves locating position, inserting key, and splitting
  when node is full.
- Keeps the tree height low for efficient operations.
- Widely used in systems requiring large-scale and fast data access.

#horizontalrule

== 9. Practice Questions or Problems
<practice-questions-or-problems>
+ #strong[Draw a B Tree of order 4, insert the following keys
  step-by-step:] \
  `15, 8, 22, 5, 10, 18, 25, 30`

+ Implement the #strong[search operation] for a B Tree in C.

+ Modify the insertion code to handle duplicate key insertion
  prevention.

+ Explain how deletion works in a B Tree and implement it for at least
  one deletion case.

+ Compare and contrast B Tree and B+ Tree structures and their typical
  use cases.

#horizontalrule

#strong[\[Insert Diagrams Here\]] \
\- Diagram of B Tree nodes before and after splitting. \
\- Stepwise insertion visual.

#horizontalrule

#emph[End of notes.]
