# `tr_fact`  <!--- Problem name goes here; this is not a correct proof! -->

### Property
P(n): `tr_fact n a` ≡ `n! * a`  <!--- Change this too --->

### Base Case
P(0): `tr_fact 0 0` ≡ 0 **[eval of `rfact`]**, ✓  <!-- More changes go here --->

### Inductive Case
∀ 𝓃. `tr_fact 𝓃 a ≡  n! * a` ⇒ `tr_fact (𝓃 + 1) a ≡ (n+1)! * a`

#### IH: `∀ a tr_fact n a ≡ n! * a`.  <!--- Change this too --->
We need to prove that `tr_fact (𝓃 + 1) a ≡ (n+1)! * a)`.  We have:

`tr_fact (𝓃 + 1) a` ≡ `(𝓃+1) * (tr_fact 𝓃 a)` **[eval of `rfact`]**

≡ `(𝓃 + 1) *  n! * a` **[by IH]**

≡ `(n + 1)! * a`, ✓
