# Lab 12: Mutable data structures

*CSci 2041: Advanced Programming Principles, Spring 2019 (Hopper)*

**Due:** Thursday, April 25 at 11:59pm.

## Ground rules

You may choose to work alone or with a partner on this lab. If you choose to work in a group, follow these [group instructions](group-instructions.md) to set up a group repository, and use that repository to store your work in this lab.

Although labs are meant to be an open and collaborative environment, it is the
responsibility of all partners to contribute to learning the materials in every
lab. In particular, all partners are responsible for ensuring that submissions
are received by the due date.

As will be the case for all labs this semester, your work should appear in a directory called `lab11` of your personal or group repository.  The easiest way to accomplish this is to do a `git pull` in the public `labs2041-s19` repository to get the lab files, then do a recursive copy to copy the entire `lab11` folder into the destination repository:

```
% cd ~/csci2041/labs2041-s19
% git pull
% cd ..
% cp -R labs2041-s19/lab11 repo-dest1234/
% cd repo-dest1234/
% git add lab11
```

# Introduction: Goals for this lab

+ Work with side effects and mutable data structures

## Answering the questions in this lab

Create a `lab12` directory in your team repository and copy the
`mutlist.ml` file to this directory; we'll work with the
contents of this file in the following section.

## Mutable lists

`mutlist.ml` defines the type `'a mlist`, a mutable list data
structure, and functions `mlist_of_list` and `list_of_mlist`
for converting between OCaml `list` values and `mlist` values.

In this problem, we'll write a few functions to manipulate mutable
lists; the equivalent immutable list versions already appear in
`mutlist.ml`:

+ `insert_after_m : 'a -> 'a -> 'a mlist -> unit`: this function
  performs a destructive update to its `mlist` argument: `insert_after_m
  a b ml` should modify ml so that the value `b` appears after the
  first instance of `a` in `ml`.  For example:

    ```
    # let m1 = mlist_of_list [2;3;5;11] ;;
    val m1 : int mlist = C {hd = 2; tl = C {hd = 3; tl = C {hd = 5; tl = C {hd = 11; tl = Nil}}}}
    # insert_after_m 5 7 ml;;
    - : unit = ()
    # list_of_mlist m1 ;;
    - : int list = [2; 3; 5; 7; 11]
    ```

  `insert_after_m` should raise `Not_found` if no instance of `b` is
  encountered.

+ `exclude_m : ('a -> bool) -> 'a mlist -> 'a mlist`: this function
destructively updates an mlist; `exclude_m p ml` should return a list that
excludes all elements of `ml` that satisfy the predicate `p`.  For example:

  ```
  # let m2 = mlist_of_list [1;2;3;4;5;6;7;8;9;10] ;;
  # exclude_m (fun x -> x mod 2 = 0) m2 ;;
  - : int mlist = C {hd = 1; tl = C {hd = 3; tl = C {hd = 5; tl = C {hd = 7; tl = C {hd = 9; tl = Nil}}}}}
  # list_of_mlist m2 ;;
  - : int list = [1; 3; 5; 7; 9]
  # exclude_m (fun x -> x mod 3 = 1) m2 ;;
  - : int mlist = C {hd = 3; tl = C {hd = 5; tl = C {hd = 9; tl = Nil}}}                                                                                            
  # list_of_mlist m2 ;;
  - : int list = [1; 3; 5; 9]
  ```

  (Notice that only elements after the first element that does not satisfy `p`
  are permanently removed from the list.  Why?  How could we change the
  interface to `exclude_m` to prevent this problem?)



__This concludes lab 12.__

**Due:** Thursday, April 25 at 11:59pm.

Note that any required changes must exist in your repository on
github.umn.edu. Doing the work but failing to push those changes
to your central repository will mean that we cannot see your work
and hence can't grade it.
