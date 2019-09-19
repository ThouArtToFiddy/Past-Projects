### I. ``map id l ≡ l``
### Property
+ ∀l : int list. map id l ≡ l


### Base Case
+ P([]):  map id [] ≡ []
  + [] ≡ [] ✓ **[eval of map]**

### Inductive Case
+ ∀l : int list. P(l) => P(h::l)
  +  map id l ≡ l => map id (h::l) ≡ (h::l)

#### IH:
+ map id l ≡ l

+ map id (h::l) ≡ (id h)::(map id l) **[eval of map]**
+ ≡ h :: (map id l) **[eval of id]**
+ ≡ h::l ✓ **[I.H.]**

### II. ``length l ≡ length (reverse l)``
### Property
+ ∀l : int list. length l ≡ length (reverse l)


### Base Case
+ P([]):  length [] ≡ length (reverse [])
  + length [] ≡ length [] ✓ **[eval of reverse]**

### Inductive Case
+ ∀l : int list. P(l) => P(h::l)
  +  length l ≡ length (reverse l) => length (h::l) ≡ length (reverse (h::l))

#### IH:
+ length l ≡ length (reverse l)

+ Lemma:
  + Property:
    + ∀l1 : int list. P(l1) ∀l2 : int list. length l1 + length l2 = length (tail_rev l1 l2)

  + Base Case:
    + P([]): ∀l2: int list. length [] + length l2 = length (tail_rev [] l2)
    + ≡ length l2 = length (tail_rev [] l2) **[eval of length]**
    + ≡ length l2 = length l2 ✓ **[eval of tail_rev]**

  + Inductive Case
    + ∀l1 : int list. P(l1) => P(h::l)
      + length l1 + length l2 = length (tail_rev l1 l2) => length (h::l1) + length l2 = length (tail_rev (h::l1) l2)

  + I.H.
    + length l1 + length l2 = length (tail_rev l1 l2)

  + we have: length (tail_rev (h::l1) l2) need to prove it = length (h::l1) + length l2
    + ≡ length (tail_rev l1 (h::l2)) **[eval of tail_rev]**
    + ≡ length l1 + length (h::l2) **[by I.H.]**
    + ≡ 1 + length l1 + length l2 **[eval of length]**
    + ≡ length (h::l1) + length l2 ✓ **[reverse eval of length]**

+ we have length (reverse (h::l)), want length (h::l)

+ length (reverse (h::l)) ≡ length (tail_rev (h::l) []) **[eval of reverse]**
+ ≡ length (tail_rev l (h::[])) **[eval of tail_rev]**
+ ≡ length l + length (h::[]) **[by Lemma]**
+ ≡ 1 + length l **[by eval of length]**
+ ≡ length (h::l) ✓ **[by reverse eval of length]**
