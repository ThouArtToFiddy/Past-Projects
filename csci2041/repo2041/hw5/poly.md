### I. ``deg (compose p1 p2) ≡ (deg p1)*(deg p2)``
### Property
+ ∀p1 : polyExpr. P(p1): ∀p2 : polyExpr. deg (compose p1 p2) ≡ (deg p1) * (deg p2)


### Base Case(s)
+ P(X): ∀p2 : polyExpr
  + deg (compose X p2) ≡ (deg X) * (deg p2)
  + deg p2 ≡ (deg X) * (deg p2) **[eval of compose]**
  + deg p2 ≡ 1 * (deg p2) **[eval of deg on right]**
  + deg p2 ≡ deg p2 ✓ **[multiplicative identity]**
+ P(Int i): ∀p2 : polyExpr
  + deg (compose X p2) ≡ (deg X) * (deg p2)
  + deg p2 ≡ (deg X) * (deg p2) **[eval of compose]**
  + 0 ≡ deg(X) * (deg p2) **[eval of deg]**
  + 0 ≡ 0 * (deg p2) **[eval of deg on right]**
  + 0 ≡ 0 ✓ **[multiplication property of zero]**

### Inductive Case
+ P(e1) && P(e2) => P(Add(e1,e2))
  + deg (compose e1 p2) ≡ (deg e1) * (deg p2) && deg (compose e2 p2) ≡ (deg e2) * (deg p2) => deg (compose Add(e1,e2) p2) ≡ (deg (Add(e1,e2))) * (deg p2)  

+ P(p1) && P(p2) => P(Mul(p1,p2))
  + deg (compse e1 p2) ≡ (deg e1) * (deg p2) && deg (compse e2 p2) ≡ (deg e2) * (deg p2) => deg (compose Add(e1,e2) p2) ≡ deg (Add(e1,e2)) * (deg p2)

#### IH:
+ deg (compose e1 p2) ≡ (deg e1) * (deg p2) && deg (compose e2 p2) ≡ (deg e2) * (deg p2)

Add Case
+ have: deg(compose Add(e1,e2) p2), need: deg (Add(e1,e2)) * (deg p2)

+ Left Side:
  + ≡ deg (Add(compose e1 p2, compose e2 p2))  **[eval of compose]**
  + ≡ max (deg (compose e1 p2)) (deg (compose e2 p2))  **[eval of deg]**
  + ≡ max ((deg e1) * (deg p2)) ((deg e2) * (deg p2)) **[by I.H.]**
+ Right Side:
  + ≡ deg (Add(e1,e2)) * (deg p2)
  + ≡ (max (deg e1) (deg e2)) * deg p2 **[eval of deg]**
  + ≡ max ((deg e1) * (deg p2)) ((deg e2) * (deg p2))) **[distribute into max]**

+ max ((deg e1) * (deg p2)) ((deg e2) * (deg p2)) ≡ max ((deg e1) * (deg p2)) ((deg e2) * (deg p2)) ✓

Mul Case
+ have: deg(compose Mul(e1,e2) p2), need: deg(Add(e1,e2)) * (deg p2)

+ Left Side:
  + ≡ deg (Mul(compose e1 p2, compose e2 p2)) **[eval of compose]**
  + ≡ deg (compose e1 p2) + deg (compose e2 p2) **[eval of deg]**
  + ≡ ((deg e1) * (deg p2)) + ((deg e2) * (deg p2)) **[by I.H.]**
+ Right Side:
  + deg (Mul(e1,e2)) *  (deg p2)
  + ≡ ((deg e1) + (deg e2)) * (deg p2) **[eval of deg]**
  + ≡ ((deg e1) * (deg p2)) + ((deg e2) * (deg p2)) **[distributive property]**

+ ((deg e1) * (deg p2)) + ((deg e2) * (deg p2)) ≡ ((deg e1) * (deg p2)) + ((deg e2) * (deg p2)) ✓

### II. ``deg (simplify p) <= deg p``
### Property
+  ∀p : polyExpr. P(p): deg (simplify p) ≡ deg p


### Base Case(s)
+ P(Int i): deg (simplify (Int i)) <= deg (Int i)
  + ≡ (deg (Int i)) <= deg (Int i) ✓ **[eval of simplify]**
+ P(X):  deg (simplify X) <= deg X
  + ≡ deg X <= deg X ✓ **[eval of simplify]**

