## 1. Recursive Types

### Documents

An example of computing objects that have a hierarchical structure is
HTML documents; an HTML document in general is structured as a
sequence of HTML _entities_, (for example, anchors (links), text,
headings, lists, images, tables, frames...) many of which may enclose
more HTML entities.  In the file `ex3/document.ml`, you'll find definitions
for a type representing a small subset of HTML:

```
type entity =
        Title of entity list
        | Heading of entity list
        | Text of string
        | Anchor of anchor
and anchor = Named of string * (entity list) | HRef of string * (entity list)

type document = { head : entity list ; body : entity list }
```

Notice that the types `anchor` and `entity` are _mutually recursive_:
an `entity` might include an `anchor` as one of its elements and every
`anchor` includes an `entity list`.

#### Extending with Lists
Extend the definition of the `entity` type to include two further variants:

+ `List` - a List has a list type, `Unordered`, or `Ordered`, and a list of sub-entities.

+ `ListItem` - a `ListItem` holds an entity list as well, and should only occur
while nested inside a `List`.

Modify the example `document`, `d2`, in the place indicated to include a list of the
indicated elements.

You'll also need to update the function `check_rules` that checks that the
`head` of a document contains no `Anchor`s,  the `body` of a document contains
no `Title`s, `anchor`s do not include nested `anchor`s, and no `ListItem`s occur
outside of a `List`.

Test cases for this portion of the problem:

+ `let d : entity = (List (Ordered,[]))` compiles successfully.

+ `check_rules { head = d1.head ; body = [(List (Ordered, [ListItem []]))] }` evaluates to `true`

+ `check_rules d_err1` evaluates to `false`

+ `check_rules { head = d1.head; body = d1.body @ [(ListItem [(Text "ok")])]}` evaluates to `false` since the `ListItem` is not nested inside a `List` entity.

#### Computing with Documents
Once you've extended `entity` with `List`s, you should also add the
following functions that compute on documents:

+ `find_headings : document -> entity list` returns a list of all the
  `Heading` entities in the body of a document.  Example evaluations:
  `find_headings d1` should evaluate to
  `[Heading [Text "CS 2041 Document"] ]` and `find_headings d_err1`
  should evaluate to `[]`.

+ `extract_text: document -> string` Should extract and concatenate
  together (separated by single spaces) the contents of all `Text`
  variants appearing in the body of its argument.  Example evaluation:
  `extract_text d1` should evaluate to `"CS 2041 Document A short
  document A little more stuff Click this to go back"`.

### Binary Search trees

Binary trees are a fundamental data structure in computer science, which you
will have seen in CSci 1933 or its equivalent.  A _binary search tree_ is an
extension of a binary tree that allows for efficient search and insertion of
elements, by enforcing the requirement that the value stored at each internal
node is greater than or equal to all elements in its left subtree, and less than
or equal to all elements in its right subtree.  You'll find the type definition
and function definitions for `insert` and `search` in the file `ex3/btree.ml`,
and you should add your code for this problem to the same program.

+ Complete the function `tree_min : 'a btree -> 'a option` that finds the
smallest element in a binary tree (BST or not).  Example evaluations: `tree_min
Empty` should evaluate to `None`; `tree_min t3` should evaluate to `Some 3`

+ Complete the function `tree_max : 'a btree -> 'a option` which finds the
largest element in a binary tree (BST or not). Example evaluations: `tree_max
Empty` should evalute to `None`; `tree_max t5` should evaluate to `Some 12`.

+ Now fix the function `is_bstree : 'a bstree -> bool` that checks that its
argument satisfies the binary search tree condition.  Example evaluations:
`is_bstree Empty` should evaluate to `true`, `is_bstree (Node(0,Empty,Leaf 1))`
should evaluate to `true`, `is_bstree (Node(0,Leaf 1,Empty))` should evaluate to
`false`, and `is_bstree t3` should evaluate to `false`.

### Grading Criteria

In order to receive full credit for this section, your solution should prodœuce the correct result on at least 9/15 example evaluations.
