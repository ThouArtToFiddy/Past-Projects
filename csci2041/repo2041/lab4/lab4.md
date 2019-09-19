# Lab 4: Inductive types and maps

*CSci 2041: Advanced Programming Principles, Spring 2019 (Hopper)*

**Due:** Thursday, February 21 at 11:59pm.


## Ground rules

You may choose to work alone or with a partner on this lab. If you choose to work in a group, follow these [group instructions](group-instructions.md) to set up a group repository, and use that repository to store your work in this lab.

Although labs are meant to be an open and collaborative environment, it is the
responsibility of both partners to contribute to learning the materials in every
lab. In particular, all partners are responsible for ensuring that submissions
are received by the due date.

As will be the case for all labs this semester, your work should appear in a directory called `lab4` of your personal or group repository.  The easiest way to accomplish this is to do a `git pull` in the public `labs2041-s19` repository to get the lab files, then do a recursive copy to copy the entire `lab4` folder into the destination repository:

```
% cd ~/csci2041/labs2041-s19
% git pull
% cd ..
% cp -R labs2041-s19/lab4 repo-dest1234/
% cd repo-dest1234/
% git add lab4
```

# Introduction: Goals for this lab

+ See an example of an inductively-defined type and a function that
  computes with this type, and get some experience with these
  computations by extending the type with a new variant.

+ Practice using the `map` pattern and its relatives to compute iterative functions.

## 1. An RPN Arithmetic calculator

The file that we are about to inspect relies on the `Str` module. When
using ocamlbuild, this dependency will be automatically detected
and this module will be loaded. However, `utop` will not do this and we must
instruct `utop` to load this library manually. We will do this by editing a file
**at the root of your home directory(e.g., /home/user1234/)** called
`.ocamlinit`. This file is automatically loaded by `utop` on startup. Open this
file in an editor and add a line containing `#load "str.cma";;`.
Compiled ocaml modules have the extension `cma` and there are some number
of default locations that ocaml will look for compiled ocaml modules. So,
adding `#load "str.cma";;` to `~/.ocamlinit` (`~` is a kind of macro that
means "my home directory") instructs `utop` to look for the `Str` module
and load it on start up.

Let's look more at using inductively defined types to represent expressions
The file `arithExp.ml` contains type declarations related to
representing airthmetic expressions over floating point numbers, and
parsing their representation from *Reverse Polish Notation* strings.

>_Aside: Reverse Polish what now?_
>
>An expression in RPN uses postfix operators, so "a b +" is the sum of
>"a" and "b", "a b *" is the product, and so on.  Values in the
>expression can be thought of as accumulating on a stack, and each
>arithmetic operation pops its argument(s) from the stack and pushes the result.
>Well-formed expressions result in exactly one value.  This has the
>interesting property that parentheses are never needed to express the
>order of operations.

The function `token_list` converts a string into a list of
`arithToken`s, and will result in a run-time error if the string
contains anything that is not `"+"`, `"*"`, `"-"` (for unary negation),
or a floating point number.  The function `rpnParse` interprets a list
of tokens as an RPN expression and attempts to build an arithExpr that
corresponds to this expression: notice that the nested `parser`
function uses an `arithExpr list` to keep track of the expression
stack and uses matching to "pop" values off the stack.  Finally, the
function `arithExpEval` evaluates an `arithExpr` and returns the
floating point value.  So to evaluate a string `s` as an RPN arithmetic
expression, we would call `arithExpEval (rpnParse (token_list s))`.

### Testing it out

At the bottom of the file, add declarations for two `arithExpr`
values, `e1` and `e2`.  The first should correspond to the (usual, infix) expression
`1.414 + (3.14 * 2)` and the second can correspond to an expression of
your choosing.  Then add two strings that represent these expressions
in RPN.  You can `#use` the file in `utop` and check whether the composition
`rpnParse` and `token_list` computes the same `arithExpr` values from
these strings.

### Extending the code

Now let's extend the code to add division to the calculator, so for
example the string `"1 2 /"` will evaluate to `0.5`.  We'll need to:

+ Add a new null-ary value constructor `DIV` to the type `arithToken` to
  represent the division operator.

+ Extend the `tokens` helper function in `token_list` to recognize the
  division operator in a string.

+ Extend the `arithExpr` type with a new value constructor, `DivExpr` that holds
  a pair of `arithExpr`s.

+ Extend the `parser` helper function in `rpnParse` to handle the
  division token.  (This will look a lot like the cases for `PLUS` and
  `TIMES`, but needs a little care because of the order of elements on
  the stack...)

+ Extend the `arithExpEval` function to handle values constructed
   using the new variant for division expressions.

You can test out your changes by adding lines of the form `let divresult
= arithExpEval (rpnParse (token_list (* YOUR STRING HERE *) ) )` to
the end of the file and `#use`ing the file in utop.  Leave at least two such
test cases in the file when you commit and push the lab.  (Besides
testing the functionality on well-formed expressions, it's also a good
idea to make sure your functions correctly handle ill-formed inputs.)


## 2. `map` and its friends

In class, we saw the higher-order function `map : ('a -> 'b) -> 'a list -> 'b list` (included in the OCaml standard libary as `List.map`), that can be used to apply a transformation to every element of a list.  OCaml also includes the function `String.map : (char -> char) -> string -> string` which can be used to apply some transformation to every character of a string, and `List.mapi : (int -> 'a -> b) -> 'a list -> 'b list` in which the function to be applied to each list element is also given the index of the element in the list.  Let's practice using these functions to write non-recursive definitions in the file `maps_r_us.ml`.

### `to_meters`

Fill in the definition of a function `to_meters : (int*int) list -> float list` that takes a list of measurements in "imperial" units (feet, inches) and converts each measurement to meters, truncated to 2 decimal places.  (Some relevant information : 12 inches = 1 foot = 0.3048 meters)  So for example `to_meters [(6,0); (5,8)]` should evaluate to `[1.82; 1.72]`.  

### `rot13`

The "rot13" "encryption" algorithm takes every alphabetical character in a string and "rotates" it 13 characters forward, wrapping around after `'z'`. Non-alphabetic characters are left unchanged.  So for example, `rot13 "a happy string"` should evaluate to `"n unccl fgevat"`, and `rot13 "pizza"` should evaluate to `"cvmmn"`. Give an implementation of `rot13` using no recursion.  Some helpful things to note: `int_of_char` and `char_of_int` convert between characters and their integer (ASCII) representations; OCaml supports ranges of characters in patterns using `..`, so for instance the pattern `'a'..'z'` matches all lowercase alphabetic characters and `'A'..'Z'` matches all uppercase characters.


# Commit and push so that everything is up on GitHub

Now you need to just turn in your work.
Commit your changes and push them up to your central
GitHub repository.

Verify that this worked, by using your browser to see the changes on
https://github.umn.edu.  Your (group or personal) repository should have both the
files `lab4/arithExp.ml` and `lab4/maps_r_us.ml`.

If you do not properly push your changes to the repository we
cannot give you credit for the lab, so please remember to do this
step!

__This concludes lab 4.__

**Due:** Thursday, February 21 at 11:59pm.

Note that any required changes must exist in your repository on
github.umn.edu. Doing the work but failing to push those changes
to your central repository will mean that we cannot see your work
and hence can't grade it.
