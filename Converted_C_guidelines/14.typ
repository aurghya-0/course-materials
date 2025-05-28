= Precedence & Order of Evaluation in C
<teaching-guideline-precedence-order-of-evaluation-in-c>

== 1. Teaching Outline
<teaching-outline>
=== Introduction
<introduction>
- Brief welcome and definition of the topic.
- Explain importance of understanding operator precedence and order of
  evaluation in programming.



=== 1.1 Key Definitions
<key-definitions>
- #strong[Operator Precedence:] The rules that determine the order in
  which operators in an expression are processed.
- #strong[Order of Evaluation:] The sequence in which the operands and
  operators are evaluated/executed.
- #strong[Associativity:] The direction in which an operator of the same
  precedence level is evaluated (left-to-right or right-to-left).



=== 1.2 Important Syntax and Rules
<important-syntax-and-rules>
- Overview of C operator precedence table (reference
  common/high-priority operators).
- Discuss groups of operators:
  - Unary operators (`++`, `--`, `!`, `~`, type casts)
  - Arithmetic operators (`*`, `/`, `%`, `+`, `-`)
  - Relational and equality operators (`<`, `<=`, `>`, `>=`, `==`, `!=`)
  - Logical operators (`&&`, `||`)
  - Assignment operators (`=`, `+=`, `-=` etc.)
- Explain associativity rules:
  - Most binary operators: left-to-right
  - Assignment, unary: right-to-left
- Comment on the distinction between precedence (rules on grouping) and
  order of evaluation (when things actually happen, which can be
  undefined)



=== 1.3 Examples and Demonstrations
<examples-and-demonstrations>
- Break down simple expressions to demonstrate precedence:
  - `3 + 4 * 5` → explain `*` higher precedence than `+`
- Explore associativity with:
  - `a = b = 5;` → right-to-left associativity of assignment
- Demonstrate pitfalls with order of evaluation:
  - Expressions with side effects: `i = i++ + 1;` (undefined behavior)
- Use parentheses to override default precedence:
  - `(3 + 4) * 5`



=== 1.4 Common Mistakes to Avoid
<common-mistakes-to-avoid>
- Assuming order of evaluation always matches operator precedence.
- Using expressions with side effects that depend on order evaluation
  (e.g.~`i++ + i++`).
- Neglecting parentheses when needed to enforce intended grouping.
- Confusing operator precedence with associativity.



=== 1.5 Real-world Applications and Importance
<real-world-applications-and-importance>
- Writing bug-free conditional expressions.
- Ensuring correct calculations in complex expressions.
- Understanding compiler warnings and undefined behaviors.
- Writing clear and maintainable code.



== 2. In-Class Practice Questions
<in-class-practice-questions>
=== Question 1: Basic Precedence
<question-1-basic-precedence>
#strong[Problem:] Which value does the expression `7 + 3 * 2` evaluate
to?

#strong[Concept Tested:] Operator precedence (multiplication before
addition)

#strong[Hint:] Recall order of operations in arithmetic.



=== Question 2: Associativity Understanding
<question-2-associativity-understanding>
#strong[Problem:] What is the value of `x` after executing:

```c
int x;  
x = 5;  
x = x = 10;  
```

#strong[Concept Tested:] Right-to-left associativity in assignment

#strong[Hint:] Evaluate inner assignment first.



=== Question 3: Parentheses and Precedence
<question-3-parentheses-and-precedence>
#strong[Problem:] Add parentheses to the expression `4 + 6 / 3 * 2` to
make addition happen before division and multiplication.

#strong[Concept Tested:] Using parentheses to override precedence

#strong[Hint:] Where do you place parentheses to force addition first?



=== Question 4: Order of Evaluation and Side Effects
<question-4-order-of-evaluation-and-side-effects>
#strong[Problem:] Predict the output of:

```c
int i = 1;  
int a = i++ + ++i;
printf("%d", a);
```

#strong[Concept Tested:] Understanding undefined behavior due to order
of evaluation

#strong[Hint:] Be cautious about modifying and reading `i` in the same
expression.



=== Question 5: Complex Expression Breakdown
<question-5-complex-expression-breakdown>
#strong[Problem:] Break down step-by-step evaluation of:

```c
int result = 2 + 3 * 4 / 6 - 1;
```

#strong[Concept Tested:] Applying precedence and associativity rules in
mixed expressions

#strong[Hint:] Identify operators by precedence and evaluate
accordingly.



== 3. Homework Practice Questions
<homework-practice-questions>
=== Question 1: Conceptual - Precedence Table
<question-1-conceptual---precedence-table>
#strong[Problem:] List the precedence and associativity of the following
operators: `+`, `*`, `=`, `&&`, `!`.

#strong[Difficulty:] Easy \
#strong[Concept Tested:] Knowledge of precedence and associativity
basics



=== Question 2: Coding - Predict Output
<question-2-coding---predict-output>
#strong[Problem:] What is the output of the following code? Explain why.

```c
int a = 5, b = 10;
int c = a + b * 2 - b / 5;
printf("%d\n", c);
```

#strong[Difficulty:] Medium \
#strong[Concept Tested:] Precedence in arithmetic expressions



=== Question 3: Coding - Parentheses
<question-3-coding---parentheses>
#strong[Problem:] Rewrite the expression `a + b * c - d / e` by adding
parentheses so that subtraction happens before multiplication and
division.

#strong[Difficulty:] Medium \
#strong[Concept Tested:] Parentheses overriding precedence



=== Question 4: Conceptual - Undefined Behavior
<question-4-conceptual---undefined-behavior>
#strong[Problem:] Explain why `x = x++ + ++x;` is considered undefined
behavior.

#strong[Difficulty:] Hard \
#strong[Concept Tested:] Order of evaluation and side effects



=== Question 5: Coding - Fixing an Expression
<question-5-coding---fixing-an-expression>
#strong[Problem:] Given the code snippet below, fix it by adding
parentheses or rewriting so the intended calculation `(a + b) * c` is
computed correctly.

```c
int a = 2, b = 3, c = 4;
int result = a + b * c;
printf("%d\n", result);
```

#strong[Difficulty:] Easy \
#strong[Concept Tested:] Fixing precedence bugs with parentheses



= Notes for the Instructor
<notes-for-the-instructor>
- Use lots of visual aids such as operator precedence tables.
- Demonstrate example evaluations step-by-step on whiteboard/screen.
- Encourage students to write expressions and predict outputs before
  running code.
- Highlight dangers of undefined behaviors to foster best practices.
- Allow for questions and group discussions during in-class exercises.
- Use homework to reinforce and extend understanding with a mixture of
  conceptual and practical problems.
