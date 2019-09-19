# `rfact`  <!--- Problem name goes here; this is not a correct proof! -->

### Property
P(n): `rfact n` ≡ 0  <!--- Change this too --->

### Base Case
P(0): `rfact 0` ≡ 0 **[eval of `rfact`]**, ✓  <!-- More changes go here --->

### Inductive Case
∀ 𝓃. `rfact 𝓃 ≡ 0` ⇒ `rfact (𝓃 + 1) ≡ 0`

#### IH: `rfact 𝓃 ≡ 0`.  <!--- Change this too --->
We need to prove that `rfact (𝓃 + 1) ≡ 0`.  We have:

`rfact (𝓃 + 1)` ≡ `(𝓃+1) * (rfact 𝓃)` **[eval of `rfact`]**

≡ `(𝓃 + 1) *  0` **[by IH]**

≡ `0`, ✓
