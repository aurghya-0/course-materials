= PCC-CS301 : Data Structures and Algorithms with C
<pcc-cs301-data-structures-and-algorithms-with-c>
== Unit 4: Sorting & Hashing
<unit-4-sorting-hashing>
=== Topic: Hashing Basics - Hash function, Collision Resolution: Chaining, Open Addressing
<topic-hashing-basics---hash-function-collision-resolution-chaining-open-addressing>

#horizontalrule

== 1. Introduction and Definitions
<introduction-and-definitions>
#strong[Hashing] is a technique used to uniquely identify a specific
object from a group of similar objects. It's widely used in data
retrieval, storage, and searching due to its efficiency.

- #strong[Hash Function];: A function that converts a given key into an
  integer index in a hash table.
- #strong[Hash Table];: A data structure that stores key-value pairs for
  quick access.
- #strong[Collision];: When two different keys hash to the same index.
- #strong[Collision Resolution];: Methods to handle collisions, mainly:
  - #strong[Chaining];: Use linked lists at each bucket.
  - #strong[Open Addressing];: Find another empty slot within the table.

#horizontalrule

== 2. Intuition and Working Principle
<intuition-and-working-principle>
- Hashing maps large datasets into manageable indexed arrays.
- Think of a hash function as a machine that assigns each key a locker
  number.
- Due to limited lockers (hash table size), two keys might get the same
  locker number (collision).
- To fix collisions:
  - #strong[Chaining] stores multiple items in linked lists at that
    locker.
  - #strong[Open Addressing] searches for another empty locker nearby.

This provides near-constant time average insertion, deletion, and search
operations.

#horizontalrule

== 3. Step-by-Step Explanation with Example
<step-by-step-explanation-with-example>
=== 3.1 Hash Function
<hash-function>
- Example: `h(key) = key % 10` (modulus operation to keep indexes within
  table size 10).

=== 3.2 Example Keys
<example-keys>
Keys to insert: 12, 22, 42, 25, 35

#figure(
  align(center)[#table(
    columns: 2,
    align: (auto,auto,),
    table.header([Key], [Index (h(key)) = key % 10],),
    table.hline(),
    [12], [2],
    [22], [2 (collision!)],
    [42], [2 (collision!)],
    [25], [5],
    [35], [5 (collision!)],
  )]
  , kind: table
  )

=== 3.3 Collision Resolution - Chaining
<collision-resolution---chaining>
- Store all keys that map to the same index in a linked list at that
  index.

=== 3.4 Collision Resolution - Open Addressing (Linear Probing)
<collision-resolution---open-addressing-linear-probing>
- If index is occupied, try the next index `(index + 1) % 10` until an
  empty slot is found.

#horizontalrule

== 4. Pseudocode or Algorithm
<pseudocode-or-algorithm>
=== 4.1 Insert Using Chaining
<insert-using-chaining>
```
function insert_chaining(hash_table, key):
    index = hash_function(key)
    if hash_table[index] is empty:
        create new linked list at hash_table[index]
    append key to hash_table[index]'s linked list
```

=== 4.2 Search Using Chaining
<search-using-chaining>
```
function search_chaining(hash_table, key):
    index = hash_function(key)
    if hash_table[index] is empty:
        return NOT_FOUND
    else:
        search key in linked list at hash_table[index]
        if found:
            return key
        else:
            return NOT_FOUND
```

=== 4.3 Insert Using Open Addressing (Linear Probing)
<insert-using-open-addressing-linear-probing>
```
function insert_open_addressing(hash_table, key):
    index = hash_function(key)
    start_index = index

    while hash_table[index] is occupied:
        index = (index + 1) % hash_table_size
        if index == start_index:
            return TABLE_FULL

    hash_table[index] = key
    return SUCCESS
```

#horizontalrule

