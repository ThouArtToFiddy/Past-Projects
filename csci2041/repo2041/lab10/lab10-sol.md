# `list_add`  

### Property
P(l): length (list_add l1 l2) ≡ max (length l1) (length l2)


### Base Case
P([]): ∀ l2 : int list :  length (list_add [] l2) ≡ max (length []) (length l2)    
≡ length (ls) [eval of list_add]
≡ length (ls) + 0 [additive identity]
≡ (length []) + (length ls) ✓ [reverse eval of length]

### Inductive Case
∀ l2 : int list : length (list_add l1 l2) ≡ max (length l1) (length l2) => length (list_add (h::l1) l2) ≡ max (length (h::l1)) (length l2)

#### IH
length (list_add l1 l2) ≡ max (length l1) (length l2)

Two cases, when l2 is empty, and when it has elements.

∀ l2 = a::t2. need to prove : length (list_add (h::l1) l2) ≡ max (length (h::l1)) (length l2)
≡ length ((h+a) :: (list_add l1 t2)) [eval of list_add]
≡ 1 + length (list_add l1 t2) [eval of length]
≡ 1 + max (length l1) (length t2) [by I.H.]
≡ max (1 + length l1) (1 + length t2) [arithmetic]
≡ max (length (h::l1)) (length a::t2) [reverse eval of length]
≡ max (length (h::l1)) (length l2) ✓ [simplification]

∀ l2 = []. length (list_add (h::l1) []) ≡ (length (h::l1)) [by eval of list_add]
≡ (length (h::l1)) + 0 [additive identity]
≡ (length (h::l1)) + (length []) [reverse eval length]
≡ (length (h::l1)) + (length l2) ✓ [simplification]

# `simplify`
### Property
∀ p1: polyExpr. P(p1): deg p1 ≡ deg (simplify p1)


### Base Case
P(X): deg X ≡ deg (simplify X)
≡ deg X ✓ [eval of simplify]

P(Int i): deg (Int i) ≡ deg (simplify Int i)
≡ deg (Int i) ✓ [eval of simplify]


### Inductive Case
P(p1) && P(p2) => P(Add(p1,p2))
P(p1) && P(p2) => P(Mul(p1,p2))

#### IH
deg p1 ≡ deg (simplify p1) && deg p2 ≡ deg (simplify p2)

need to prove: deg Mul (p1,p2) ≡ deg (simplify Mul(p1,p2))
≡ deg (simplify p1) + deg (simplify p2) [eval of simplify and deg]
≡ deg p1 + deg p2 [by I.H.]
≡ deg (Mul (p1,p2)) ✓ [by reverse eval deg]

need to prove deg Add(p1,p2) ≡ deg (simplify Add(p1,p2))
≡ max (deg (simplify p1)) (deg (simplify p2)) [eval of simplify and deg]
≡ max (deg p1) (deg p2) [by I.H.]
≡ deg (add (p1,p2)) ✓ [by reverse eval deg]
