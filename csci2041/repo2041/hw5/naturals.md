### ``exp``
### Property
+ ∀ n : N, P(n): ∀x : float.  exp x n ≡ x ^ n


### Base Case
+ P(0): exp x 0 ≡ x ^ 0
  + 1 = 1 ✓ **[eval of exp]**

### Inductive Case
+ ∀n P(n) => P(n+1)
  + ∀x exp x n ≡ x ^ n => exp x (n+1) ≡ x ^ (n+1)

#### IH:
+ ∀x exp x n ≡ x ^ n

+ exp x (n+1) ≡ x * (exp x ((n+1)-1)) **[eval of exp]**
+ ≡ x * (exp x n) **[simplification]**
+ ≡ x * (x ^ n) **[by I.H.]**
+ ≡ x ^ (n+1) ✓ **[simplification]**

### ``exp_nat``

### Property
+ ∀ n : nat, P(n), ∀x : float.  exp x (to_int n) ≡ exp_nat x n

### Base Case
+ P(Zero): exp x 0 ≡ exp_nat x Zero
  + 1 ≡ 1 ✓ **[eval of exp_nat and exp]**

### Inductive Case
+ ∀n : nat. P(n) => P(Succ n)
  + ∀x exp x (to_int n) ≡ exp_nat x n => exp x (to_int (Succ n)) ≡ exp_nat x (Succ n)

#### IH:
+ ∀x exp x (to_int n) ≡ exp_nat x n

+ exp_nat x (Succ n) ≡ x * . exp_nat x n **[eval of exp_nat]**
+ ≡ x * exp x (to_int n) **[by I.H.]**
+ ≡ exp x (to_int(Succ n)) ✓ **[by def of exp and to_int]**

### ``geq_nat``

### Property
+ ∀m geq_nat m n ≡ (to_int m) >= (to_int n)

### Base Case
+ P(Zero) ∀m : nat. get_nat m Zero ≡ (to_int m) >= (to_int Zero)
  + get_nat m Zero ≡ to_int m >= 0 **[eval of to_int]**
  + get_nat m Zero ≡ true **[property of to_int(m : nat) always >= 0]**
  + true ≡ true ✓ **[eval of get_nat]**

### Inductive Case
+ ∀n : nat. P(n) => P(Succ n)
  + ∀m : nat. geq_nat m n ≡ (to_int m) >= (to_int n) => get_nat m (Succ n) ≡ (to_int m) >= (to_int (Succ n))

#### IH:
+ geq_nat m n ≡ (to_int m) >= (to_int n)

+ ∀ m : nat. geq_nat m (Succ n) ≡
+ if m = n then
  + false ≡ (to_int m) >= (to_int (Succ n)) **[by eval of get_nat]**
  + false ≡ (to_int m) >= 1 + (to_int n) **[eval of to_int]**
  + false ≡ (to_int n) >= 1 + (to_int n) **[substitute m for n]**
  + false ≡ 0 >= 1 **[subtract (to_int n) from both sides]**
  + false ≡ false ✓ **[arithmetic]**
+ else (m != n)
  + geq_nat m (Succ n) ≡ geq_nat m n **[eval of geq_nat]**
  + ≡ (to_int m) >= (to_int n) **[by I.H.]**
  + ≡ (to_int m) > (to_int n) **[since m != n]**
  + ≡ (to_int m) >= 1 + (to_int n) **[property of >= on natural #s]**
  + ≡ (to_int m) >= (to_int (Succ n)) ✓ **[reverse eval to_int]**
