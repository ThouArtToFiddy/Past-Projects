# Exercise Set 9: Induction on Natural Numbers

*CSci 2041: Advanced Programming Principles, Fall 2019 (Hopper)*

**Due:** Monday, April 1 at 11:59pm

## 1.  Types and Evaluations (review)

Copy the file `ex9/types.md` from the public `ex2041-s19` repository to an `ex9` directory in your own repo.  Using this file as a template, fill in for each of the following expressions whether it will result in a compile-time type error (`Type: Error`) or, if it is well-typed, the type of the expression (e.g. `Type: float`).  On the following line, explain your answer.

1. `raise 3`

2. `try float_of_int (3/0) with _ -> infinity`

3. `let rec any p = function [] -> [] | h::t -> (p h) || (any p t) in any`

4. `let rec flip x y = flip y x in (flip 2)`

5. `let rec mop b f = function [] -> [] | h::t -> if b then ((f h)::(mop false f t)) else (mop true f t) in mop`

6. `let rec pam f = function [] -> [] | h::t -> (pam f t)::(f h) in pam`

7. `let rec dlof f = function [] -> f None None | h::t -> f (Some h) (Some (dlof f t)) in dlof`

8. `try (Invalid_argument "3") with _ -> Not_found`

### Test cases

In order to receive full credit for this problem, your solution should have the correct type and some explanation for at least 6/8 questions.

## 2.  Buggy Induction Proofs
Some problems in this section involve the "structured natural numbers" from Friday's lecture.  For reference we define them here:

```
type nat = Zero | Succ of nat
let rec to_int (n:nat) = match n with
| Zero -> 0
| Succ m -> 1 + (to_int m)

let rec plus_nat m n =  match m with
| Zero -> n
| Succ m' -> Succ (plus_nat m' n)

let rec mul_nat m n = match m with
| Zero -> Zero
| Succ m' -> plus_nat n (mul_nat m' n)
```

In each of the sections below we will give a **false** proof by induction about
a program behavior.  Your job is to identify the line number on which the proof
goes wrong, and explain why that line is incorrect.  ***THESE PROOFS ARE INCORRECT AND YOU SHOULDN'T TRY TO USE THEM IN THE NEXT SECTION***!

### `tr_fact`
Consider the following definition:

```
let fact n =
  let rec tr_fact i acc =
    if i = 0 then acc
    else tr_fact (i-1) (acc*i)
  in tr_fact n 1
```

Find the error in the following "proof" that ∀ `n : ℕ`. ∀ 𝒶.  `tr_fact n 𝒶 ≡ n * 𝒶`:

1. Base Case: ∀ 𝒶,
2. `tr_fact 1 𝒶` ≡ `tr_fact 0 (1*𝒶)`  **[ by evaluation of `tr_fact` ]**
3.  ≡ `1 * 𝒶`, **[eval of `tr_fact`]**, ✓

4. Inductive Case: ∀ `n`, P(`n`) ⇒ P(`n+1`)
5. IH: P(`n`) ≡ ∀ 𝒶 . `tr_fact n 𝒶` ≡ `n * 𝒶`
6. Assuming IH. we need to prove P(`n+1`) ≡ ∀ 𝒶 . `tr_fact (n+1) 𝒶` ≡ `(n+1) * 𝒶`
7. We have:
8. `tr_fact (n+1) 𝒶` ≡ `tr_fact ((n+1)-1) ((n+1) * 𝒶)` **[eval of `tr_fact`]**
9. ≡ `tr_fact n ((n+1) * 𝒶)` **[simplification]**
10. ≡ `(n+1) * 𝒶` **[by IH]**, ✓

### `rfact`
Here's another definition:
```
let rec rfact n = if n < 2 then n else n*(rfact (n-1))
```

Find and explain the bug in the following "proof" that ∀ `n : ℕ` . `rfact n ≡ 0`:

1. Base Case: `rfact 0 ≡ 0` **[eval of `rfact`]**, ✓

2. Inductive Case: ∀ i. P(i) ⇒ P(i+1)

3. IH: P(`n`) ≡ `rfact n ≡ 0`
4. Assuming IH, we need to prove that P(`n+1`), e.g. `rfact (n+1) ≡ 0`.  We have:
5. `rfact (n+1)` ≡ `(n+1)*(rfact n)` **[eval of `rfact`]**
6. ≡ `(n+1) * 0` **[by IH]**
7. ≡ 0, ✓

### `tr_nat`
Using this definition:

```
let tr_nat n m = match m with
| Zero -> n
| Succ m -> tr_nat (n+1) m
```

Here's a "proof" that ∀ `m : nat`. ∀ `n : ℕ`. `tr_nat n m` = `to_int m`.  Where's the bug?

1. Base Case: n = 0, `m` = `Zero`:
2. `tr_nat 0 Zero` ≡ 0 **[eval of `tr_nat`]**
3. ≡ `to_int Zero` **[eval of `to_int`]** ✓

4. Inductive case: ∀ `m`. P(`m`) ⇒ P(`Succ m`):

