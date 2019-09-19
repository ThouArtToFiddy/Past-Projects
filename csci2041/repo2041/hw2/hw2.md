# Homework 2: Git a grep!

*CSci 2041: Advanced Programming Principles, Spring 2019 (Hopper)*

**Due:** Friday, February 22 at 11:59pm

In the `hw2041-s19/hw2` directory, you will find files named `regExpr.ml` and `ogrep.ml`.
Create a directory named `hw2` in your personal repository, and copy both of these files
to your `hw2` directory.  Don't forget to run `git add` on both the directory and
the files!

## Background: grep

Large software systems typically produce huge amounts of debugging and processing data scattered across dozens or more files and directories.  When developers or administrators need to debug these systems, they typically need to search through these files for messages or inputs that help find what kind and where the problem happened.  One of the most useful (and longest-existing) tools for this kind of search is the command-line program `grep`. The `grep` program takes command-line inputs of a string to look for and the names of one or more files to search in.  When `grep` finds a line containing the string, it prints the name of the file, followed by a colon (`:`) and the matching line.  For example, in the directory `/usr/include/openssl` on a cselabs machine, we might search for the string "encrypt" as follows:

```
% grep encrypt ssl.h ssl2.h ssl3.h
ssl.h: * throwing out anonymous and unencrypted ciphersuites! (The latter are not
ssl.h:    unsigned long algorithm_enc; /* symmetric encryption */
ssl2.h:    int ract_data_length;       /* Set when things are encrypted. */
ssl3.h: * The standards give a maximum encryption overhead of 1024 bytes. In
```

Part of what makes grep more useful than "File search" is that in addition to searching for fixed strings, we can specify a pattern that we want grep to search for using a **regular expression**.  Regular expressions are a class of programs that specify a set of matching strings, according to the following rules:

1. For any character `a`, **`a`** is a regular expression that matches it.
2. For any regular expressions **`r`** and **`s`**, the _concatenation_ **`rs`** is a regular expression.  A string matches **`rs`** if it consists of a string matching **`r`** followed by a string matching **`s`** (so for example, the string `"ab"` matches the regular expression **`ab`**.)
3. For any regular expressions **`r`** and **`s`**, the _union_ **`r|s`** is a regular expression.  A string matches **`r|s`** if it matches **r** or **s**.
4. For any regular expression **`r`**, the kleene closure **`r*`** is a regular expression.  A string matches **`r*`** if it would match 0 or more copies of **`r`** concatenated.  (So for example, the empty string `""` always matches **`r*`**; or more interestingly the string `001000011` matches the regular expression **`(00|1)*`**.)

The regular expressions supported by `grep` have a few extra features:

