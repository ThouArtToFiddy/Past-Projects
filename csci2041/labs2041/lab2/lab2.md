# Lab 2: Type inference, pattern matching and recursion

*CSci 2041: Advanced Programming Principles, Spring 2019 (Hopper)*

**Due:** Thursday, February 7 at 11:59pm.


## Ground rules

You may choose to work alone or with a partner on this lab. If you choose to work in a group, follow these [group instructions](group-instructions.md) to set up a group repository, and use that repository to store your work in this lab.

Although labs are meant to be an open and collaborative environment, it is the
responsibility of both partners to contribute to learning the materials in every
lab. In particular, all partners are responsible for ensuring that submissions
are received by the due date.

As will be the case for all labs this semester, your work should appear in a directory called `lab2` of your personal or group repository.  The easiest way to accomplish this is to do a `git pull` in the public `labs2041-s19` repository to get the lab files, then do a recursive copy to copy the entire `lab2` folder into the destination repository:

```
% cd ~/csci2041/labs2041-s19
% git pull
% cd ..
% cp -R labs2041-s19/lab2 repo-dest1234/
% cd repo-dest1234/
% git add lab2
```

# Introduction: Goals for this lab


+ See some more examples of using pattern matching to simplifiy
  OCaml progams

+ Write a few recursive OCaml functions to get used to thinking about
  recursion and tail recursive functions.

## Pattern Matching Simple to Sophisticated

In class so far we have mostly seen the use of pattern matching in
`match` statements and function definitions.  But as Hickey states,
""It's all patterns"": pattern matching is a much more general
construct in OCaml and can be used anywhere a name might be bound to a
value.  Let's see some examples of other places we might find
patterns, and some reminders of some of the more sophisticated pattern
constructions we might want to use.  Open `lab2_patterns.ml` in your
text editor and follow along:

+ We can use patterns in place of the name in a `let` binding or
  declaration, as in `let <pattern> = <value>`.  The first five
  expressions in `lab2_patterns.ml` match this idiom: try to predict
  what the result of these bindings will be, recording your
  predictions in the text editor.  You can check by trying `#use
  "lab2_patterns.ml"` in `utop`.   (One will cause an exception; fix
  it by commenting it out and explaining why.)

+ Patterns can combine destructuring and binding, using the `<pattern>
  as <id>` idiom.  An example is the next expression in
  `lab2_patterns.ml`, which binds the names `a1`, `b1`, and `c1`.  Guess
  what the values will be and check in `utop`.

+ Patterns can be combined recursively, like the pattern in the
  following let declaration.  Guess what the values of `a2`,`b2`,`c2`,
  and `d2` will be after evaluating this declaration.

+ Patterns can be combined using the vertical bar, `|` as in the final
  three examples.  `p1 | p2` matches `p1` or `p2`.  However, there are
  some restrictions on this combination, as illustrated in
  `singleton_or_empty` and `twins`:
    + First, each sub-pattern in the combined pattern `p1 | p2 |
      ... pN` should have the exact same set of identifiers, and they
      must all be bound to values of the same type.  Explain in a
      comment why `singleton_or_empty_list` doesn't satisfy this
      restriction, and fix the pattern in `lab2_patterns.ml`.

    + Second, each identifier must appear exactly once in a pattern.
      The error message produced when compiling the `twins` definition
      illustrates this restriction. If you want to check that some
      matched values are the same or satisfy some other formula, you
      can add a `when` clause to the pattern, or check this condition
      elsewhere in your program.  Fix it here by changing the first clause to:

      ```
      (s,t) when s=t -> true
      ```

## Recursion, Tail Recursion, Nested Functions

Finally, let's practice writing some recursive and iterative functions
over lists.  Open `lab2_recursion.ml` in your text editor, and work
out definitions for the following programs:

+ `unzip`:  the `unzip` function takes as input a list `lst` of pairs, and
  returns a pair of lists `(l1,l2)`: `l1` contains the first element of each
  pair in `lst` and `l2` contains the second element of each pair in
  `lst`.  Thus `unzip [ ("a",100); ("b",99); ("c",98) ]` should
  evaluate to `(["a"; "b"; "c"], [100; 99; 98])`.  In the comments you
  should include what the type of `unzip` should be and an explanation
  of why your definition has this type.

+ `list_cat : string list -> string`: the `list_cat` function takes as input a list of strings
  and produces the concatenation of the strings in the list so that
  `list_cat ["what"; "is"; "this"; "I"; "don't"; "even"]` evaluates to
  `"whatisthisIdon'teven"`.  See if you can make this tail recursive,
  but be careful: OCaml might not want to interpret your use of the
  `^` string concatenation operator in the way you want it to.

# Commit and push so that everything is up on GitHub

Now you need to just turn in your work.
Commit your changes and push them up to your central
GitHub repository.

Verify that this worked, by using your browser to see the changes on
https://github.umn.edu.

If you do not properly push your changes to the repository we
cannot give you credit for the lab, so please remember to do this
step!

__This concludes lab 2.__

**Due:** Thursday, February 7 at 11:59pm.

Note that any required changes must exist in your repository on
github.umn.edu. Doing the work but failing to push those changes
to your central repository will mean that we cannot see your work
and hence can't grade it.