5. IH: ∀ `m`. ∀ `n`. `tr_nat n m` = `to_int m`
6. Assuming IH, need to show that ∀ `n`. `tr_nat n (Succ m)` ≡ `to_int (Succ m)`:
7. `tr_nat n (Succ m)` ≡ `to_int (Succ m)` **[by IH, ∀ m . P(m)]** ✓

### `pow2_nat`
Using these definitions:
```
let rec pow2_nat = function
| Zero -> 1
| Succ n -> 2 * (pow2_nat n)

let rec pow2 n acc =
  if n = 0 then acc
  else pow2 (n-1) 2*acc
```
What's wrong with the following proof that ∀ `n : nat`. ∀ 𝒶. `pow2_nat n` ≡ `pow2 (to_int n) 𝒶`?

1. Property P(`n`): ∀ 𝒶. `pow2_nat n` ≡ `pow2 (to_int n) 𝒶`.
2. Base Case: P(`Zero`) ≡ ∀ 𝒶. `pow2_nat Zero` ≡ `pow2 (to_int Zero) 𝒶`.
3. `pow2_nat Zero` ≡ 1 **[eval of `pow2_nat`]**
4. `pow2 (to_int Zero) 𝒶` ≡ `pow2 0 𝒶`  **[eval of `to_int`]**
5. `pow2 0 𝒶` ≡ 𝒶 **[eval of `pow2`]**
6. Thus, P(`Zero`) is true when 𝒶 = 1, ✓

7. Inductive case: ∀ `n`. P(`n`) ⇒ P(`Succ n`):

8. IH: ∀ 𝒶 . `pow2_nat n` ≡ `pow2 (to_int n) 𝒶`.
9. Assuming IH, we need to show that `pow2_nat (Succ n)` ≡ `pow2 (to_int (Succ n)) 𝒶`.
10. `pow2_nat (Succ n)` ≡ `2 * (pow2_nat n)` **[eval of `pow2_nat`]**
11. `2*(pow2_nat n)` ≡ `2*(pow2 (to_int n) 𝒶)` **[by IH]**
12. ≡ `pow2 (to_int n) (2*𝒶)` **[lemma: by induction]**
13. ≡ `pow2 (1 + (to_int n)) 𝒶` **[reverse eval of `pow2`]**
14. ≡ `pow2 (to_int (Succ n)) 𝒶` **[reverse eval of `to_int`]** ✓

15. We need the lemma that says ∀ n, ∀ 𝒶, `2*(pow2 n  𝒶)` ≡ `pow2 n (2 * 𝒶)`.
16. Base case: `2*(pow2 0 𝒶)`  ≡ `2*𝒶` ≡ `pow2 0 (2*𝒶)`.
17. IH: ∀ 𝒶, `2*(pow2 n 𝒶)` ≡ `pow2 n (2 * 𝒶)`
18. then `2*(pow2 (n+1) 𝒶)` ≡ `2*(pow2 n (2*𝒶))` **[evaluation]**
19. ≡ `(pow2 n (2*(2*𝒶)))` **[IH]**
20. ≡ `(pow2 (n+1) (2*𝒶))` **[reverse eval]** ✓

### Answer format and test cases

Your solutions for this section should go in the file `ex9/bugs.md` following the format in the copy of this file appearing in the public `ex2041-s19` repo, and follow the format in that file. Try to complete 3 of the 4 questions in this section.

## 3.  Induction Proofs (without bugs)

Now let's prove true versions of the false theorems above:

### `tr_fact`

Using the definition of `tr_fact` above, prove that ∀ 𝓃 : ℕ. ∀ 𝒶 . `tr_fact 𝓃  𝒶` ≡ `𝓃! * 𝒶`.  Put your solution in a file named `tr_fact.md`

### `tr_nat`

Using the definition of `tr_nat` above, prove that ∀ `m : nat` . ∀ `𝓃 : ℕ` . `tr_nat  𝓃 m` ≡ `𝓃 + (to_int m)`.  Put your proof in a file named `tr_nat.md`

### `pow2_nat`

Using the definitions of `pow2_nat` and `pow2` above, prove that ∀ `n : nat` . ∀ `𝒶 : ℕ` . `𝒶 * (pow2_nat n)`  ≡ `(pow2 (to_int n) 𝒶)`.  Put your proof in a file named `pow2_nat.md`

### Test cases
Each proof should have a "level 1 heading" with the problem name, a "level 3 heading" with the name "Property" under which is stated the property P(n) being proven for all n, a level 3 heading with the name "Base Case", under which the base case is proven, a level 3 heading with the name "Inductive Case" under which the inductive case is stated, a level 4 heading which states the inductive hypothesis, and the proof, as in the example file [template.md](template.md).


Unfortunately, performing automated grading of induction proofs without teaching a separate class on automated theorem-proving tools is not feasible. Thus the gitbot will only check that your solutions have the required components. **Your submissions will be read by a grader for the final grade, though.**  You should attempt at least 2 proofs in this section.
