= PCC-CS301 : Data Structures and Algorithms with C
<pcc-cs301-data-structures-and-algorithms-with-c>
== Unit 1: Introduction to Asymptotic Notations - Big-O, Omega, Theta
<unit-1-introduction-to-asymptotic-notations---big-o-omega-theta>



== 1. Introduction and Definitions
<introduction-and-definitions>
Understanding the performance of algorithms is critical in computer
science. #strong[Asymptotic notations] help us describe the efficiency
of an algorithm in terms of input size, focusing on growth rates rather
than exact values.

=== Key Asymptotic Notations:
<key-asymptotic-notations>
- #strong[Big-O (O)] --- Upper bound on the time complexity (worst
  case).
- #strong[Omega (Ω)] --- Lower bound on the time complexity (best case).
- #strong[Theta (Θ)] --- Tight bound (both upper and lower bounds).



== 2. Intuition and Working Principle
<intuition-and-working-principle>
Imagine you're comparing how fast different algorithms run as the input
size grows very large (e.g., sorting 1000 vs 1,000,000 numbers).

- #strong[Big-O] gives the maximum time an algorithm might take.
- #strong[Omega] gives the minimum time an algorithm will take.
- #strong[Theta] means the algorithm's running time grows exactly at
  this rate.

#quote(block: true)[
Think of these as bounds that "sandwich" the running time function.
]



== 3. Step-by-Step Explanation with Example
<step-by-step-explanation-with-example>
Suppose an algorithm's running time is expressed as:

$ T(n) = 3n^2 + 5n + 7 $

=== Big-O Analysis:
<big-o-analysis>
- As ( n ), ( n^2 ) dominates ( n ) and constant terms.
- So, #strong[Big-O] is $O(n^2)$ , meaning the time grows at most
  proportional to ( n^2 ).

=== Omega Analysis:
<omega-analysis>
- The minimum time for large inputs will also be at least proportional
  to ( n^2 ).
- So, #strong[Omega] is ( (n^2) ).

=== Theta Analysis:
<theta-analysis>
- Since both upper and lower bounds are ( n^2 ), we say ( T(n) = (n^2)
  ).



=== Visual Representation
<visual-representation>
#emph[(Insert diagrams showing growth curves of functions)]



== 4. Pseudocode or Algorithm
<pseudocode-or-algorithm>
=== Example Algorithm: Find Maximum Element in Array
<example-algorithm-find-maximum-element-in-array>
```pseudo
function findMax(array A, int n):
    max = A[0]
    for i = 1 to n-1:
        if A[i] > max:
            max = A[i]
    return max
```



== 5. Code Implementation in C
<code-implementation-in-c>
```c
#include <stdio.h>

int findMax(int A[], int n) {
    int max = A[0];
    for (int i = 1; i < n; i++) {
        if (A[i] > max) {
            max = A[i];
        }
    }
    return max;
}

int main() {
    int arr[] = {3, 7, 1, 9, 4};
    int size = sizeof(arr) / sizeof(arr[0]);

    int maxValue = findMax(arr, size);
    printf("Maximum element is %d\n", maxValue);

    return 0;
}
```



== 6. Time and Space Complexity Analysis
<time-and-space-complexity-analysis>
=== For `findMax` function:
<for-findmax-function>
- #strong[Time Complexity:]
  - Each element is checked once.
  - ( T(n) = c n ) (linear time).
  - ( O(n) ), ( (n) ), and ( (n) ) because all cases require scanning
    all elements.
- #strong[Space Complexity:]
  - Uses a fixed amount of extra space (variable `max`).
  - ( O(1) ) constant space.



== 7. Real-World Applications
<real-world-applications>
- #strong[Algorithm optimization:] Knowing the exact growth behavior
  helps optimize code and choose the right algorithms.
- #strong[Search engines:] Efficiently handle large data sets with
  scalable algorithms.
- #strong[Data analysis:] Evaluating running time for sorting,
  filtering, and processing data sets.
- #strong[Software development:] Avoid slow-performing code that can
  cause bottlenecks.



== 8. Key Takeaways
<key-takeaways>
- Asymptotic notations provide a way to analyze the efficiency of
  algorithms without getting into hardware or implementation specifics.
- #strong[Big-O] describes the worst-case scenario.
- #strong[Omega] describes the best-case scenario.
- #strong[Theta] describes the average or exact behavior.
- They help compare algorithms and predict performance on larger inputs.
- Constant and lower order terms are ignored as input grows large.



== 9. Practice Questions or Problems
<practice-questions-or-problems>
+ #strong[Identify Big-O:] Find the Big-O notation of the following
  function: \
  ( T(n) = 5n^3 + 2n n + 20 )

+ #strong[Classify:] Given the pseudocode for linear search, write the
  Big-O, Omega, and Theta notations.

+ #strong[Implement and Analyze:] Write a C program for bubble sort and
  determine its best, worst, and average case complexities using
  asymptotic notations.

+ #strong[Conceptual:] Explain why ( O(n) ) is better than ( O(n^2) )
  for large ( n ).

+ #strong[True or False:] If an algorithm has ( (n n) ) time complexity,
  it is always faster than one with ( (n^2) ) for all input sizes ( n ).



#emph[Note: Insert diagrams in sections 2 and 3 to visually demonstrate
growth rates.]
