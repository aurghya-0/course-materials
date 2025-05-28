= PCC-CS301 : Data Structures and Algorithms with C
<pcc-cs301-data-structures-and-algorithms-with-c>
== Unit 1: Introduction to Time-Space Trade-off
<unit-1-introduction-to-time-space-trade-off>
=== Topic: Relationship and Trade-offs Between Time and Space
<topic-relationship-and-trade-offs-between-time-and-space>

#horizontalrule

== 1. Introduction and Definitions
<introduction-and-definitions>
- #strong[Time Complexity:] The amount of time an algorithm takes to
  complete as a function of the input size.
- #strong[Space Complexity:] The amount of memory an algorithm uses
  during its execution.
- #strong[Time-Space Trade-off:] A principle in algorithm design where
  saving time may require using more space, or reducing space usage may
  increase computation time.

#strong[Why is this important?] \
Optimizing programs for performance involves balancing how much memory
is used against how fast the program runs.

#horizontalrule

== 2. Intuition and Working Principle
<intuition-and-working-principle>
- Imagine you want to speed up data retrieval.
- One way: Precompute results and store them (use more space, less
  time).
- Another way: Calculate the results every time (use less space, more
  time).
- Trade-offs depend on application context: available resources,
  performance goals, memory constraints.

#strong[Simple analogy:] \
Using a #strong[dictionary] (space-heavy) to look up meanings instantly
(fast) vs.~trying to guess the meaning every time (slow but no
dictionary needed).

#horizontalrule

== 3. Step-by-step Explanation with Example
<step-by-step-explanation-with-example>
#strong[Problem:] Calculating Fibonacci numbers.

- #strong[Naive Recursive Approach:] \
  Calculate `fib(n)` by recursively summing `fib(n-1)` and `fib(n-2)`.
  - Time: Exponential (lots of repeated calculations). \
  - Space: Low (call stack only).
- #strong[Dynamic Programming / Memoization:] \
  Store previously calculated values in an array (memo) to avoid
  recomputation.
  - Time: Linear. \
  - Space: Additional memory used for storage.

#strong[Step-by-step:]

+ Start with base cases (`fib(0) = 0`, `fib(1) = 1`).
+ For computing `fib(n)`, check if result is already stored.
+ If yes, return the stored result (fast).
+ If no, calculate recursively and store it (space cost).

#horizontalrule

== 4. Pseudocode or Algorithm
<pseudocode-or-algorithm>
```
function fib(n, memo):
    if n <= 1:
        return n
    if memo[n] is not empty:
        return memo[n]
    
    memo[n] = fib(n-1, memo) + fib(n-2, memo)
    return memo[n]
```

#horizontalrule

== 5. Code Implementation in C
<code-implementation-in-c>
```c
#include <stdio.h>
#include <stdlib.h>

// Fibonacci with memoization (time-space trade-off)
int fib(int n, int *memo) {
    if (n <= 1) {
        return n;
    }
    
    if (memo[n] != -1) {  // Previously computed
        return memo[n];
    }
    
    memo[n] = fib(n - 1, memo) + fib(n - 2, memo);
    return memo[n];
}

int main() {
    int n = 10; // Example input
    int *memo = (int *)malloc((n + 1) * sizeof(int));
    
    // Initialize memo array with -1 to indicate uncomputed states
    for (int i = 0; i <= n; i++) {
        memo[i] = -1;
    }
    
    printf("Fibonacci number at position %d is %d\n", n, fib(n, memo));
    
    free(memo);
    return 0;
}
```

#horizontalrule

== 6. Time and Space Complexity Analysis
<time-and-space-complexity-analysis>
#figure(
  align(center)[#table(
    columns: (33.33%, 23.61%, 43.06%),
    align: (auto,auto,auto,),
    table.header([Approach], [Time Complexity], [Space Complexity],),
    table.hline(),
    [Naive Recursive], [O(2^n)], [O(n) (call stack)],
    [Memoized (DP)], [O(n)], [O(n) (memo array + call stack)],
  )]
  , kind: table
  )

- #strong[Trade-off:] Memoization uses extra space (`O(n)`) to
  drastically reduce time from exponential to linear.
- You can further optimize space by storing only recent Fibonacci values
  (reduce space at cost of code complexity).

#horizontalrule

== 7. Real-world Applications
<real-world-applications>
- #strong[Caching results:] Web browsers, databases cache responses to
  reduce load time.
- #strong[Compression algorithms:] Store precomputed data for quick
  decompression.
- #strong[Graphics rendering:] Use of lookup tables for quick color or
  pixel computations.
- #strong[Cryptography:] Precomputed tables to speed up
  encryption/decryption at cost of memory.
- #strong[Embedded systems:] Where memory is limited, sometimes
  algorithms are slowed to save space.

#horizontalrule

== 8. Key Takeaways
<key-takeaways>
- Time-space trade-offs are fundamental in algorithm design.
- Using more memory can often reduce runtime and vice versa.
- Choose trade-offs based on constraints: resource availability,
  required speed, and memory limits.
- Techniques like memoization and caching exemplify time-space
  trade-off.
- Always analyze both time and space complexity before deciding on an
  approach.

#horizontalrule

== 9. Practice Questions or Problems
<practice-questions-or-problems>
+ Implement a factorial function using memoization to improve
  computation time. Analyze its time and space trade-offs.
+ Compare iterative and recursive binary search in terms of time and
  space complexity.
+ Solve the subset sum problem using dynamic programming. Discuss the
  memory usage and time trade-offs involved.
+ Design a program to calculate the power of a number (`x^n`) with and
  without memoization; compare the complexities.
+ Explain a real-world scenario from your experience where you had to
  make a time-space trade-off when coding.

#horizontalrule

#emph[Note: Space reserved here for diagrams illustrating recursive tree
vs memoized approach, and memory/time graphs.]