* The wildcard `.` matches any single character
* _Bracket_ expressions give a list of characters or character ranges to match against a single character, for instance `[abc]` matches a single `a`, `b`, or `c` character, `[a-z]` matches any single lower case character, and `[123a-z]` matches any lower case character or a `1`, `2`, or `3`.  Additionally, if a bracket begins with a caret (`^`), this indicates that it matches any character not included in the bracket, so `[^0-9]` matches any non-digit character.
* Because we might want to search for a string with a parenthesis (`(`,`)`), pipe (`|`), asterisk (`*`) or period (`.`) in it, there are some escaping rules: `|`, `(`, and `(` need to be "escaped" with a `\` in order to be regular expression operations (so `a|b` matches the string `"a|b"`, but `a\|b` matches `"a"` or `"b"`; `(a)` only matches the string `"(a)"`, but `\(a\)` matches `"a"`.)  Conversely, `\.` and `\*` mean the characters `"."` and `"*"`.
* Similarly, to make a bracket that includes `]`, we put the `]` first, eg `[]a]` matches `"]"` or `"a"`; to include `^` we put it anywhere but the first position (so `[a^]` matches `"a"` or `"^"`), and to include `-` in a bracket, it must be last: `[a-]` matches `"a"` or `"-"`).
* Grep implicitly searches for lines that contain a string matching the regular expression.  To specify that the string must start at the beginning of a line, we can prefix the regular expression with a caret (`^`), and to specify that the string must end at the end of a line, we can add a dollar sign (`$`) to the end of the regular expression (so `aa*` matches any line that has one or more `a` characters but `^aa*$` only matches lines that consist only of `a` characters)
* Grep also supports "character classes" and "back-references", but for the purposes of this assignment, we'll ignore them.

Here are a few concrete examples:

* Searching for all hexadecimal numbers starting with `0x`: `grep "0x[0-9a-f][0-9a-f]*"`
* Searching for declarations of public static accessor methods: `grep "public static\(.*\)get\(.*\)("`
* Searching for all lines with "GET" or "POST" followed later by 400-404: `grep "GET\|POST\(.*\)40[0-4]"`

In this assignment, we will write an Ocaml program that mimics the behavior of `grep`.

## Regular Expressions, Lexing, and Parsing

Regular expressions are a fundamental computational tool, used in programs from web applications, databases and network security to genome sequencing and computational linguistics.   In order to process regular expressions, we first have to obtain them from input, and we usually do this from strings (in the case of `grep`, the string specifying a regular expression comes from a command line argument).  In this homework, we'll write code to convert strings that represent grep-syntax regular expressions into data structures representing these expressions, and code that checks whether a string matches a regular expression.

### Lexing
Reading structures like expressions or programs is usually
separated into two phases, _lexing_ and _parsing_.  In _lexing_, a
string is converted into a list of *tokens*, which are the important
lexical components of a program.  Here, the important components are:

+ Opening and Closing parentheses, `\(` and `\)`,

+ Asterisks, `*`, representing the "star" operation,

+ Pipes, `\|`, representing the union operation,

+ Brackets, `[` and `]`, representing bracket characters,

+ The wild-card character `.`,

+ And ordinary characters.

### Parsing

In _parsing_, a list of tokens is converted to a structured
representation of an expression, often called an "abstract syntax
tree."  In order to do this, we need to define the syntax of regular
expressions and their abstract representation.  We do so inductively, as
follows.  A regular expression is either:

+ a single character, or

+ a wildcard character, or

+ a bracket character, or

+ a star operator applied to a regular expression, or

+ The concatenation of two regular expressions, consisting of tokens `<re1><re2>` or

+ The union of two regular expressions, consisting of tokens `<re1> U <re2>`.

When parsing a sequence of tokens into a syntax tree, we will often need to read sub-expressions from the sequence, and keep track of the remaining tokens after this sub-expression, e.g. after parsing the `<re1>` above we'll need to know the remaining sequence of tokens after the `U`nion token to parse `<re2>`; or if we parse a sub-expression that starts with an open paren, we'll need to check that it was followed by a closing paren.

### Matching

Once we have a syntax tree for a regular expression, checking whether a string matches the expression can also be a little tricky.  There are two primary approaches, *finite state machines* and *search with backtracking* or *continuation*.  For complex regular expressions, finite state machines are faster but require more processing (and theory) before checking; you can learn more about this approach in CSci 4011 and CSci 5161.  We will use the *continuation* approach: whenever we try to match a (sub)-string with a (sub)-regular expression, we always supply a function that remembers how to "continue" trying to match the expression.  Initially the continuation checks that we've reached the end of the string, but when checking, for instance, whether a string matches the concatenation of two subexpressions, we recursively check the first subexpression and pass along a new function that checks whether the rest of the string matches the second subexpression.

## Homework 2: `grep`

Open `regExpr.ml` in your favorite text editor, and you'll see that there's some
implementation in the file already:

+ `tokenize` converts a string into a list of regular expression tokens.  Notice that `tokenize` and `read_escape` are *mutually recursive*: `tokenize` calls `read_escape` when it encounters a backslash character, and `read_escape` calls back into `tokenize` to continue lexing the regular expression string.  Notice that `tokenize` doesn't currently handle bracket expressions or take any special action for the `*` operator.

+ the type `regexp` is an inductive type representing regular expressions.  It is, however, missing two important variants: `Star` and `Bracket`.

+ The mutually recursive functions `parse_base_case`, `term_helper`, `parse_terms`, `regex_helper`, and `parse_regex` implement a "recursive descent parser" as follows:

  - `parse_regex` and `regex_helper` attempt to construct a union of concatenated "terms" from a list of tokens (`parse_regex` calls `parse_terms` directly to find the first term, then lets `regex_helper` handle the work of looping over additional terms and combining them with `Union` constructors)
  - `parse_terms` and `term_helper` attempt to construct a concatenation of "base case" expressions, similar to the interaction between `parse_regex` and `regex_helper`.
  - `parse_base_case` attempts to read a "base case" regular expression from a list of tokens: a single character, a Wildcard, a bracket expression, or a parenthesized sub-expression (this call back to `parse_regex` is what makes the procedures all mutually recursive.)

  all of these functions return the regular expression they construct (if any) and the list of remaining input tokens.  Notice that bracket parsing (in `parse_base_case`) currently doesn't produce a useful result, and that since there's no `Star` variant of `regexp`, the functions can't correctly parse a regular expression with a `*` in it.

+ `rex_parse` handles the work of converting a string describing a regular expression into a value of type `regexp` by first lexing the string into a list of tokens and then parsing the token list to find a regular expression.  This also handles the `grep`-specific `^` and `$` modifiers (or their absence).

+ `explode : string -> char list` converts a string into a list of characters

+ `regex_match : regexp -> string -> bool` converts its second input into a `char list` and calls the continuation-search function `re_match : regexp -> char list -> (char list -> bool) -> bool` with an "initial continuation" that says that if we reach the end of the regexp at the end of the string, then the regexp and string match.  Notice that `re_match` doesn't currently know how to handle `*` in a regexp nor does it know how to handle bracket characters.


The file `ogrep.ml` does not require any modification, but "drives" the logic in regExpr.ml as follows:

+ The function `for_each_line f p` applies the procedure `p : string -> unit` to each line in the file `f`.

+ The function `grep_file re s` opens the file named `s` (or standard input if given the string `"-"`) and calls `for_each_line` with a procedure that prints the lines of the file that match the regexp `re`.

+ The function `grep_file_list re l` calls `grep_file re s` on each file name `s` in the list `l`

+ Finally, the last expression (beginning `let _ =`) checks that the program has command line arguments, attempts to parse the first command-line argument as a regular expression, and then calls `grep_file_list` on the remaining arguments (or stdin if there are none.)

The files as given will compile (with `ocamlc -o ogrep regExpr.ml ogrep.ml`) but since `rex_parse` implements the default behavior of searching for any matching substring by prefixing and postfixing its argument with `.*` and `*` is not implemented, the range of useful patterns that `ogrep` can match against is fairly limited:

```
% grep "^\(a\|b\).....$" <<EOF
some lines
a file
more lines
before
the end
EOF
a file
before
% ./ogrep "^\(a\|b\).....$" <<EOF
some lines
a file
more lines
before
the end
EOF
a file
before
%
```

For this assignment, you will be enhancing `ogrep` to correctly parse and match bracket characters and the star operation, as follows:

### 1. `tokenize` and `read_bracket`

`tokenize` is responsible for converting a string into a list of `token` values for parsing.  The implementation given with the assignment doesn't give `*` or brackets `[]` any special meaning.  To change this, first add two new constructors to the `token` declaration:
+  `ST` will represent a `*` token
+ `BR of string` will include the string of characters found inside a pair of brackets `[]`.  (So eventually the result of scanning, say `"[abc]"` will be the value `BR "abc"`)

Once you've added these variants, we'll need to update `tokenize` to correctly handle them.  `*` is a simple case and can be handled similarly to `.`.  (Once modified, the result of calling `tokenize ".*" 0` should be `[DOT; ST]`.)

Handling bracket expressions is more like escapes: add a second mutually recursive declaration to the definition of `tokenize` and `read_escape` that defines the function `read_bracket : string -> int -> token list` like `read_escape`, `read_bracket` should expect to be called with the first index of the string `st` after an open bracket.  It should scan the rest of the string until a closing bracket `]` is found, then return a `BR` value with the contents between the brackets, consed onto the result of tokenizing the rest of the string.  (So calling `read_bracket "[abc]d" 1` should result in `[BR "abc"; Ch 'd']`).  A few things to keep in mind:
  + A bracket expression *can* include the closing bracket `]` by putting it in the first position after the `[` character, so `read_bracket "[]]" 1` should evaluate to `[BR "]"]`
  + If no closing bracket is found, `read_bracket` should call `failwith "brackets unbalanced"`
  + Some functions from the [`String` library](https://caml.inria.fr/pub/docs/manual-ocaml/libref/String.html) should prove useful: `String.sub` and `String.index_from_opt`.

Don't forget to modify `tokenize` to call `read_bracket` when encountering a `[` character, so that `(tokenize "1701[abcd]" 0)` evaluates to `[Ch '1'; Ch '7'; Ch '0'; Ch '1'; BR "abcd"]`.  

### 2. `parse_base_case` and `parse_bracket`

Now that `tokenize` properly scans bracket and `*` tokens, we'll need to update the regular expression parsing functions.  First, we'll need to add a constructor, `Bracket`, to the `regexp` type.  We'll leave it up to you to determine the form of the data a `Bracket` constructor should hold.  Keep in mind, though, that bracket expressions can contain a list of single characters and ranges mixed in any order, so for example `[ab-ef0-9]` is a valid bracket expression, as is `[A-Za-z]` and `[a-zc-d]`; and that a bracket expression that starts with a caret `^` means "any character that does *not* match the following list."  

Add a function, `parse_bracket : string -> regexp` that reads the string from a `BR` and produces a `Bracket` value.  `parse_bracket` should handle the following cases:
  + Checking for the initial `^` that inverts a bracket expression
  + If a bracket string has an inverted range, or a double `-` (e.g. `z-a` or `z--`) then `parse_bracket` should call `failwith "invalid range"`
  + A bracket string may end with `-`, in which case `-` is one of the characters that can match.

Once you've defined `parse_bracket`, modify the `parse_base_case` function to call `parse_bracket` if the first token in its argument is a `BR`.

### 3. `Star` and `parse_starred_base`

Next, to support the star (`*`) operator, you'll need to add another constructor to the `regexp` type, `Star of regexp`.  Once you've done that, you'll need to update the parser functions to correctly parse expressions containing a `*`.  Add a function `parse_starred_base` to the mutually recursive group of parser functions (`and parse_starred_base token_list = `).  You'll need to replace calls to `parse_base` with calls to `parse_starred_base` in the other parser functions, and `parse_starred_base` will make a call to `parse_base_case`.  If `parse_starred_base` finds a `ST` token immediately following a base case, it should wrap the base case `regexp` in a `Star` and otherwise just return the results of `parse_base_case`.  Once you've finished with this step, it should be the case that `parse_starred_base [DOT; ST]` evaluates to `(Star Wild, [])`, `parse_starred_base [Ch 'a'; Ch 'b'; Ch 'c']` evaluates to `(Char 'a', [Ch 'b'; Ch 'c'])`, and `parse_regex [Ch 'a'; ST; Ch 'b']` evaluates to `(Concat (Star (Char 'a'), Char 'b'), [])`.

### 4. `bracket_match`

In preparation for the final step, add the function `bracket_match : regexp -> char -> bool` which takes as input a `Bracket` value and a character `c` and checks whether `c` belongs to the range of characters the bracket expression represents.  Thus `bracket_match (parse_bracket "a-f0-9") 'c'` should evaluate to `true`, and `bracket_match (parse_bracket "^0-9") '0'` should evaluate to `false`.  If `bracket_match` is called with a variant of `regexp` other than `Bracket`, it should call `invalid_arg "bracket_match"`.

### 5. `re_match`

Finally, we need to modify `re_match` to handle matching against `Star` and `Bracket` regexp values.  Add two cases to the match statement that handle the `Bracket` variant underneath the `Char` cases in the provided implementation.  These cases will look quite similar to the `Char` cases but involve calling `bracket_match` instead of a simple equality check.  Once this is done, you should find that, for instance `regex_match (Concat (parse_bracket "0-9", parse_bracket "a-z")) "0a"` evaluates to true.

Add another case to the match statement in `re_match` to handle `Star r`.  This is the trickiest case, but keep in mind that a string matches the regular expression `r*` if it would match 0 or more concatenations of `r`.  So we can match `Star r` to `s` if we can continue matching `s` with `k`, or if we can match `r` to part of `s` and continue trying to match `Star r` to the remaining portion of `s`.  (This second possibility will look a lot like the `Concat` case.)

Once you have this case correctly implemented, you should find that, for example `regex_match (Star (Char 'a')) ""` evaluates to `true`, and so does `regex_match (Star (Char 'a')) "aaa"`, but `regex_match (Star (Char 'b')) "a"` evaluates to `false`.

## Other considerations

In addition to satisfying the functional specifications given above, your code should be readable, with comments that explain what you're trying to accomplish.  It must compile with `ocamlc -c regExpr.ml ogrep.ml`.  It must be committed in the `hw2` directory of your personal repository.  Finally, solutions that pay careful attention to resources like running time and stack space (e.g. using tail recursion wherever feasible) and code reuse are worth more than solutions that do not have these properties.

## Late grading

As described in the class syllabus, you may opt to have one homework turned in late but graded for full credit.  If you would like to have turn in this homework late, then by 11:59pm on the original due date (Friday, February 22, 2019), add a file named `late_request` (the contents can be anything - e.g. your `umn.edu` username) to the `hw2` directory in your personal repository, and commit and push this to `github.umn.edu`.  If this file is present in your repo, we will wait until *11:59pm on Tuesday, February 26, 2019* to pull your repo for grading.  Note that choosing this option means you will not be able to submitting any other homeworks for late grading.

(If you created this file, pushed it, and then change your mind before the original deadline, you can remove the `late_request` file from your repo using `git rm late_request` followed by `git commit` and `git push`.)
