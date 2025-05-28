# PCC-CS301 : Data Structures and Algorithms with C  
## Unit 3: Trees  
### Topic: B+ Tree - Comparison with B Tree, insertion algorithm

---

## 1. Introduction and Definitions

- **B Tree:**
  - A self-balancing tree data structure that maintains sorted data.
  - Allows searches, sequential access, insertions, and deletions in logarithmic time.
  - Each node can have multiple keys and children.
  
- **B+ Tree:**
  - A variant of B Tree.
  - All records are stored at the leaf nodes.
  - Internal nodes only store keys and act as guides to the leaves.
  - Leaves are linked together in a linked list for efficient range queries.

- **Key Terms:**
  - **Order (m):** Maximum number of children a node can have.
  - **Internal Node:** Node that has children.
  - **Leaf Node:** Contains actual records (in B+ trees).
  - **Keys:** Values stored to guide the search path.
  
---

## 2. Intuition and Working Principle

- **B Tree:**
  - Data entries stored at all nodes (internal + leaf).
  - Suitable for databases where updates and searching happen at any node.
  
- **B+ Tree:**
  - Data entries only at leaf level.
  - Internal nodes store only keys to guide search.
  - Leaf nodes linked together → effective for range queries.
  - Better for systems requiring many range scans (like file systems and databases)

- **Why B+ Tree?**  
  - Simplifies range queries.
  - Improves block reads by grouping data at leaf nodes.
  - More efficient storage utilization.

---

## 3. Step-by-step Explanation with Example

### Example: Insert keys `[10, 20, 5, 6, 12, 30, 7, 17]` into an empty B+ tree of order 3.

- **Step 1:** Insert `10`  
  Tree is empty → Create leaf node with key 10.
  
- **Step 2:** Insert `20`  
  Leaf node: `[10, 20]`.
  
- **Step 3:** Insert `5`  
  Leaf node now has `[5, 10, 20]`.
  Max keys in leaf reached for order 3 → split needed.

- **Step 4:** Split leaf:
  - Split into two leaves: `[5, 6]` and `[10, 20]`.
  - Push middle key `10` to the parent.
  
- **Step 5:** Insert further keys (`6, 12, 30, 7, 17`), follow same steps:
  - Insert into appropriate leaf.
  - Split leaf if full.
  - Promote middle key to internal node.
  - Split internal node if full.
  
(*Insert diagrams here showing leaf splits and internal node updates.*)

---

## 4. Pseudocode or Algorithm

```plaintext
Algorithm: BPlusTreeInsert(key)

1. Find the leaf node L where the key should be inserted.
2. Insert the key into L in sorted order.
3. If L has more than the allowed number of keys (overflow):
    a. Split L into L and L'.
    b. Promote the smallest key from L' to the parent node.
    c. If parent node overflows, recursively split and promote.
4. If the root overflows, create a new root with two children.
```

---

## 5. Code Implementation in C

