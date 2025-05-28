= PCC-CS301 : Data Structures and Algorithms with C
<pcc-cs301-data-structures-and-algorithms-with-c>
== Unit 3: Trees
<unit-3-trees>
=== Topic: Tree Operations - Deletion in BST, Searching, Complexity Analysis
<topic-tree-operations---deletion-in-bst-searching-complexity-analysis>

#horizontalrule

== 1. Introduction and Definitions
<introduction-and-definitions>
- #strong[Binary Search Tree (BST):] \
  A #emph[Binary Search Tree] is a binary tree in which each node has a
  comparable key (and possibly associated data) and satisfies the
  property:
  - The left subtree of a node contains only nodes with keys #emph[less]
    than the node's key. \
  - The right subtree of a node contains only nodes with keys
    #emph[greater] than the node's key. \
  - Both left and right subtrees must also be BSTs.
- #strong[Tree Operations Covered:]
  - #emph[Searching] for a key in BST \
  - #emph[Deletion] of a node in BST \
  - Complexity analysis of these operations

#horizontalrule

== 2. Intuition and Working Principle
<intuition-and-working-principle>
- #strong[Searching in BST:] \
  Use the BST property to decide which subtree to explore:
  - If the key is equal to the root node's key → found! \
  - If the key is less → search left subtree \
  - If the key is greater → search right subtree
- #strong[Deletion in BST:] \
  Deleting a node is trickier because the BST property should be
  maintained.
  - #strong[Case 1:] Node to delete is a leaf node → simply remove it. \
  - #strong[Case 2:] Node to delete has one child → replace the node
    with its child. \
  - #strong[Case 3:] Node to delete has two children → replace the node
    with its #emph[inorder successor] (smallest node in the right
    subtree) or #emph[inorder predecessor] (largest node in left
    subtree) then delete that successor/predecessor.

#horizontalrule

== 3. Step-by-Step Explanation with Example
<step-by-step-explanation-with-example>
=== Example BST
<example-bst>
```
        50
       /  \
     30    70
     / \   / \
   20 40 60 80
```

=== Task: Delete 50
<task-delete-50>
- 50 has two children → find inorder successor (minimum in right subtree
  is 60). \
- Replace 50 with 60 \
- Delete the original 60 node which has at most one child \
- Result:

```
        60
       /  \
     30    70
     / \     \
   20  40    80
```

#horizontalrule

== 4. Pseudocode or Algorithm
<pseudocode-or-algorithm>
=== Search in BST
<search-in-bst>
```
BST_Search(root, key):
    if root == NULL:
        return NULL
    if root.key == key:
        return root
    else if key < root.key:
        return BST_Search(root.left, key)
    else:
        return BST_Search(root.right, key)
```

=== Delete in BST
<delete-in-bst>
```
BST_Delete(root, key):  
    if root == NULL:
        return root

    if key < root.key:
        root.left = BST_Delete(root.left, key)
    else if key > root.key:
        root.right = BST_Delete(root.right, key)
    else:
        // Node found
        if root.left == NULL:
            temp = root.right
            free(root)
            return temp
        else if root.right == NULL:
            temp = root.left
            free(root)
            return temp

        // Node with two children
        temp = findMin(root.right) // inorder successor
        root.key = temp.key
        root.right = BST_Delete(root.right, temp.key)

    return root

findMin(node):
    current = node
    while current.left != NULL:
        current = current.left
    return current
```

#horizontalrule

