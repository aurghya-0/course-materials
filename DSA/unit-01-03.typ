= PCC-CS301 : Data Structures and Algorithms with C
<pcc-cs301-data-structures-and-algorithms-with-c>
== Unit 1: Introduction to Algorithm Analysis
<unit-1-introduction-to-algorithm-analysis>
=== Topic: Steps of Analyzing Algorithms & Introduction to Complexity
<topic-steps-of-analyzing-algorithms-introduction-to-complexity>

#horizontalrule

== 1. Introduction and Definitions
<introduction-and-definitions>
=== What is an Algorithm?
<what-is-an-algorithm>
- A #strong[step-by-step procedure] or formula for solving a problem. \
- Takes an input, processes it, and produces output.

=== Why Analyze Algorithms?
<why-analyze-algorithms>
- To determine the #strong[efficiency] and #strong[performance] before
  implementation. \
- Helps in choosing the best algorithm for a given problem.

=== Key Terms
<key-terms>
- #strong[Algorithm Analysis:] Study of resources (time & space) used by
  an algorithm. \
- #strong[Time Complexity:] Amount of time an algorithm takes as a
  function of input size. \
- #strong[Space Complexity:] Amount of memory an algorithm uses during
  execution.

#horizontalrule

== 2. Intuition and Working Principle
<intuition-and-working-principle>
- Think of algorithms as recipes: some recipes take longer or use more
  ingredients. \
- Algorithm analysis predicts the "cooking time" and "ingredient usage"
  without actually cooking. \
- Focus on #strong[growth rate] rather than exact counts, as input size
  grows large. \
- Helps in understanding scalability and efficiency.

#horizontalrule

== 3. Step-by-step Explanation with Example
<step-by-step-explanation-with-example>
=== Steps for Analyzing an Algorithm
<steps-for-analyzing-an-algorithm>
+ #strong[Understand the Problem:] What input does the algorithm take?
  What output does it produce? \
+ #strong[Identify the Basic Operations:] Which operations significantly
  affect performance (e.g., comparisons in sorting)? \
+ #strong[Count the Operations:] Find the number of times the basic
  operation is executed relative to input size (n). \
+ #strong[Express as a Function:] Model the count as a function (f(n)).
  \
+ #strong[Simplify Using Big-O Notation:] Focus on the dominant terms;
  ignore constants and lesser terms. \
+ #strong[Analyze Space:] Similarly analyze memory needed based on
  variables, arrays, recursive calls, etc.

=== Example: Linear Search
<example-linear-search>
- Problem: Find an element in an unsorted array. \
- Basic Operation: Comparing the target with array elements. \
- Counting comparisons is proportional to (n) (worst case). \
- Time complexity: (O(n)).

#horizontalrule

== 4. Pseudocode or Algorithm
<pseudocode-or-algorithm>
```plaintext
Algorithm LinearSearch(Array A, Element x)
1. for i = 0 to length(A) - 1 do
2.     if A[i] == x then
3.         return i      // Element found
4. return -1             // Element not found
```

#horizontalrule

== 5. Code Implementation in C
<code-implementation-in-c>
```c
#include <stdio.h>

int linearSearch(int arr[], int n, int x) {
    for(int i = 0; i < n; i++) {
        if(arr[i] == x) {
            return i;  // Found at index i
        }
    }
    return -1; // Not found
}

int main() {
    int array[] = {4, 2, 5, 1, 3};
    int n = sizeof(array) / sizeof(array[0]);
    int target = 5;

    int index = linearSearch(array, n, target);

    if(index != -1)
        printf("Element found at index %d\n", index);
    else
        printf("Element not found\n");

    return 0;
}
```

#horizontalrule

== 6. Time and Space Complexity Analysis
<time-and-space-complexity-analysis>
#figure(
  align(center)[#table(
    columns: 2,
    align: (auto,auto,),
    table.header([Aspect], [Linear Search],),
    table.hline(),
    [Time Complexity], [Worst Case: (O(n))],
    [], [Best Case: (O(1)) (if found at first element)],
    [Space Complexity], [(O(1)) (only variables, no extra space)],
  )]
  , kind: table
  )

=== Explanation:
<explanation>
- The for loop runs at most (n) times. \
- Each iteration takes constant time (O(1)). \
- No extra data structures are created, so space usage is constant.

#horizontalrule

== 7. Real-world Applications
<real-world-applications>
- Searching for an item in small or unsorted datasets. \
- Used as a simple baseline search in many applications. \
- Useful when datasets are small or rarely searched. \
- Helps understand more complex search algorithms.

#emph[(Insert Diagram: Linear search visualization here)]

#horizontalrule

== 8. Key Takeaways
<key-takeaways>
- Algorithm analysis evaluates efficiency without running the program
  multiple times. \
- Time complexity measures the running time in terms of input size. \
- Space complexity measures the amount of memory used. \
- Linear search has linear time complexity (O(n)) and constant space
  (O(1)). \
- Big-O notation helps generalize the efficiency ignoring constants and
  lower order terms.

#horizontalrule

== 9. Practice Questions or Problems
<practice-questions-or-problems>
+ Write the pseudocode and analyze the time complexity of #strong[Binary
  Search];. \
+ Implement a simple algorithm to find the maximum element in an array
  and analyze its time and space complexity. \
+ Given an array of size (n), what is the time complexity of summing all
  elements? Write the C code. \
+ Compare the time and space complexities of linear search and binary
  search. \
+ Describe how you would analyze the space complexity of a recursive
  algorithm like factorial calculation.

#horizontalrule

#emph[(End of Unit 1 Notes)]
