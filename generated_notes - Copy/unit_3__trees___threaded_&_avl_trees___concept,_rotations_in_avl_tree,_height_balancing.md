# PCC-CS301 : Data Structures and Algorithms with C  
## Unit 3: Trees - Threaded & AVL Trees  
### Topic: Threaded & AVL Trees - Concept, Rotations in AVL Tree, Height-Balancing

---

## 1. Introduction and Definitions

**Trees** are hierarchical data structures consisting of nodes connected by edges. In this unit, we explore two advanced types of binary trees: **Threaded Trees** and **AVL Trees**.

### Threaded Trees
- **Definition**: A binary tree variant where null pointers are replaced with "threads" pointing to the in-order predecessor or successor nodes.
- **Purpose**: Facilitate efficient in-order traversal without using a stack or recursion.

### AVL Trees
- **Definition**: A self-balancing Binary Search Tree (BST) where the height difference (balance factor) between left and right subtrees of any node is at most 1.
- **Purpose**: Maintain logarithmic height, ensuring O(log n) time for search, insertion, and deletion operations.

---

## 2. Intuition and Working Principle

### Threaded Trees
- Traditional BSTs have many null pointers.
- These null pointers are used to link nodes in in-order sequence via threads.
- This threading allows traversal to follow these pointers directly instead of recursion/stack.

### AVL Trees
- After insertion or deletion, the tree may become unbalanced.
- AVL trees keep track of the height of subtrees.
- If imbalance (difference > 1) occurs, **rotations** (single or double) are performed to restore balance.
- Rotations restructure the tree locally to maintain height balance.

---

## 3. Step-by-Step Explanation with Example

### 3.1 Threaded Binary Tree (In-order threading)
- Start with a standard BST.
- Replace NULL left pointer with a thread to in-order predecessor.
- Replace NULL right pointer with a thread to in-order successor.
- Traversal follows these threads efficiently.

**Example:**

```
  20
 /  \
10   30
```

- Left child of 10 is NULL, so thread points to predecessor if any.
- Right child of 30 is NULL, so thread points to successor if any.

---

### 3.2 AVL Tree Rotations and Height-balancing

#### Balance Factor = Height(Left Subtree) - Height(Right Subtree)

| Balance Factor | Condition            | Rotation Needed      |
| -------------- | -------------------- | -------------------- |
| > 1            | Left Heavy           | Right Rotation       |
| < -1           | Right Heavy          | Left Rotation        |
| > 1 and BF(left child) < 0 | Left-Right Case | Left Rotation on left child, then Right Rotation |
| < -1 and BF(right child) > 0 | Right-Left Case | Right Rotation on right child, then Left Rotation |

#### Example

Insert nodes: 10 → 20 → 30 (causes imbalance)

Tree after insertion:

```
  10
    \
     20
       \
        30
```

- Balance factor of node 10 = 0 - 2 = -2 (Right Heavy)
- Apply **Left Rotation** on node 10

After Left Rotation:

```
   20
  /  \
 10   30
```

Balanced AVL tree.

---

## 4. Pseudocode or Algorithm

### 4.1 AVL Tree Insertion with Rotation

```
function insert_node(root, key):
    if root == NULL:
        return newNode(key)

    if key < root.key:
        root.left = insert_node(root.left, key)
    else if key > root.key:
        root.right = insert_node(root.right, key)
    else:
        return root  // No duplicates allowed

    // Update height of root
    root.height = 1 + max(height(root.left), height(root.right))

    // Get balance factor
    balance = height(root.left) - height(root.right)

    // If node is unbalanced, check cases

    // Left Left Case
    if balance > 1 and key < root.left.key:
        return right_rotate(root)

    // Right Right Case
    if balance < -1 and key > root.right.key:
        return left_rotate(root)

    // Left Right Case
    if balance > 1 and key > root.left.key:
        root.left = left_rotate(root.left)
        return right_rotate(root)

    // Right Left Case
    if balance < -1 and key < root.right.key:
        root.right = right_rotate(root.right)
        return left_rotate(root)

    return root

function right_rotate(y):
    x = y.left
    T2 = x.right

    x.right = y
    y.left = T2

    y.height = 1 + max(height(y.left), height(y.right))
    x.height = 1 + max(height(x.left), height(x.right))

    return x

function left_rotate(x):
    y = x.right
    T2 = y.left

    y.left = x
    x.right = T2

    x.height = 1 + max(height(x.left), height(x.right))
    y.height = 1 + max(height(y.left), height(y.right))

    return y
```

---

## 5. Code Implementation in C

