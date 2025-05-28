# PCC-CS301: Data Structures and Algorithms with C  
## Unit 4: Graphs – Graphs & Traversals  
### Topic: Representation, BFS and DFS algorithms and complexity

---

## 1. Introduction and Definitions

- **Graph:** A mathematical structure used to model pairwise relations between objects.  
- **Vertices (Nodes):** Individual elements or points in a graph.  
- **Edges (Links):** Connections between vertices.  
- **Types of Graphs:**  
  - **Directed Graph (Digraph):** Edges have directions (from one vertex to another).  
  - **Undirected Graph:** Edges are bidirectional.  
  - **Weighted Graph:** Edges carry weights/costs.  
  - **Unweighted Graph:** Edges have no weight.  
- **Traversing a Graph:** Systematically visiting all vertices or nodes using algorithms like BFS or DFS.

---

## 2. Intuition and Working Principle

### Why graph traversal?  
- To explore all vertices and edges, find paths, check connectivity, detect cycles, etc.

### Graph Traversal Algorithms:  
- **Breadth First Search (BFS):**  
  Explores neighbors level-by-level starting from a source vertex. Uses a queue data structure.  
- **Depth First Search (DFS):**  
  Explores as far as possible along one branch before backtracking. Uses recursion or a stack.

---

## 3. Step-by-step Explanation with Example

### Example Graph:

```
  A
 / \
B   C
|    \
D----E
```

### Representation:

Vertices: {A, B, C, D, E}  
Edges: {(A,B), (A,C), (B,D), (C,E), (D,E)}

### BFS Starting from A:

1. Start at A, visit it. Queue = [A]  
2. Dequeue A, enqueue neighbors B, C. Visited: A  
3. Dequeue B, enqueue neighbor D. Visited: A, B  
4. Dequeue C, enqueue neighbor E. Visited: A, B, C  
5. Dequeue D, enqueue neighbor E (already visited, skip). Visited: A, B, C, D  
6. Dequeue E, no new neighbors. Visited: A, B, C, D, E

Order visited: **A, B, C, D, E**

---

### DFS Starting from A:

1. Start at A, visit it  
2. Visit neighbor B  
3. Visit B’s neighbor D  
4. Visit D’s neighbor E  
5. Visit E’s neighbor C (assuming adjacency order)  
6. C has no unvisited neighbors; Backtrack until all visited

Order visited (one possible): **A, B, D, E, C**

---

## 4. Pseudocode or Algorithm

### BFS Algorithm:

```
BFS(Graph G, vertex start):
    create a queue Q
    mark start as visited
    enqueue start into Q

    while Q is not empty do
        vertex v = dequeue from Q
        process v (e.g., print v)
        for each neighbor u of v do
            if u is not visited then
                mark u as visited
                enqueue u into Q
```

---

### DFS Algorithm (recursive):

```
DFS(Graph G, vertex v):
    mark v as visited
    process v (e.g., print v)
    for each neighbor u of v do
        if u is not visited then
            DFS(G, u)
```

---

## 5. Code Implementation in C

