= PCC-CS301 : Data Structures and Algorithms with C
<pcc-cs301-data-structures-and-algorithms-with-c>
== Unit 1: Introduction to Searching Techniques - Linear Search
<unit-1-introduction-to-searching-techniques---linear-search>

#horizontalrule

=== 1. Introduction and Definitions
<introduction-and-definitions>
- #strong[Searching];: The process of finding a specific element
  (target) in a collection of elements (array, list, etc.).
- #strong[Linear Search] (also called Sequential Search) is the simplest
  searching technique.
- It checks each element of the array sequentially until the target
  element is found or the array ends.
- Applicable to both sorted and unsorted lists.

#horizontalrule

=== 2. Intuition and Working Principle
<intuition-and-working-principle>
- Start from the first element of the list.
- Compare the current element with the target value.
- If it matches, return the current index (position).
- If it does not match, move to the next element.
- Repeat this process until the target is found or the end of the list
  is reached.
- If not found by the end, return a status indicating "not found".

#strong[Visual Idea:] \
(Insert diagram here showing stepwise comparison from first to last
element)

#horizontalrule

=== 3. Step-by-Step Explanation with Example
<step-by-step-explanation-with-example>
Consider the array: \
`[5, 3, 7, 1, 9]` \
Target to find: `7`

#figure(
  align(center)[#table(
    columns: (10.14%, 24.64%, 34.78%, 30.43%),
    align: (auto,auto,auto,auto,),
    table.header([Step], [Current Element], [Compare With Target
      (7)], [Result],),
    table.hline(),
    [1], [5], [5 == 7 ? No], [Move to next element],
    [2], [3], [3 == 7 ? No], [Move to next element],
    [3], [7], [7 == 7 ? Yes], [Return index 2],
  )]
  , kind: table
  )

Thus, the element `7` is found at index 2.

#horizontalrule

=== 4. Pseudocode or Algorithm
<pseudocode-or-algorithm>
```
LinearSearch(arr, n, target):
    for i from 0 to n-1 do
        if arr[i] == target then
            return i       // Element found at index i
    end for
    return -1              // Element not found
```

#horizontalrule

=== 5. Code Implementation in C
<code-implementation-in-c>
```c
#include <stdio.h>

int linearSearch(int arr[], int n, int target) {
    for (int i = 0; i < n; i++) {
        if (arr[i] == target) {
            return i; // Return index where target is found
        }
    }
    return -1; // Target not found
}

int main() {
    int arr[] = {5, 3, 7, 1, 9};
    int n = sizeof(arr) / sizeof(arr[0]);
    int target = 7;

    int result = linearSearch(arr, n, target);
    if (result != -1) {
        printf("Element %d found at index %d.\n", target, result);
    } else {
        printf("Element %d not found in the array.\n", target);
    }
    return 0;
}
```

#horizontalrule

=== 6. Time and Space Complexity Analysis
<time-and-space-complexity-analysis>
#figure(
  align(center)[#table(
    columns: (33.33%, 66.67%),
    align: (auto,auto,),
    table.header([Aspect], [Description],),
    table.hline(),
    [#strong[Time Complexity];], [Worst and Average Case: O(n) Best
    Case: O(1) (target found at first index)],
    [#strong[Space Complexity];], [O(1) (No extra space needed)],
  )]
  , kind: table
  )

- Since the algorithm goes through elements one by one, it has linear
  time complexity.
- It is a simple algorithm that does not require extra memory regardless
  of input size.

#horizontalrule

=== 7. Real-World Applications
<real-world-applications>
- Searching for a specific record in a small database.
- Finding an element in an unsorted array.
- Useful in situations where simplicity is preferred over efficiency.
- Useful as a basic approach before applying more complex search
  algorithms.

#horizontalrule

=== 8. Key Takeaways
<key-takeaways>
- Linear Search is the simplest search algorithm, scanning each element.
- Works on both sorted and unsorted datasets.
- Time complexity is generally O(n), making it inefficient for large
  datasets.
- Always consider data size before choosing linear search.
- Useful for small or unsorted collections.

#horizontalrule

=== 9. Practice Questions or Problems
<practice-questions-or-problems>
+ #strong[Find the index of the number 15 in the array:]
  `[2, 45, 15, 8, 23]` using linear search.
+ Modify the linear search function to return the number of comparisons
  made before finding the target or concluding it is absent.
+ Write a program to search a character in a character array using
  linear search.
+ Explain what happens if the target element is not present in the
  array.
+ Implement linear search to find all occurrences of a target value (if
  it appears multiple times) and return their indices.

#horizontalrule

#emph[(Insert diagrams or flowcharts where appropriate for better
understanding)]
