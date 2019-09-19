# `tr_nat`  <!--- Problem name goes here; this is not a correct proof! -->

### Property
P(n): `tr_nat 𝓃 m` ≡ `𝓃 + (to_int m)`  <!--- Change this too --->

### Base Case
P(0): n = 0, `m` = `Zero`:
`tr_nat 0 Zero ` ≡ 0 **[eval of `rfact`]**,   <!-- More changes go here --->
≡ `0 + to_int Zero` **[eval of `to_int`]** ✓
### Inductive Case
∀ m . P(m) `tr_nat 𝓃 m ≡ 𝓃 + (to_int m)` ⇒ `tr_nat (𝓃 + 1) m ≡ (n+1) + (to_int m)`

#### IH: `∀ n .  tr_nat 𝓃 m ≡ n + (to_int m)`.  <!--- Change this too --->
We need to prove that `tr_nat (𝓃 + 1) m ≡ (n + 1) + (to_int m)`.  We have:

`tr_nat (𝓃 + 1) m` ≡ ` 1 + (tr_nat 𝓃 m)` **[eval of `rfact`]**

≡ `1 + n + (to_int m))` **[by IH]**

≡ `(n + 1) + (to_int m)`, ✓