```c
#include <stdio.h>
#include <stdlib.h>

#define ORDER 3

typedef struct BPlusNode {
    int keys[ORDER - 1];
    struct BPlusNode* children[ORDER];
    struct BPlusNode* next; // Pointer for leaf linkage
    int keyCount;
    int leaf; // 1 if leaf node, 0 if internal
} BPlusNode;

// Create a new node
BPlusNode* createNode(int leaf) {
    BPlusNode* newNode = (BPlusNode*)malloc(sizeof(BPlusNode));
    newNode->leaf = leaf;
    newNode->keyCount = 0;
    newNode->next = NULL;
    for(int i = 0; i < ORDER; i++)
        newNode->children[i] = NULL;
    return newNode;
}

// Function prototypes
BPlusNode* insert(BPlusNode* root, int key);
void insertInternal(BPlusNode* root, int key, BPlusNode* child);
void splitChild(BPlusNode* parent, int index, BPlusNode* child);
void printTree(BPlusNode* root, int level);

// Insert key into a leaf node
BPlusNode* insert(BPlusNode* root, int key) {
    // If tree is empty, create root as leaf and insert key
    if (root == NULL) {
        root = createNode(1);
        root->keys[0] = key;
        root->keyCount = 1;
        return root;
    }
    
    BPlusNode* current = root;
    BPlusNode* parent = NULL;
    int i;

    // Traverse to the leaf level
    while (!current->leaf) {
        parent = current;
        for (i = 0; i < current->keyCount; i++) {
            if (key < current->keys[i])
                break;
        }
        current = current->children[i];
    }

    // Insert key into leaf node
    int pos;
    for (pos = 0; pos < current->keyCount && current->keys[pos] < key; pos++);

    for (i = current->keyCount; i > pos; i--)
        current->keys[i] = current->keys[i - 1];

    current->keys[pos] = key;
    current->keyCount++;

    // If overflow occurs in leaf node, split leaf
    if (current->keyCount == ORDER) {
        // Create new leaf node
        BPlusNode* newLeaf = createNode(1);
        
        // Copy second half keys to new leaf
        int mid = (ORDER) / 2;
        newLeaf->keyCount = current->keyCount - mid;
        for (i = 0; i < newLeaf->keyCount; i++)
            newLeaf->keys[i] = current->keys[i + mid];

        current->keyCount = mid;

        // Link the new leaf node
        newLeaf->next = current->next;
        current->next = newLeaf;

        // Promote first key of new leaf to parent
        if (parent == NULL) {
            // Create new root if at root
            BPlusNode* newRoot = createNode(0);
            newRoot->keys[0] = newLeaf->keys[0];
            newRoot->children[0] = current;
            newRoot->children[1] = newLeaf;
            newRoot->keyCount = 1;
            return newRoot;
        } else {
            insertInternal(parent, newLeaf->keys[0], newLeaf);
        }
    }
    return root;
}

// Insert key to internal node (recursive handling of splits)
void insertInternal(BPlusNode* root, int key, BPlusNode* child) {
    int i;
    // Find position to insert key
    for (i = root->keyCount; (i > 0) && (root->keys[i - 1] > key); i--) {
        root->keys[i] = root->keys[i - 1];
        root->children[i + 1] = root->children[i];
    }
    root->keys[i] = key;
    root->children[i + 1] = child;
    root->keyCount++;

    if (root->keyCount == ORDER) {
        // Split internal node
        int mid = (ORDER) / 2;
        BPlusNode* newInternal = createNode(0);

        // Copy keys and children from mid+1 to end to newInternal
        for (i = mid + 1; i < ORDER; i++) {
            newInternal->keys[i - mid - 1] = root->keys[i];
            newInternal->children[i - mid - 1] = root->children[i];
        }
        newInternal->children[i - mid - 1] = root->children[i];
        newInternal->keyCount = ORDER - mid - 1;

        // Reduce key count of root
        root->keyCount = mid;

        // Promotion key
        int promotionKey = root->keys[mid];

        // TODO: Handle connection to parent of root if exists (requires parent pointer or tree structure wrapper)
        // For simplicity, this basic example handles only from root.

        // Normally, here we'd create a new root or recursively insert upwards.
    }
}

// Print tree (for debugging)
void printTree(BPlusNode* root, int level) {
    if (root == NULL) return;
    printf("Level %d [", level);
    for (int i = 0; i < root->keyCount; i++)
        printf("%d ", root->keys[i]);
    printf("]\n");
    if (!root->leaf) {
        for (int i = 0; i <= root->keyCount; i++) {
            printTree(root->children[i], level + 1);
        }
    }
}

int main() {
    BPlusNode* root = NULL;
    int keys[] = {10, 20, 5, 6, 12, 30, 7, 17};
    int n = sizeof(keys) / sizeof(keys[0]);

    for (int i = 0; i < n; i++) {
        root = insert(root, keys[i]);
    }

    printTree(root, 0);
    return 0;
}
```

*Note: This is a simplified demo for teaching purposes. A full B+ tree implementation requires careful management of parent nodes and recursive splitting.*

---

## 6. Time and Space Complexity Analysis

- **Search:**  
  - Time complexity: O(log n), where n is the number of keys.
  - Due to balanced nature and multi-way branching.

- **Insertion:**  
  - Time complexity: O(log n), involves locating the leaf and possibly splitting nodes.
  
- **Space Complexity:**  
  - O(n), as all keys are stored in the leaf nodes.
  - Additional pointers are stored in internal nodes; overhead depends on order.

---

## 7. Real-world Applications

- **Database Systems:**  
  Efficient indexing of large datasets.

- **File Systems:**  
  Used in NTFS, ReiserFS for indexing file blocks.

- **Key-Value Stores:**  
  Optimized lookups and range queries.

- **Storage Systems and Data Warehouses:**  
  Support fast insertion and search with large datasets.

---

## 8. Key Takeaways

- B+ tree stores all data at the leaves and internal nodes only keep keys.
- Leaf nodes are linked to facilitate efficient range queries.
- Insertion may trigger node splits that propagate upward, potentially creating a new root.
- B+ trees are preferred over B trees in systems with heavy range query requirements.
- Efficient in both search and sequential access.

---

## 9. Practice Questions or Problems

1. Insert the following keys into an empty B+ Tree of order 4: `15, 22, 7, 3, 9, 27, 12`.
   - Draw the tree after each insertion.
   
2. Explain the difference in node structure between B and B+ trees. Why does the B+ tree improve range query performance?

3. Write pseudocode to handle deletion of a key in a B+ tree.

4. Implement a search function for the above C code that returns whether a key exists.

5. Analyze what happens during splitting of internal nodes with an example.

6. Compare the space utilization differences between B+ trees and B trees.

---

*Insert diagrams wherever needed for clarity, especially examples with split processes and node structures.*