== 5. Code Implementation in C
<code-implementation-in-c>
```c
#include <stdio.h>
#include <stdlib.h>

typedef struct Node {
    int key;
    struct Node *left, *right;
} Node;

Node* newNode(int item) {
    Node* temp = (Node*)malloc(sizeof(Node));
    temp->key = item;
    temp->left = temp->right = NULL;
    return temp;
}

Node* findMin(Node* root) {
    while (root && root->left != NULL)
        root = root->left;
    return root;
}

Node* BST_Search(Node* root, int key) {
    if (root == NULL || root->key == key)
        return root;

    if (key < root->key)
        return BST_Search(root->left, key);
    else
        return BST_Search(root->right, key);
}

Node* BST_Delete(Node* root, int key) {
    if (root == NULL) return root;

    if (key < root->key)
        root->left = BST_Delete(root->left, key);
    else if (key > root->key)
        root->right = BST_Delete(root->right, key);
    else {
        // Node with only one child or no child
        if (root->left == NULL) {
            Node* temp = root->right;
            free(root);
            return temp;
        } else if (root->right == NULL) {
            Node* temp = root->left;
            free(root);
            return temp;
        }

        // Node with two children
        Node* temp = findMin(root->right);
        root->key = temp->key;
        root->right = BST_Delete(root->right, temp->key);
    }
    return root;
}

// For testing: Inorder traversal
void inorder(Node* root) {
    if (root != NULL) {
        inorder(root->left);
        printf("%d ", root->key);
        inorder(root->right);
    }
}

int main() {
    Node* root = newNode(50);
    root->left = newNode(30);
    root->right = newNode(70);
    root->left->left = newNode(20);
    root->left->right = newNode(40);
    root->right->left = newNode(60);
    root->right->right = newNode(80);

    printf("Inorder traversal before deletion:\n");
    inorder(root);
    
    root = BST_Delete(root, 50);

    printf("\nInorder traversal after deletion of 50:\n");
    inorder(root);

    return 0;
}
```

#horizontalrule

== 6. Time and Space Complexity Analysis
<time-and-space-complexity-analysis>
#figure(
  align(center)[#table(
    columns: (10.98%, 31.71%, 35.37%, 21.95%),
    align: (auto,auto,auto,auto,),
    table.header([Operation], [Time Complexity (Average)], [Time
      Complexity (Worst Case)], [Space Complexity],),
    table.hline(),
    [Searching], [O(log n)], [O(n) (skewed tree)], [O(h) recursion depth
    (h = height)],
    [Deletion], [O(log n)], [O(n) (skewed tree)], [O(h) recursion
    depth],
  )]
  , kind: table
  )

- #strong[Explanation:]
  - In a balanced BST, the height `h ≈ log n`, making search and delete
    efficient. \
  - In the worst case (a skewed tree), operations degrade to linear
    time. \
  - Space complexity is mainly due to recursion stack for recursive
    implementations.

#horizontalrule

== 7. Real-World Applications
<real-world-applications>
- #strong[Database indexing:] BSTs help in implementing indexing
  structures like balanced BSTs (e.g., AVL, Red-Black trees). \
- #strong[Dynamic sets and maps:] BSTs store sorted dynamic data
  supporting efficient searching, insertion, and deletion. \
- #strong[In-memory searching:] When storing large sets of data elements
  in memory, BSTs provide quick lookups. \
- #strong[Symbol tables in compilers:] Efficient variable lookups during
  compilation stages.

#horizontalrule

== 8. Key Takeaways
<key-takeaways>
- BST operations rely heavily on the binary search property to reduce
  search and deletion complexity. \
- Deletion has three cases, and handling the two children case requires
  finding the inorder successor or predecessor. \
- Recursive implementation keeps the logic straightforward but consumes
  stack space proportional to height. \
- Time complexities depend on tree balance; self-balancing trees improve
  worst-case performance. \
- Understanding these basic tree operations is fundamental for more
  advanced tree structures and algorithms.

#horizontalrule

== 9. Practice Questions or Problems
<practice-questions-or-problems>
+ Implement iterative search and deletion in a BST. \
+ Write a C function to find the inorder predecessor of a given node in
  a BST. \
+ Modify the deletion operation to use inorder predecessor instead of
  successor for deletion of nodes with two children. \
+ Given a BST, write a function to count the number of nodes in it. \
+ Implement a function to check if a binary tree satisfies BST
  properties. \
+ Design a program to insert nodes into BST and then print the level
  order traversal. \
+ Analyze the effect of inserting keys in sorted order into a BST. How
  does the shape affect search cost? \
+ Compare and contrast deletion in BST with deletion in AVL or Red-Black
  trees.

#horizontalrule

#emph[Insert relevant tree diagrams and flowcharts here to visualize
traversal, search paths, and deletion cases.]
