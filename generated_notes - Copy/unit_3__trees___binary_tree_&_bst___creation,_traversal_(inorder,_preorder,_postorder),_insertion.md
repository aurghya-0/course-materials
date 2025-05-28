# PCC-CS301: Data Structures and Algorithms with C  
## Unit 3: Trees: Binary Tree & BST  
### Topic: Creation, Traversal (Inorder, Preorder, Postorder), Insertion

---

## 1. Introduction and Definitions

- **Tree**: A hierarchical data structure consisting of nodes, with a single root node and zero or more child nodes.
- **Binary Tree**: A tree where each node has at most two children, commonly called the left and right child.
- **Binary Search Tree (BST)**: A special kind of binary tree that maintains sorted order. For every node:
  - Left subtree contains nodes with values **less** than the node’s value.
  - Right subtree contains nodes with values **greater** than the node’s value.
  
---

## 2. Intuition and Working Principle

- **Binary Tree** is used to represent hierarchical data such as syntax trees.
- **BST** organizes data for efficient searching, insertion, and deletion.
- **Traversal** means visiting all nodes in a specific order:
  - **Inorder**: Left → Node → Right (Sorted order for BST)
  - **Preorder**: Node → Left → Right
  - **Postorder**: Left → Right → Node
- **Insertion** in BST places a node in a way that keeps the tree sorted.

---

## 3. Step-by-Step Explanation with Example

### Creating a Binary Tree node:

1. Create a node structure having data, pointer to left child, and pointer to right child.
2. Initialize nodes and connect them.

### Example Binary Tree (values inside nodes):
```
       10
      /  \
     5    15
```

### Traversal Example:

- **Inorder** of above: 5 → 10 → 15
- **Preorder**: 10 → 5 → 15
- **Postorder**: 5 → 15 → 10

### Insertion in BST:

- Insert 12 in the tree above.
- Compare with root 10: 12 > 10 → go right.
- Right child is 15: 12 < 15 → insert 12 as left child of 15.

---

## 4. Pseudocode or Algorithm

### Binary Tree Traversals

```plaintext
Inorder(node):
  if (node == NULL)
    return
  Inorder(node.left)
  print(node.data)
  Inorder(node.right)

Preorder(node):
  if (node == NULL)
    return
  print(node.data)
  Preorder(node.left)
  Preorder(node.right)

Postorder(node):
  if (node == NULL)
    return
  Postorder(node.left)
  Postorder(node.right)
  print(node.data)
```

### Insertion in BST

```plaintext
InsertBST(root, key):
  if (root == NULL):
    create node with key and return node

  if (key < root.data):
    root.left = InsertBST(root.left, key)
  else if (key > root.data):
    root.right = InsertBST(root.right, key)
  return root
```

---

## 5. Code Implementation in C

```c
#include <stdio.h>
#include <stdlib.h>

// Node structure for Binary Tree & BST
struct Node {
    int data;
    struct Node* left;
    struct Node* right;
};

// Create new node
struct Node* newNode(int data) {
    struct Node* node = (struct Node*)malloc(sizeof(struct Node));
    node->data = data;
    node->left = NULL;
    node->right = NULL;
    return node;
}

// Inorder Traversal
void inorder(struct Node* root) {
    if (root != NULL) {
        inorder(root->left);
        printf("%d ", root->data);
        inorder(root->right);
    }
}

// Preorder Traversal
void preorder(struct Node* root) {
    if (root != NULL) {
        printf("%d ", root->data);
        preorder(root->left);
        preorder(root->right);
    }
}

// Postorder Traversal
void postorder(struct Node* root) {
    if (root != NULL) {
        postorder(root->left);
        postorder(root->right);
        printf("%d ", root->data);
    }
}

// Insert node in BST
struct Node* insertBST(struct Node* root, int key) {
    if (root == NULL) {
        return newNode(key);
    }
    if (key < root->data) {
        root->left = insertBST(root->left, key);
    } else if (key > root->data) {
        root->right = insertBST(root->right, key);
    }
    return root;
}

// Main function to demonstrate working
int main() {
    struct Node* root = NULL;
    root = insertBST(root, 10);
    root = insertBST(root, 5);
    root = insertBST(root, 15);
    root = insertBST(root, 12);

    printf("Inorder traversal: ");
    inorder(root);
    printf("\nPreorder traversal: ");
    preorder(root);
    printf("\nPostorder traversal: ");
    postorder(root);
    
    return 0;
}
```

---

## 6. Time and Space Complexity Analysis

| Operation         | Average Time Complexity | Worst-case Time Complexity | Space Complexity             |
|-------------------|------------------------|----------------------------|------------------------------|
| Traversals (all)  | O(n)                   | O(n)                       | O(h) (recursive call stack), where h = height of tree  |
| Insertion in BST  | O(log n)               | O(n) (skewed tree)         | O(h) (recursive call stack)   |

- **n** = number of nodes
- Balanced BST has height **h ≈ log n**, skewed tree height **h ≈ n**

---

## 7. Real-World Applications

- **Binary Trees** used in:
  - Expression parsing (compilers)
  - Hierarchical data representation (file systems)
- **Binary Search Trees** used in:
  - Implementing dynamic sets and dictionaries
  - Ordered data storage and retrieval
  - Databases and file systems for indexing

---

## 8. Key Takeaways

- Binary tree nodes have at most two children.
- BST enables efficient searching by maintaining order.
- Tree traversal systematically visits nodes in a defined order.
- Inorder traversal of BST always yields sorted sequence.
- Recursive functions are commonly used to implement traversal and insertion.
- Proper insertion keeps BST structure intact for quick operations.

---

## 9. Practice Questions or Problems

1. Write a function to find the height of a binary tree.
2. Implement a function to search for a value in a BST.
3. Write a program to delete a node from a BST.
4. Convert a sorted array into a balanced BST.
5. Print level-order (breadth-first) traversal of a binary tree.
6. Count the number of leaf nodes in a binary tree.
7. Check if a given binary tree is a BST.

---

*Space reserved here for: Diagrams illustrating binary tree structure, traversal orders, and insertion steps.*