```c
#include <stdio.h>
#include <stdlib.h>

typedef struct Node {
    int key;
    struct Node *left;
    struct Node *right;
    int height;
} Node;

int max(int a, int b) {
    return (a > b) ? a : b;
}

int height(Node *N) {
    if (N == NULL) return 0;
    return N->height;
}

Node* newNode(int key) {
    Node* node = (Node*)malloc(sizeof(Node));
    node->key = key;
    node->left = node->right = NULL;
    node->height = 1;
    return node;
}

Node* rightRotate(Node* y) {
    Node* x = y->left;
    Node* T2 = x->right;

    x->right = y;
    y->left = T2;

    y->height = max(height(y->left), height(y->right)) + 1;
    x->height = max(height(x->left), height(x->right)) + 1;

    return x;
}

Node* leftRotate(Node* x) {
    Node* y = x->right;
    Node* T2 = y->left;

    y->left = x;
    x->right = T2;

    x->height = max(height(x->left), height(x->right)) + 1;
    y->height = max(height(y->left), height(y->right)) + 1;

    return y;
}

int getBalance(Node* N) {
    if (N == NULL) return 0;
    return height(N->left) - height(N->right);
}

Node* insert(Node* node, int key) {
    if (node == NULL)
        return newNode(key);

    if (key < node->key)
        node->left = insert(node->left, key);
    else if (key > node->key)
        node->right = insert(node->right, key);
    else // no duplicates
        return node;

    node->height = 1 + max(height(node->left), height(node->right));
    int balance = getBalance(node);

    // Left Left Case
    if (balance > 1 && key < node->left->key)
        return rightRotate(node);

    // Right Right Case
    if (balance < -1 && key > node->right->key)
        return leftRotate(node);

    // Left Right Case
    if (balance > 1 && key > node->left->key) {
        node->left = leftRotate(node->left);
        return rightRotate(node);
    }

    // Right Left Case
    if (balance < -1 && key < node->right->key) {
        node->right = rightRotate(node->right);
        return leftRotate(node);
    }

    return node;
}

void preOrder(Node *root) {
    if(root != NULL) {
        printf("%d ", root->key);
        preOrder(root->left);
        preOrder(root->right);
    }
}

int main() {
    Node *root = NULL;

    root = insert(root, 10);
    root = insert(root, 20);
    root = insert(root, 30);
    root = insert(root, 40);
    root = insert(root, 50);
    root = insert(root, 25);

    printf("Preorder traversal of the AVL tree is:\n");
    preOrder(root);

    return 0;
}
```

---

## 6. Time and Space Complexity Analysis

| Operation     | Time Complexity      | Space Complexity        |
|---------------|---------------------|------------------------|
| Search        | O(log n) (balanced) | O(1)                   |
| Insertion     | O(log n)            | O(h) (recursion stack) |
| Deletion      | O(log n)            | O(h)                   |
| Threaded Tree Traversal | O(n) without recursion or stack | O(n) (tree nodes) |

- **AVL Trees** maintain logarithmic height through rotations.
- Rotations take O(1) time.
- Height updates and balance calculation are also O(1).

---

## 7. Real-world Applications

- **AVL Trees**:
  - Databases for indexing to allow efficient search and update.
  - Memory management systems.
  - Network routing algorithms.
  - Implementing priority queues with balanced insertions and deletions.

- **Threaded Trees**:
  - Useful in memory-constrained environments to perform in-order traversals efficiently.
  - Compilers and expression tree traversals.
  - Applications where stack or recursion overhead is costly.

---

## 8. Key Takeaways

- **Threaded Trees** optimize in-order traversal by utilizing null pointers as threads, avoiding recursion and stack usage.
- **AVL Trees** ensure tree balance by maintaining a balance factor ≤ 1 through rotations.
- Four types of rotations (LL, RR, LR, RL) are used to fix imbalances.
- Balanced trees guarantee O(log n) time complexity for critical operations.
- Understanding rotations and balancing is crucial for self-balancing tree data structures.

---

## 9. Practice Questions or Problems

1. Implement a Threaded Binary Tree with in-order threading. Write functions for insertion and threading.
2. Insert the following keys into an empty AVL tree and show step-by-step rotations: 30, 20, 40, 10, 25, 50, 5.
3. Write a function to delete a node from an AVL tree and ensure it remains balanced after deletion.
4. Given a threaded binary tree, write a function to perform in-order traversal without recursion or stack.
5. Explain and demonstrate the "Right-Left" rotation case with an example.
6. Analyze the height of an AVL tree after inserting n nodes in ascending order.
7. Compare AVL trees with Red-Black trees for balancing and rotations.

---

*Leave space here for diagrams illustrating:*  
- Basic Threaded tree pointers overview.  
- AVL tree rotations: Left, Right, Left-Right, Right-Left.  
- Example trees before and after rotations.

---