== 5. Code Implementation in C
<code-implementation-in-c>
```c
#include <stdio.h>
#include <stdlib.h>

#define TABLE_SIZE 10

// Node structure for chaining
typedef struct Node {
    int key;
    struct Node* next;
} Node;

Node* hashTableChaining[TABLE_SIZE];

// Hash Function
int hashFunction(int key) {
    return key % TABLE_SIZE;
}

// Insert in Chaining
void insertChaining(int key) {
    int index = hashFunction(key);
    Node* newNode = (Node*)malloc(sizeof(Node));
    newNode->key = key;
    newNode->next = hashTableChaining[index];
    hashTableChaining[index] = newNode;
}

// Search in Chaining
int searchChaining(int key) {
    int index = hashFunction(key);
    Node* curr = hashTableChaining[index];
    while (curr) {
        if (curr->key == key)
            return index;
        curr = curr->next;
    }
    return -1; // Not found
}

// Open Addressing: Linear Probing
int hashTableOpen[TABLE_SIZE];

// Insert in Open Addressing
int insertOpenAddressing(int key) {
    int index = hashFunction(key);
    int start_index = index;

    while(hashTableOpen[index] != -1) {
        index = (index + 1) % TABLE_SIZE;
        if(index == start_index) {
            return 0; // table full
        }
    }
    hashTableOpen[index] = key;
    return 1; // success
}

// Search in Open Addressing
int searchOpenAddressing(int key) {
    int index = hashFunction(key);
    int start_index = index;

    while(hashTableOpen[index] != -1) {
        if(hashTableOpen[index] == key)
            return index;
        index = (index + 1) % TABLE_SIZE;
        if(index == start_index)
            break;
    }
    return -1;
}

int main() {
    // Initializing
    for(int i = 0; i < TABLE_SIZE; i++) {
        hashTableChaining[i] = NULL;
        hashTableOpen[i] = -1;
    }

    // Insert keys with chaining
    insertChaining(12);
    insertChaining(22);
    insertChaining(42);

    // Insert keys with open addressing
    insertOpenAddressing(12);
    insertOpenAddressing(22);
    insertOpenAddressing(42);

    // Sample search
    printf("Searching 22 in chaining: Index %d\n", searchChaining(22));
    printf("Searching 42 in open addressing: Index %d\n", searchOpenAddressing(42));

    return 0;
}
```

#horizontalrule

== 6. Time and Space Complexity Analysis
<time-and-space-complexity-analysis>
#figure(
  align(center)[#table(
    columns: (25.64%, 37.18%, 37.18%),
    align: (auto,auto,auto,),
    table.header([Operation], [Chaining], [Open Addressing],),
    table.hline(),
    [Search], [Average: O(1 + α) (α = load factor)], [Average: O(1 + α),
    worst-case O(n) (when probing several times)],
    [Insertion], [Average: O(1)], [Average: O(1), worst-case O(n)],
    [Deletion], [O(1) (if pointer available)], [O(1) but more complex
    (tombstones)],
    [Space Complexity], [O(n + m) where m = table size (linked list
    nodes)], [O(m) (array size)],
  )]
  , kind: table
  )

#horizontalrule

== 7. Real-World Applications
<real-world-applications>
- #strong[Databases];: Quick data retrieval using hash indexes.
- #strong[Caching];: Storing temporary data for faster access.
- #strong[Symbol Tables];: Used in compilers for variable/function
  lookups.
- #strong[Password Storage];: Hashing passwords before storage (with
  secure hash functions).
- #strong[Load Balancing];: Hashing client requests to servers.
- #strong[Deduplication];: Hashing to detect duplicates in data.

#horizontalrule

== 8. Key Takeaways
<key-takeaways>
- Hash functions map keys to an index in a hash table.
- Collisions are unavoidable; resolving them efficiently is key.
- Chaining is simple and handles collisions by linked lists.
- Open Addressing uses probing to find open slots.
- Hashing offers average constant time complexity.
- Choosing a good hash function and table size reduces collisions.

#horizontalrule

== 9. Practice Questions or Problems
<practice-questions-or-problems>
+ #strong[Write a C program] to implement hash table insertion and
  search using chaining.
+ #strong[Implement deletion functionality] for open addressing with
  linear probing.
+ List #strong[advantages and disadvantages] of chaining vs open
  addressing.
+ Given keys `[7, 27, 37, 47, 57]` and a hash table of size 10, insert
  these keys using:
  - Chaining
  - Open Addressing (linear probing)
+ Design a #strong[hash function] for strings storing student names.
+ Compare the performance of hash tables with arrays for searching.
+ Explain what happens when the load factor exceeds 0.7 in a hash table
  using open addressing.
+ Implement a #strong[hash table with quadratic probing] as a collision
  resolution method.
+ Discuss #strong[security concerns] when using hashing for password
  storage.
+ Given a sequence of inserts and deletes, track the state of a hash
  table using chaining.

#horizontalrule

#emph[Space for diagrams: \
\- Hash table structure \
\- Collision resolution by chaining \
\- Collision resolution by linear probing]