```c
#include <stdio.h>
#include <stdlib.h>

#define MAX 100

// Graph represented as adjacency list
typedef struct Node {
    int vertex;
    struct Node* next;
} Node;

typedef struct Graph {
    int numVertices;
    Node** adjLists;
    int* visited;
} Graph;

// Create a node
Node* createNode(int v) {
    Node* newNode = malloc(sizeof(Node));
    newNode->vertex = v;
    newNode->next = NULL;
    return newNode;
}

// Create a graph
Graph* createGraph(int vertices) {
    Graph* graph = malloc(sizeof(Graph));
    graph->numVertices = vertices;

    graph->adjLists = malloc(vertices * sizeof(Node*));
    graph->visited = malloc(vertices * sizeof(int));

    for(int i = 0; i < vertices; i++) {
        graph->adjLists[i] = NULL;
        graph->visited[i] = 0;
    }
    return graph;
}

// Add edge (undirected)
void addEdge(Graph* graph, int src, int dest) {
    // Add edge from src to dest
    Node* newNode = createNode(dest);
    newNode->next = graph->adjLists[src];
    graph->adjLists[src] = newNode;

    // Add edge from dest to src
    newNode = createNode(src);
    newNode->next = graph->adjLists[dest];
    graph->adjLists[dest] = newNode;
}

// Queue for BFS
typedef struct Queue {
    int items[MAX];
    int front;
    int rear;
} Queue;

// Create queue
Queue* createQueue() {
    Queue* q = malloc(sizeof(Queue));
    q->front = -1;
    q->rear = -1;
    return q;
}

int isEmpty(Queue* q) {
    return q->rear == -1;
}

void enqueue(Queue* q, int value) {
    if(q->rear == MAX-1)
        return;
    if(isEmpty(q)) {
        q->front = 0;
    }
    q->rear++;
    q->items[q->rear] = value;
}

int dequeue(Queue* q) {
    if(isEmpty(q)) return -1;
    int item = q->items[q->front];
    q->front++;
    if(q->front > q->rear) {
        q->front = q->rear = -1;
    }
    return item;
}

// BFS algorithm
void BFS(Graph* graph, int startVertex) {
    Queue* queue = createQueue();

    graph->visited[startVertex] = 1;
    enqueue(queue, startVertex);

    printf("BFS traversal: ");

    while(!isEmpty(queue)) {
        int currentVertex = dequeue(queue);
        printf("%d ", currentVertex);

        Node* temp = graph->adjLists[currentVertex];

        while(temp) {
            int adjVertex = temp->vertex;

            if(graph->visited[adjVertex] == 0) {
                graph->visited[adjVertex] = 1;
                enqueue(queue, adjVertex);
            }
            temp = temp->next;
        }
    }
    printf("\n");
}

// DFS algorithm (recursive)
void DFS(Graph* graph, int vertex) {
    graph->visited[vertex] = 1;
    printf("%d ", vertex);

    Node* temp = graph->adjLists[vertex];
    while(temp) {
        int adjVertex = temp->vertex;
        if(graph->visited[adjVertex] == 0) {
            DFS(graph, adjVertex);
        }
        temp = temp->next;
    }
}

int main() {
    Graph* graph = createGraph(5);

    addEdge(graph, 0, 1);  // A-B
    addEdge(graph, 0, 2);  // A-C
    addEdge(graph, 1, 3);  // B-D
    addEdge(graph, 2, 4);  // C-E
    addEdge(graph, 3, 4);  // D-E

    // BFS starting from vertex 0 (A)
    BFS(graph, 0);

    // Reset visited array for DFS
    for(int i = 0; i < graph->numVertices; i++) {
        graph->visited[i] = 0;
    }

    printf("DFS traversal: ");
    DFS(graph, 0);
    printf("\n");

    return 0;
}
```

---

## 6. Time and Space Complexity Analysis

| Algorithm | Time Complexity          | Space Complexity                         |
|-----------|-------------------------|----------------------------------------|
| BFS       | O(V + E)                | O(V) for visited + O(V) for queue      |
| DFS       | O(V + E)                | O(V) for visited + O(V) for recursion stack |

- **V:** Number of vertices  
- **E:** Number of edges

---

## 7. Real-world Applications

- **BFS:**  
  - Shortest path in unweighted graphs (e.g., GPS navigation).  
  - Finding connected components.  
  - Level order traversal in trees.  

- **DFS:**  
  - Detecting cycles in graphs.  
  - Topological sorting.  
  - Path existence between nodes.  
  - Maze solving and puzzles.  

- **Graph representations:**  
  - Social networks, computer networks, recommendation systems.

---

## 8. Key Takeaways

- Graphs can be represented using adjacency matrix or adjacency lists; adjacency lists are space-efficient for sparse graphs.  
- BFS uses a queue and explores neighbors level-wise, suitable for shortest path in unweighted graphs.  
- DFS uses recursion/stack and explores depth-wise, useful for cycle detection and topological sorting.  
- Both algorithms run in O(V + E) time, making them efficient for most graphs.

---

## 9. Practice Questions or Problems

1. Implement BFS and DFS for a directed graph.  
2. Modify BFS to find the shortest distance between two nodes.  
3. Detect if a graph contains a cycle using DFS.  
4. Implement DFS iteratively using a stack.  
5. Use BFS or DFS to check if a graph is bipartite.  
6. Write a program to find connected components in an undirected graph.  
7. Explore variations: BFS for weighted graphs using Dijkstra’s algorithm.

---

**[Insert Diagrams Here]**  
- Graph illustration with vertices and edges annotated  
- BFS traversal layers visualization  
- DFS recursion/stack steps visualization