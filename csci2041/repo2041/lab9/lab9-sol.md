## Binomial Coefficients

Consider the following program to compute binomial coefficients
("choose"):

```
let rec choose n k =
  if (n=k) || (k = 0) then 1
  else ((choose (n-1) (k-1))*n)/k
  ```

Use induction on 𝓃 to prove that for all `𝓃 : ℕ`, for all `𝓀 : ℕ`,

> 𝓀 <= 𝓃 ⇒ `choose 𝓃 𝓀` = 𝓃! / ((𝓃-𝓀)! * 𝓀!)

Your proof should:
1. State the precise property P( 𝓃 ) you're going prove.
2. Clearly state the base case and prove it's correct.
3. Clearly state the inductive (step) case and inductive hypothesis, and
   formally prove the inductive hypothesis implies the inductive conclusion.

# `choose`

### Property
P(n): `∀ n: ℕ, ∀ k : ℕ, k <= n -> choose n k ≡ n!/((n-k)! * k!) `

### Base Case
P(0): n = 0,  k = 0:
`choose 0 0 ` ≡ 1 **[eval of `choose`]**,  
≡ `1` **[eval of `n! / ((n-k)! * k)`]** ✓
### Inductive Case
∀ n: ℕ, ∀ k : ℕ . P(n) `choose n k ≡ n!/((n - k)! * k!)` ⇒ `choose (n+1) k ≡ (n+1)!/((n - k + 1)! * k!)`

#### IH: `∀ n: ℕ, ∀ k : ℕ .  choose n k ≡ n!/((n - k)! * k!)`.
We need to prove that `P(n+1): choose (n+1) k ≡ (n+1)!/((n - k + 1)! * k!)`.  We have:

`if (n+1=k) || (k = 0) then 1 else ((choose n (k-1))*(n+1))/k` **[def of `choose`]**
≡ `(n!/(n-(k-1))! * (k-1)) * (n+1) / k` **[by IH]**
≡ `(n+1)!/ ((n+1) - k)! * k!)` **[by arith]**
≡ `(n+1)!/ ((n - k + 1) * k!)` ✓


## Structured Comparisons

```
let rec eq_nat n1 n2 = match (n1,n2) with
| (Zero,Zero) -> true
| (Zero,_) | (_, Zero) -> false
| (Succ n1', Succ n2') -> eq_nat n1' n2'
```

Use structured induction on the type `nat` to prove that for all `m : nat`, for all `n : nat`,

> `(to_int m) = (to_int n)` ≡ `eq_nat m n`


# `eq_nat`  

### Property
P(n): ∀ m : nat `eq_nat m n ≡ (to_int m) = (to_int n)`  

### Base Case
P(Zero): `eq_nat m Zero` ≡ to_int m = to_int Zero **[eval of `eq_nat`]**, ✓

### Inductive Case
 V m : nat . `eq_nat m n ≡ (to_int m) = (to_int n)` ⇒ `eq_nat (Succ m) n ≡ (to_int (Succ m)) = (to_int n)`

#### IH:  `V m : nat . eq_nat m k ≡ (to_int m) = (to_int k)`.
We need to prove that `eq_nat m (Succ k) ≡ (to_int m) = (to_int (Succ k)) `.  We have:

`eq_nat m (Succ k)` ≡ `if m = Zero then false. if m = Succ m1 then eq_nat m1 k1 ` **[def of `eq_nat`]**

≡ `if m = Zero then eq_nat m (Succ k) ≡ to_int Zero = to_int (Succ k) ` **[eval of eq_nat]**
≡ `if m = Succ m1 then eq_nat m (Succ k) ≡ to_int m = to_int (Succ k) ` **[eval of eq_nat]** ✓
