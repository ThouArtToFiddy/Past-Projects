# Lab 3: Type inference and disjoint union types

*CSci 2041: Advanced Programming Principles, Spring 2019 (Hopper)*

**Due:** Thursday, February 14 at 11:59pm.


## Ground rules

You may choose to work alone or with a partner on this lab. If you choose to work in a group, follow these [group instructions](group-instructions.md) to set up a group repository, and use that repository to store your work in this lab.

Although labs are meant to be an open and collaborative environment, it is the
responsibility of both partners to contribute to learning the materials in every
lab. In particular, all partners are responsible for ensuring that submissions
are received by the due date.

As will be the case for all labs this semester, your work should appear in a directory called `lab3` of your personal or group repository.  The easiest way to accomplish this is to do a `git pull` in the public `labs2041-s19` repository to get the lab files, then do a recursive copy to copy the entire `lab3` folder into the destination repository:

```
% cd ~/csci2041/labs2041-s19
% git pull
% cd ..
% cp -R labs2041-s19/lab3 repo-dest1234/
% cd repo-dest1234/
% git add lab3
```

# Introduction: Goals for this lab

+ Apply your knowledge of OCaml types and type inference to diagnose
  type error messages and predict expression types

+ Apply your knowledge of user-defined types and value constructors to
  define a new OCaml data type and write some functions that
  manipulate this type.

## 1. Types and Type Inference

The file `lab3_types.ml` contains four function definitions involving
polymorphic types.  Some of them contain mistakes that may cause them
to give type errors or fail to yield the type the programmer probably
intended.  For each definition, in the comment, give what you think
the programmer intended for the type of the function and what the actual
type of the function is, or what type error you think compiling the
definition might yield.  (You may feel free to `#use` the file in
`utop` to find out what OCaml actually thinks the type is after your
guess).  Then give your explanation of *why* the function has this
type, along the lines of our discussion of type inference in last
Wednesday's lecture.  Finally, fix the definition so that it has the intended type.

The fourth definition involves a restriction on OCaml definitions that
requires each use of an identifier in its binding expression to have
the same type, and not merely compatible types.

## 2. `number`

Add a file named `number.ml` to the lab3 directory of your team
repository.  This is where you'll write the answers for this question.

### Declare a `number` type and some constants

The first step of this problem is to declare a new union type,
`number`, that should have two value constructors: one that takes an
`int` as its value and one that takes a `float`. Make sure that your
type declaration compiles correctly.

Now add let declarations binding two names - `z1` and `z2` to `number` values that
hold `int`s and let declarations binding two names - `r1` and `r2` - to `number` values
that hold `float`s.

### `number` conversions

Now that we have succesfully declared the type, let's add three
conversion functions:

+ `to_int : number -> int option` should take argument `n : number`,
  and if `n` holds an integer `i` should evaluate to `Some i`,
  otherwise it should evaluate to `None`.

+ `to_float : number -> float option` should take argument `n :
  number` and if `n` holds a float `x`, should evaluate to `Some x`,
  otherwise it should evaluate to `None`.

+ `float_of_number : number -> float` should _coerce_ the value it
  holds to a floating point value.  Recall that the function
  `float_of_int : int -> float` can be used to coerce an `int` to a
  `float` in OCaml.

### `number` arithmetic

Define the `number` operator `+?` with type `number ->
number -> number` that performs addition on
`number`s:  if both arguments hold  `int` values then the
result should also hold an `int`, while if either argument holds a
`float` value the result also holds a `float` value.


# Commit and push so that everything is up on GitHub

Now you need to just turn in your work.
Commit your changes and push them up to your central
GitHub repository.

Verify that this worked, by using your browser to see the changes on
https://github.umn.edu.  Your (group or personal) repository should have both the
files `lab3/number.ml` and `lab3/lab3_types.ml`.

If you do not properly push your changes to the repository we
cannot give you credit for the lab, so please remember to do this
step!

__This concludes lab 3.__

**Due:** Thursday, February 14 at 11:59pm.

Note that any required changes must exist in your repository on
github.umn.edu. Doing the work but failing to push those changes
to your central repository will mean that we cannot see your work
and hence can't grade it.