### Inductive Case
+ P(p1) && P(p2) => P(Add(p1,p2))
  + deg (simplify p1) <= deg p1 && deg (simplify p2) <= deg p2 -> deg(simplify (Add(p1,p2))) <= deg (Add(p1,p2))
+ P(p1) && P(p2) => P(Mul(p1,p2))
  + deg (simplify p1) <= deg p1 && deg (simplify p2) <= deg p2 -> deg(simplify (Mul(p1,p2))) <= deg (Mul(p1,p2))

#### IH:
+ deg (simplify p1) <= deg p1 && deg (simplify p2) <= deg p2

+ Add Case
  + have: deg(simplify (Add(p1,p2))) want: <= deg(Add(p1,p2))

  + if either p1 or p2 is Int 0
  + **[does not matter whether p1 or p2 is 0, so will prove for when p1 is 0]**
    + deg (simplify (Add(Int 0,p2)))
    + ≡ deg(p2) **[eval of simplify]**
    + ≡ deg p2 <= deg (Add(p1,p2)) **[want right side of equal sign]**
    + ≡ deg p2 <= max (deg Int 0) (deg p2) **[eval of Add when p1 = Int 0]**
    + ≡ deg p2 <= max 0 (deg p2) **[eval of deg]**
    + ≡ deg p2 <= deg p2 ✓ **[eval of Max]**

  + if p1 and p2 are both ints:
    + deg(simplify (Add(Int i1,Int i2)))
    + ≡ deg (simp_add (simplify (Int i1), simplify (Int i2))) **[eval of Add]**
    + ≡ deg (sim_add (i1,i2)) **[eval of simplify when both ints]**
    + ≡ deg (Int(i1+i2)) **[eval of sim_add when both ints]**
    + ≡ 0 **[eval of deg]**
    + ≡ 0 <= deg(Add(p1,p2)) **[want right side of equal sign]**
    + ≡ 0 <= 0 ✓ **[eval of deg when p1 and p2 are both ints]**

  + if p1 and p2 both aren't Ints:
    + deg(simplify (Add(p1,p2)))
    + ≡ deg (simp_add(simplify p1, simplify p2)) **[eval of simplify]**
    + ≡ deg (Add (simplify p1, simplify p2)) **[eval of simp_add when both p1 and p2 aren't ints]**
    + ≡ max (deg simplify p1) (deg simplify p2) **[eval of deg]**
    + ≡ max (deg simplify p1) (deg simplify p2) <= max (deg p1) (deg p2)  **[by I.H.]**
    + right side: deg (Add(p1,p2))
      + ≡ max (deg p1) (deg p2) **[eval of deg]**
    + ≡ max (deg simplify p1) (deg simplify p2) <= deg(Add(p1,p2)) ✓ **[by reverse eval of deg]**

+ Mul Case
  + have: deg (simplify (Mul(p1,p2))) want: <= deg (Mul(p1,p2))

  + if p1 and p2 are both Ints
    + deg (simplify (Mul((Int i1),(Int i2))))
    + ≡ deg (simp_mul (simplify (Int i1), simplify (Int i2))) **[eval of simplify]**
    + ≡ deg (simp_mul ((Int i1), (Int i2)) ) **[eval of simplify]**
    + ≡ deg (Int (i1 * i2)) **[eval of simp_mul]**
    + ≡ deg (Int i1) + deg (Int i2) **[eval of deg]**
    + right side: deg (Mul(Int i1, Int i2))
      + deg (Int i1) + deg (Int i2) **[eval of deg]**
    + deg (Int i1) + deg (Int i2) <= deg (Int i1) + deg (Int i2) ✓ **[compare left and right sides]**

  + if p1 and p2 aren't both Ints
    + deg (simplify (Mul(p1,p2)))
    + ≡ deg (simp_mul (simplify p1, simplify p2)) **[eval of simplify]**
    + ≡ deg (Mul(simplify p1, simplify p2)) **[eval of simp_mul when p1 and p2 arent both ints, also covers the case where one is a 0 or 1]**
    + ≡ (deg (simplify p1)) + (deg (simplify p2)) **[eval of deg]**
    + ≡ (deg (simplify p1)) + (deg (simplify p2)) <= deg p1 + deg p2 **[by I.H.]**
    + right side: deg (Mul(p1,p2))
      + deg p1 + deg p2 **[eval deg]**
    + ≡ (deg (simplify p1)) + (deg (simplify p2)) <= deg(Add(p1,p2)) ✓ **[by reverse eval of deg]**
