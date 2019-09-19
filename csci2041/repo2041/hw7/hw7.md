# Homework 7:  Modules and Functors

*CSci 2041: Advanced Programming Principles, Spring 2019 (Hopper)*

**Due:** Monday, May 6 at 11:59pm

## Bloom Filters

A _Bloom Filter_ is a probabilistic data structure that stores a set of elements
`e1, e2, ..., en` (which may be quite large) by hashing each element `ei` to a
set of k short integers `s1,...,sk` (using `k` different hash functions) and
storing the union of these sets of short integers, `S`.  To test whether an
arbitrary element `x` is in the bloom filter, we hash `x` to get `k` short integers
`t1,...,tk` and then test whether all k of these values are present in `S`.  (So an
element that was added to the filter will always succeed in testing, but some
elements not added to the filter might also appear to be present)  Bloom filters
are used to improve cache performance in [several widely deployed
systems](https://en.wikipedia.org/wiki/Bloom_filter#Examples).

Here's a toy example: let `k=2` and let the hash functions be `h1(x) = x mod
7` and `h2(x) = x mod 11`.  Then to build a bloom filter representing the `n`-element
set `[1372; 2047; 2481]`, (so here `n=3`) we compute the `k*n=6` hashes: `h1(1372) = 0`,
`h2(1372) = 8`, `h1(2047)=3`, `h2(2047)=1`, `h1(2481)=3`, `h2(2481)=6` and store the set
`S=[0;1;3;6;8]`.  Then to test whether some arbitrary element, say `1976` is in the filter,
we compute `h1(1976)=2`, and `h2(1976)=7`.  Since neither element is in `S`, `1976` is
not in the filter.   On the other hand, `h1(1977)=3` and `h2(1977)=8`, so `1977` is a
"false positive", an element that appears to be present even though it was not added to the
filter initially.

In this problem, we will write a functor that implements bloom
filters, parameterized by a set representation and a list of hash
functions.  Your solution should go in the file `bloom.ml`, which
contains a skeleton, with several helper functions already
implemented.

#### `hasher` signature

The `bloom.ml` file contains a module signature,  `memset`, for
modules that define a set type and operations.  Add a signature
immediately below this named `hasher` for modules that provide an
element type `t` and a function `hashes : t -> int list`.  (We'll
provide modules that implement this signature later)

####	`SparseSet` module

The `Set` module in the OCaml standard library provides the functor
`Set.Make` which, given a module providing an element type `t` and a
comparison function `compare` (such as the built-in
`Pervasives.compare`) creates a module that implements all of the
functionality of the `memset` signature *except* the function
`from_list`.  Define a module, `SparseSet`, which uses inclusion and
Set.Make to implement the `memset` interface with elements of type
`int`.  (The entire definition should use approximately four lines of
code: you can implement `from_list` quite succinctly with fold)

#### `BoolSet` module

When a bloom filter has only a few elements, explicitly representing
the elements with a `SparseSet` will be time- and space-efficient, but
a bloom filter with many elements typically represents a set as a bit
sequence using a random access data structure like an array, or string.
We'll use the type `bool array` to represent such sets.   
To decide if the (non-negative) integer `i` belongs to the set, we access the boolean at index `i` of the data structure, and if it is `true` then `i` is in the
set, and otherwise it is not.  (So the set {`0`, `3`} could be represented by the array `[| true; false; false; true |]`)

This representation is space-efficient when the sets are large and
also allows for efficient logical operations on sets (e.g. the union
of two sets is the element-wise boolean or (`||`) of their arrays;
the intersection is the element-wise boolean and (`&&`)).
`bloom.ml` has an incomplete implementation of some of the helper
functions needed to create the `BoolSet` module.  You'll need to complete the
definition so that a BitSet implements the `memset` signature with
exposed `elt` type:

+ Change the module declaration to impose the `memset` signature and
correctly expose the type of `elt`.

+ Add a (local) helper function to `BoolSet` implementing `(&@)` (the
elementwise boolean and of two `bool array`s).

+ Add a (local) helper function `make_arr_t : int -> bool array` to `BoolSet` so
that `make_arr_t i` returns a `bool array` representing the singleton set `{ i }`.  

+ Provide definitions for the `memset` signature, e.g. `empty,
  is_empty, mem, add, union, inter, from_list`.  Keep in mind that functions like `add`, `union`, and `inter` should be non-destructive, so for example

```ocaml
let s1 = BoolSet.from_list [1;3] in
let s2 = BoolSet.add 2 s1 in
BoolSet.mem 2 s1
```

should evaluate to `false`.  

#### `Filter` functor

At this point we're ready to fill in the definition of the
`Bloom.Filter` functor: `bloom.ml` already provides the basic syntax
for the functor definition.  However, you'll need to:

+ modify the declaration slightly with sharing constaints in order to
  make the code compile and allow creation of `Filter`s with
  accessible (non-abstract) elements.

+ provide definitions for the functions in the `memset` signature, by
  storing an element `e` as the list of hash function values output by `(H.hashes
  e)` in a set implemented by the module `S`, and checking for
  membership of `x` by checking that elements of `(H.hashes x)` are
  all present in the underlying set.  These should all be fairly
  simple calls to functions provided by the module `S` or `H`, possibly in
  combination with folds and maps as needed.

#### `IntHash`

The `bloom.ml` file already contains one definition of a module
satisfying the `hasher` interface, the `StringHash` module.  Below
this, add a definition for a second module satisfying `hasher`, the
`IntHash` module.  The type `t` in `IntHash` will be `int`, and
`hashes n` should evaluate to the list `[(h1 n) ; (h2 n); (h3 n)]`,
where `h1(n) = (795*n + 962) mod 1031`,  `h2(n) = (386*n + 517) mod
1031`, and `h3(n) = (937*n + 693) mod 1031`.

### Testing driver

Now let's write a "driver" program to test out our Bloom Filter
implementations.  We'll store a large number of elements in a Bloom Filter, then create a huge list of elements that aren't in the set, and test how many generate false positives, while timing both the creation and testing of the filters. The file named `bloomtest.ml` in the `hw6` directory already contains some of the code for this functionality.  

#### The `BFTimeTest` functor

One of the main portions of the driver will be a `BFTimeTest` functor that acts on a `memset`, `B`.  Some of the code for `BFTimeTest` is already present in `bloomtest.ml`, but you'll need to make some modications:

+ Modify the module declaration to make `BFTimeTest` a functor with argument `B` (satisfying signature `memset`)
+ Add a function `build_bf` that takes an input `lst : B.elt list`, and returns a pair `(s,t) : B.t * float`, where `s` represents the set of elements of `lst`, and `t` is the number of seconds required to compute `s`.  The helper function `time : (unit -> 'a) -> ('a * float)` can be used by wrapping the computation of `s` in a thunk and passing the thunk to `time`.
+ Add a function `test_bf : B.t -> B.elt list -> (int * float)`, that times how long it takes to count how many elements of its second argument are present in the set represented by its first argument.

#### Declaring Modules

Ultimately, we want to compare the performance of `Bloom.Filter` with `SparseSet`s of `int` values with `Bloom.Filter` with `BoolSet`s of `int` values, and likewise when the elements are string values.  To do that, we'll instantiate four `Bloom.Filter` modules, and four corresponding `BFTimeTest` modules. `bloomtest.ml` already instantiates `BloomSInt` and `BloomBInt` modules.  You should add code that:

+ Instantiates a `Bloom.Filter` module, `BloomSStr`, using `SparseSet` and `StrHash`
+ Instantiates a `Bloom.Filter` module, `BloomBStr`, using `BoolSet` and `StrHash`.
+ Instantiates `BFTimeTest` modules named `SIntTest`, `SStrTest`, `BIntTest`, and `BStrTest` to test `BloomSInt`, `BloomSStr`, `BloomBInt`, and `BloomBStr`, respectively.

#### Running the tests

In order to test the Bloom Filters storing integers, `bloomtest.ml` already has code that does the following:

+ Creates a list `insert_ilist` of 200 random integers between 0 and 2<sup>30</sup>-1.  These are the integers we'll build a Bloom Filter from.
 using the function `Random.int`.

+ Create a list `test_ilist` of 1 million random integers between 0 and
 2<sup>30</sup>-1.  These are the integers we'll test to count how many false positives we find.

 Following the creation of these lists, you should insert code that calls the `run_test` function in `SIntTest` (with test name `"SparseInt"`) and then calls the `run_test` function in `BIntTest` (with test name `"BoolInt"`), as indicated in the comments.

Similarly, to test the Bloom Filters storing strings, `bloomtest.ml` also has code that does the following:

+ Reads the list of the 2048 most-visited websites from the file
`top-2k.txt` into a list of strings, `insert_slist`.
+ Reads the list of the top 1 million minus 2048 most-visited websites from
the file `top-1m.txt` into a list of strings, `test_slist`.

Following the creation of these lists, you should insert code that calls the `run_test` function in `SStrTest` (with test name `"SparseString"`) and then calls the `run_test` function in `BStrTest` (with test name `"BoolString"`), as indicated in the comments.

When you're done, compiling and running the code should print out a formatted report as follows:

```
% ocamlopt -o bloomtest str.cmxa bloom.ml bloomtest.ml
% ./bloomtest
SparseInt      : build time =   0.0040s test time =   0.6567s false positives = 200350
BoolInt        : build time =   0.0142s test time =   0.0714s false positives = 200350
SparseString   : build time =   0.0110s test time =   1.1521s false positives = 13658
BoolString     : build time =   3.5308s test time =   0.1637s false positives = 13658
```

(Of course the timings will be different on different machines, and since the int tests are randomized you may see different numbers of false positives for those tests.  If you cannot compile with `ocamlopt`, compiling with `ocamlc` will produce longer times but shouldn't change the proportion of false positives.)

Warning: we are explicitly *not* giving you many test cases in the gitbot *feedback* for this assignment. Building and testing these pieces are up to you - the gitbot will only test that your repo has the right files, that the files compile, and that they define the appropriate modules and variables.  However, the *grading* will certainly test your code for correctness.

## All done!

Don't forget to commit all of your changes to the various files edited
for this homework, and push them to (the `hw7` directory in) your individual class repository on UMN github:

+ `bloom.ml`
+ `bloomtest.ml`

You can always check that your changes have pushed
correctly by visiting the repository page on github.umn.edu.

## No late grading

Unfortunately, because of the truncated last week of classes for Spring
Semester, we can't honor late grading requests for Homework 7.  (University
policy does not allow homework due dates after the last day of classes.)  This
homework has been reduced in scope from previous offerings of this class to make
up for this fact.  However, we _will_ offer an **early grading incentive**:  if
your homework is ready for grading by 11:59pm on Friday, May 3rd, you may add a
file named `early_request` to your repo and push it to github.  **Only if this
file is found on github at 11:59pm on Friday, May 3rd**, you will receive a
10-point bonus (out of 100) for your homework 7 grade.  If you choose this
option, **it is your responsibility to check that this file can be seen on
github before the deadline.**  
